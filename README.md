# SASS-create-project-script
SASS automated create and destroy project script to reduce the time it takes to modularize sass files manually.  

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
### Requirements:
  - npm
  - unix bash shell

### Steps to Install:
1. Clone or download this repository to your computer
2. In a bash shell, run: "mv sass-create /usr/local/bin" and "mv sass-destroy /usr/local/bin"_(optional)_
3. Navigate to an empty project directory and run "create-sass"

### sass-destroy:
- If the output of the script was unexpected and you need to remove it, run "sass-destroy"
- **_WARNING** sass-destroy will permanently delete all files created or modified during sass-create!_

### Notes:
_NPM simplifies the tools for SASS workflow; it does not limit the types of projects it can be integrated with (i.e. Django, ASP.NET Core, etc.)._

If you are building in a framework like Django that does not prefer a single location for style-sheets, an easy solution is to add npm scripts for each app so your watcher will export the necessary css to each app.  You can see an example of this at github.com/prescottbreeden/ultimate_fan_project

Naturally this script is not the end-all solution for various preferences but feel free to edit the script to taylor it for your own personal needs!
