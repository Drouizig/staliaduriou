# staliaduriou

scripts to download latest version of breton software, bookmarks of breton websites and mini-website to download on local netwok during install parties

In order to launch the website on the local network, you must execute the following commands :

`./download_builds.sh`
in order to download the latest intallers of the software

`./download_libs.sh`
to download jquery and bootstrap

You must edit the file Rocket.toml in order to put your IP adress on the local network where your website can be reached, or 'localhost' if you just want to test it out.

Then, to run the website, install Rust (https://www.rust-lang.org/learn/get-started) and run

`cargo run`
