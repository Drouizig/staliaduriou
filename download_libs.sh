rm -rf static/lib
mkdir static/lib
mkdir static/lib/js
mkdir static/lib/css

# Bootstrap
wget "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" -O static/lib/css/bootstrap.min.css
wget "https://code.jquery.com/jquery-3.2.1.slim.min.js" -O static/lib/js/jquery-3.2.1.slim.min.js
wget "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" -O static/lib/js/bootstrap.min.js