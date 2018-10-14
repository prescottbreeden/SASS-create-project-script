# SASS-create-project-script v1.1
SASS automated create and destroy project script to reduce the time it takes to create modular sass files.  

## Folders & Files Created:
- index.html
- .git
- .gitignore
- package.json _(uses your default npm init settings)_
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
- node-minify
- npm-run-all
- hoek _(to override audit warnings from standard node-sass hoek version)_

## Recommended Package.json Scripts:
    "scripts": {
      "watch:sass": "node-sass sass/main.scss public/css/styles.css -w",
      "compile:sass": "node-sass sass/main.scss public/css/styles.comp.css",
      "prefix:css": "postcss --use autoprefixer -b 'last 10 versions' public/css/styles.comp.css -o public/css/styles.prefixed.css",
      "compress:css": "node-sass public/css/styles.prefixed.css public/css/styles.css --output-style compressed",
      "build:css": "npm-run-all compile:sass prefix:css compress:css",
      "compress:js": "node-minify --compressor 'gcc' --input 'public/js/app.js --output 'public/js/app.min.js'"
    },

# Installation
### Requirements:
  - npm
  - unix bash shell

### Steps to Install:
1. Clone or download this repository to your computer
2. Install npm globally (see: https://docs.npmjs.com/cli/install)
3. In a bash shell, run: "mv sass-create /usr/local/bin"
4. In a bash shell, run: "mv sass-destroy /usr/local/bin" _(optional)_
5. Navigate to an empty project directory and run "create-sass"

### sass-destroy:
- If the output of the script was unexpected and you need to remove it, run "sass-destroy"
- **_WARNING** sass-destroy will permanently delete all files created or modified during sass-create!_

### Notes:
Naturally this script is not the end-all solution for various preferences but feel free to edit the script to taylor it for your own personal needs
