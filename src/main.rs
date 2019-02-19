#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[macro_use] extern crate serde_derive;
use serde_yaml;
use woothee::parser::Parser;
use std::io;
use std::io::prelude::*;
use std::fs::File;
use rocket::State;
use std::collections::BTreeMap;
use rocket_contrib::templates::Template;
use rocket::request::{self, Request, FromRequest};
use rocket::Outcome;
use rocket::http::Status;

#[derive(Debug)]
#[derive(Deserialize)]
#[derive(Serialize)]
struct Software {
    win_32: Option<String>,
    win_64: Option<String>,
    mac: Option<String>,
    linux_32: Option<String>,
    linux_64: Option<String>,
    name: Option<String>,
    description: Option<String>,
    image: Option<String>
}
#[derive(Debug)]
#[derive(Deserialize)]
#[derive(Serialize)]
struct Hunspell {
    oxt: Option<String>,
    name: Option<String>
}


#[derive(Deserialize)]
#[derive(Serialize)]
#[derive(Debug)]
struct Difazier {
    win_64: Option<String>,
    win_32: Option<String>,
    name: Option<String>
}

#[derive(Deserialize)]
#[derive(Serialize)]
#[derive(Debug)]
struct StaliadurData {
    software: BTreeMap<String, Software>,
    hunspell: BTreeMap<String, Hunspell>,
    difazier: BTreeMap<String, Difazier>,
}

// struct StaliadurDataWrapper {
//     data: StaliadurData
// }

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
    let result = parser.parse(user_agent);
    println!("{:?}", result);
    None
}


#[get("/")]
fn index(data: State<StaliadurData>, os_info: OsInfo) -> Template {
    //println!("{:?}", dataWrapper.data.software);
    Template::render("index", &data.inner())
}


fn main() {

    let mut f = File::open("data.yml").unwrap();

    let data: StaliadurData = serde_yaml::from_reader(&f).unwrap();

    rocket::ignite()
        .mount("/", routes![index])
        .attach(Template::fairing())
        .manage(data)
        .launch();
}
