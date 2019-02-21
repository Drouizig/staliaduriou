#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[macro_use] extern crate serde_derive;

mod model;

use serde_yaml;
use woothee::parser::Parser;
use std::fs::File;
use rocket::State;
use rocket_contrib::templates::Template;
use rocket::request::{self, Request, FromRequest};
use rocket::Outcome;
use model::StaliadurData;
use rocket_contrib::serve::StaticFiles;
use std::sync::RwLock;
use std::time::SystemTime;

struct DataReader {
    reader: RwLock<StaliadurData>,
    last_accessed: SystemTime
}

struct OsInfo {
    system: Option<String>
}

#[derive(Debug)]
enum UserSystemError {
    NotFound,
}

impl<'a, 'r> FromRequest<'a, 'r> for OsInfo {
    type Error = UserSystemError;

    fn from_request(request: &'a Request<'r>) -> request::Outcome<Self, Self::Error> {
        let user_agent: Vec<_> = request.headers().get("User-Agent").collect();
        match user_agent.len() {
            1  => Outcome::Success(OsInfo{ system: get_os(user_agent[0])}),
            _ => Outcome::Success(OsInfo{system: None}),
        }
    }
}

fn get_os(user_agent: &str) -> Option<String> {
    let parser = Parser::new();
    if let Some(result) = parser.parse(user_agent) {
      return Some(result.os);
    }
    None
}

#[derive(Serialize)]
struct TemplateContext<'a> {
    data: &'a StaliadurData,
    system: Option<String>,
    page: &'a str
}

#[get("/")]
fn index(data: State<DataReader>, os_info: OsInfo) -> Template {
    update_data(&data);
    let templateContext = TemplateContext{data: &data.inner().reader.read().unwrap(), system: os_info.system, page: "meziantou"};
    Template::render("index", &templateContext)
}
#[get("/hezoug")]
fn hezoug(data: State<DataReader>, os_info: OsInfo) -> Template {
    update_data(&data);
    let templateContext = TemplateContext{data: &data.inner().reader.read().unwrap(), system: os_info.system, page: "hezoug"};
    Template::render("hezoug", &templateContext)
}
#[get("/difazier")]
fn difazier(data: State<DataReader>, os_info: OsInfo) -> Template {
    update_data(&data);
    let templateContext = TemplateContext{data: &data.inner().reader.read().unwrap(), system: os_info.system, page: "difazier"};
    Template::render("difazier", &templateContext)
}
#[get("/choariou")]
fn choariou(data: State<DataReader>, os_info: OsInfo) -> Template {
    update_data(&data);
    let templateContext = TemplateContext{data: &data.inner().reader.read().unwrap(), system: os_info.system, page: "choariou"};
    Template::render("choariou", &templateContext)
}
#[get("/traouall")]
fn traouall(data: State<DataReader>, os_info: OsInfo) -> Template {
    update_data(&data);
    let templateContext = TemplateContext{data: &data.inner().reader.read().unwrap(), system: os_info.system, page: "traouall"};
    Template::render("traouall", &templateContext)
}

fn update_data(data: &State<DataReader>) {
    let mut f = File::open("data.yml").unwrap();
    let last_accessed_file = f.metadata().unwrap().modified().unwrap();
    if(last_accessed_file > data.last_accessed) {
        let new_data = serde_yaml::from_reader(&f).unwrap();
        *data.reader.write().unwrap() = new_data;
    }
}


fn main() {

    let mut f = File::open("data.yml").unwrap();

    let data: StaliadurData = serde_yaml::from_reader(&f).unwrap();
    let last_accessed_file = f.metadata().unwrap().modified().unwrap();

    rocket::ignite()
        .mount("/", routes![index, hezoug, difazier, choariou, traouall])
        .mount("/static", StaticFiles::from("static"))
        .attach(Template::fairing())
        .manage(DataReader{ reader: RwLock::new(data), last_accessed: last_accessed_file})
        .launch();
}
