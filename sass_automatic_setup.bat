

@ECHO OFF 
:: This batch script creates all the necessary files and folders for your next SASS project
:: Inspired by @abhagsain https://gist.github.com/abhagsain 
:: https://gist.github.com/rveitch/84cea9650092119527bc#gistcomment-3040049

:: How to use it ?
:: Open your favourite text editor
:: Copy/paste this code in it
:: Save the file with a .bat extension, e.g. sass_setup.bat
:: Paste the file at the base of your project and simply execute it.
:: It will automatically create a folder named "sass" with all the subfolders and (empty) files you need in it.

TITLE SASS Automatic Setup

ECHO ==========================
ECHO SASS AUTOMATIC SETUP
ECHO ============================
ECHO/
ECHO This program automatically creates all the files and folders you need for your SASS project.
ECHO/
PAUSE
ECHO Please wait... Creating files and folders

ECHO/
:: SASS Folder
ECHO Creating SASS folder...
if exist sass\NUL echo - SASS folder already exists
if not exist sass\NUL (
    mkdir sass
    echo + SASS folder creation: done.
)

ECHO/
ECHO Moving to SASS folder
cd sass
ECHO Creating SASS Subfolders...

ECHO/
:: Abstract folder
if exist abstract echo - abstract folder already exists
if not exist abstract (
    mkdir abstract
    echo + Abstract folder creation: Done.
)
:: Pages folder
if exist pages echo - pages folder already exists
if not exist pages (
    mkdir pages
    echo + Pages folder creation: Done.
)
:: Layout folder
if exist layout echo - layout folder already exists
if not exist layout (
    mkdir layout
    echo + Layout folder creation: Done.
)
:: Base folder
if exist base echo - base folder already exists
if not exist base (
    mkdir base
    echo + Base folder creation: Done.
)
:: Components folder
if exist components echo - components folder already exists
if not exist components (
    mkdir components
    echo + Components folder creation: Done.
)

ECHO/
ECHO Moving to Abstract...
cd abstract
ECHO\
ECHO Creating Abstract files
ECHO -------------------
:: _function.scss
if exist _function.scss echo - _function.scss already exists
if not exist _function.scss (
    type nul >_function.scss
    ECHO + _function.scss created
)
:: _mixins.scss
if exist _mixins.scss echo - _mixins.scss already exists
if not exist _mixins.scss (
    type nul >_mixins.scss
    ECHO + _mixins.scss created
)
:: _variables.scss
if exist _variables.scss echo - _variables.scss already exists
if not exist _variables.scss (
    type nul >_variables.scss
    ECHO + _variables.scss created
)
ECHO -------------------

ECHO/
ECHO Moving to Base
cd ..
cd base

ECHO Creating base files
ECHO -------------------
if exist _animations.scss echo - _animations.scss already exists
if not exist _animations.scss (
    type nul >_animations.scss
    ECHO + _animations.scss created
)
if exist _typography.scss echo - _typography.scss already exists
if not exist _typography.scss (
    type nul >_typography.scss
    ECHO + _typography.scss created
)
if exist _utilities.scss echo - _utilities.scss already exists
if not exist _utilities.scss (
    type nul >_utilities.scss
    ECHO + _utilities.scss created
)
if exist _base.scss echo - _base.scss already exists
if not exist _base.scss (
    type nul >_base.scss
    ECHO + _base.scss created
)
ECHO -------------------

ECHO/
ECHO You're all set up! Enjoy
ECHO/
ECHO Psst... Before you go :
ECHO Use below imports in your main inde.scss file :
ECHO/
ECHO    @import "./abstract/variables";
ECHO    @import "./layout/header";
ECHO    @import "./base/animations";
ECHO    @import "./base/typography";
ECHO    @import "./components/button";
PAUSE
