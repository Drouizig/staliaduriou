#![feature(proc_macro_hygiene, decl_macro)]

#[macro_use] extern crate rocket;

#[macro_use] extern crate serde_derive;

mod model;

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
use model::StaliadurData;

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
struct TemplateContext {
    data: *const StaliadurData,
    system: Option<String>
}

#[get("/")]
fn index(data: State<StaliadurData>, os_info: OsInfo) -> Template {
    println!("{:?}", data.inner());
    let templateData = TemplateContext{data: &data.inner(), system: os_info.system};
    Template::render("index", &templateData)
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
