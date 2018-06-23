#!/bin/bash

# automate the initialization of a new css project

PROJECT_NAME='Chuck Norris'


# initialize file structure and install sass dependencies

echo '___CREATING FILE STRUCTURE FOR SASS>>>'

HTML_BOILER='<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>'${PROJECT_NAME}'</title>
	<link rel="stylesheet" href="styles.css">
</head>
<body>
	
</body>
</html>'

echo "${HTML_BOILER}" > index.html
touch styles.css

# html and css files

# create folders sass > abstracts base layouts
mkdir -p sass/abstracts sass/base sass/layouts

# add functions, mixins, variables to abstracts
touch sass/abstracts/_functions.scss sass/abstracts/_mixins.scss sass/abstracts/_variables.scss

# animations, base, typography, utilities > base
touch sass/base/_animations.scss sass/base/_base.scss sass/base/_typography.scss sass/base/_utilities.scss

# footer, header, navigation > layouts
touch sass/layouts/_footer.scss sass/layouts/_header.scss sass/layouts/_navigation.scss

# install dev dependencies
echo '___INSTALLING DEV DEPENDENCIES>>>'
npm i --save-dev hoek
npm i --save-dev node-sass
npm i --save-dev concat
npm i --save-dev npm-run-all
npm i --save-dev postcss-cli
npm audit fix

# initialize git repository
echo '___INITIALIZING GIT REPOSITORY>>>'
git init
echo 'node_modules/' > .gitignore





echo '___SCRIPT COMPLETED___'
