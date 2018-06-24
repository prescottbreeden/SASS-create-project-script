# SASS-create-project-script
SASS automated create and destroy project script

## Folders & Files Created:
- index.html  
- package-lock.json  
- **public**  
    - app.js  
    - **css**  
        - styles.css  
- **sass**
    - main.scss
    - **abstracts**  
        - _functions.scss  
        - _mixins.scss  
        - _variables.scss  
    - **base**  
        - _animations.scss  
        - _base.scss  
        - _typography.scss  
        - _utilities.scss  
    - **layouts**  
        - _footer.scss  
        - _header.scss  
        - _navigation.scss  
    - **pages**  
        - _home.scss
        
## Installs Node Packages as Dev Dependencies:
- node-sass
- postcss-cli
- concat
- npm-run-all
- hoek _(to override audit warnings from standard node-sass hoek version)_

## Recommended Package.json Scripts:
    "scripts": {
      "watch:sass": "node-sass sass/main.scss public/css/style.css -w",
      "compile:sass": "node-sass sass/main.scss public/css/style.comp.css",
      "prefix:css": "postcss --use autoprefixer -b 'last 10 versions' public/css/style.comp.css -o public/css/style.prefix.css",
      "compress:css": "node-sass public/css/style.prefix.css public/css/style.css --output-style compressed",
      "build:css": "npm-run-all compile:sass prefix:css compress:css"
    },

# Installation
- Prerequisites
  - npm
  - unix bash shell
  
- Clone or download repository
- In terminal, run: "mv sass-create /usr/local/bin" and "mv sass-destroy /usr/local/bin"
- Navigate to an empty project directory and run "create-sass"
- If the output of the script was unexpected and you need to remove it, run "sass-destroy"
- **_WARNING** sass-destroy will permanently delete all files created or modified during sass-create!_
