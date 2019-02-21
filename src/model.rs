use std::collections::BTreeMap;

#[derive(Deserialize, Serialize, Debug)]
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

#[derive(Deserialize, Serialize, Debug)]
struct Arload {
    android: Option<String>,
    ios: Option<String>,
    name: Option<String>,
    description: Option<String>,
    image: Option<String>
}

#[derive(Deserialize, Serialize, Debug)]
struct Hunspell {
    oxt: Option<String>,
    name: Option<String>
}


#[derive(Deserialize, Serialize, Debug)]
struct Difazier {
    win_64: Option<String>,
    win_32: Option<String>,
    name: Option<String>
}

#[derive(Deserialize, Serialize, Debug)]
pub struct StaliadurData {
    software: BTreeMap<String, Software>,
    choariou: BTreeMap<String, Software>,
    arloadou: BTreeMap<String, Arload>,
    hunspell: BTreeMap<String, Hunspell>,
    difazier: BTreeMap<String, Difazier>,
}

