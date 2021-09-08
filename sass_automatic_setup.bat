@ECHO OFF 
:: This batch file creates all necessary files for SASS
:: Inspired by @abhagsain (https://gist.github.com/rveitch/84cea9650092119527bc#gistcomment-3040049)
:: And updated with SASS Guidelines : https://sass-guidelin.es/#architecture


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
:: Abstracts folder
if exist abstracts echo - abstracts folder already exists
if not exist abstracts (
    mkdir abstracts
    echo + Abstracts folder creation: Done.
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
:: Layout folder
if exist layout echo - layout folder already exists
if not exist layout (
    mkdir layout
    echo + Layout folder creation: Done.
)
:: Pages folder
if exist pages echo - pages folder already exists
if not exist pages (
    mkdir pages
    echo + Pages folder creation: Done.
)
:: Themes folder
if exist pages echo - themes folder already exists
if not exist themes (
    mkdir themes
    echo + Themes folder creation: Done.
)
:: Vendors folder 
if exist vendors echo - vendors folder already exists
if not exist vendors (
    mkdir vendors
    echo + vendors folder creation: Done.
)


ECHO/
ECHO Moving to Abstracts...
cd abstracts
ECHO/

ECHO Creating Abstracts files
ECHO -------------------
:: _variables.scss
if exist _variables.scss echo - _variables.scss already exists
if not exist _variables.scss (
    type nul >_variables.scss
    ECHO + _variables.scss created
)
:: _functions.scss
if exist _functions.scss echo - _functions.scss already exists
if not exist _functions.scss (
    type nul >_functions.scss
    ECHO + _functions.scss created
)
:: _mixins.scss
if exist _mixins.scss echo - _mixins.scss already exists
if not exist _mixins.scss (
    type nul >_mixins.scss
    ECHO + _mixins.scss created
)
:: _placeholders.scss
if exist _placeholders.scss echo - _placeholders.scss already exists
if not exist _placeholders.scss (
    type nul >_placeholders.scss
    ECHO + _placeholders.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to Base
cd ..
cd base
ECHO/

ECHO Creating Base files
ECHO -------------------
:: _reset.scss // Reset/normalize
if exist _reset.scss echo - _reset.scss already exists
if not exist _reset.scss (
    type nul >_reset.scss
    ECHO + _reset.scss created
)
:: _typography.scss
if exist _typography.scss echo - _typography.scss already exists
if not exist _typography.scss (
    type nul >_typography.scss
    ECHO + _typography.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to Components
cd ..
cd components
ECHO/

ECHO Creating Components files
ECHO -------------------
:: _buttons.scss
if exist _buttons.scss echo - _buttons.scss already exists
if not exist _buttons.scss (
    type nul >_buttons.scss
    ECHO + _buttons.scss created
)
:: _carousel.scss
if exist _carousel.scss echo - _carousel.scss already exists
if not exist _carousel.scss (
    type nul >_carousel.scss
    ECHO + _carousel.scss created
)
:: _cover.scss
if exist _cover.scss echo - _cover.scss already exists
if not exist _cover.scss (
    type nul >_cover.scss
    ECHO + _cover.scss created
)
:: _dropdown.scss
if exist _dropdown.scss echo - _dropdown.scss already exists
if not exist _dropdown.scss (
    type nul >_dropdown.scss
    ECHO + _dropdown.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to Layout
cd ..
cd layout
ECHO/

ECHO Creating Layout files
ECHO -------------------
:: _navigation.scss
if exist _navigation.scss echo - _navigation.scss already exists
if not exist _navigation.scss (
    type nul >_navigation.scss
    ECHO + _navigation.scss created
)
:: _grid.scss
if exist _grid.scss echo - _grid.scss already exists
if not exist _grid.scss (
    type nul >_grid.scss
    ECHO + _grid.scss created
)
:: _header.scss
if exist _header.scss echo - _header.scss already exists
if not exist _header.scss (
    type nul >_header.scss
    ECHO + _header.scss created
)
:: _footer.scss
if exist _footer.scss echo - _footer.scss already exists
if not exist _footer.scss (
    type nul >_footer.scss
    ECHO + _footer.scss created
)
:: _sidebar.scss
if exist _sidebar.scss echo - _sidebar.scss already exists
if not exist _sidebar.scss (
    type nul >_sidebar.scss
    ECHO + _sidebar.scss created
)
:: _forms.scss
if exist _forms.scss echo - _forms.scss already exists
if not exist _forms.scss (
    type nul >_forms.scss
    ECHO + _forms.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to Pages
cd ..
cd pages
ECHO/

ECHO Creating Pages files
ECHO -------------------
:: _home.scss
if exist _home.scss echo - _home.scss already exists
if not exist _home.scss (
    type nul >_home.scss
    ECHO + _home.scss created
)
:: _contact.scss
if exist _contact.scss echo - _contact.scss already exists
if not exist _contact.scss (
    type nul >_contact.scss
    ECHO + _contact.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to Themes
cd ..
cd themes
ECHO/

ECHO Creating Themes files
ECHO -------------------
:: _theme.scss
if exist _theme.scss echo - _theme.scss already exists
if not exist _theme.scss (
    type nul >_theme.scss
    ECHO + _theme.scss created
)
:: _admin.scss
if exist _admin.scss echo - _admin.scss already exists
if not exist _admin.scss (
    type nul >_admin.scss
    ECHO + _admin.scss created
)
:: _light.scss
if exist _light.scss echo - _light.scss already exists
if not exist _light.scss (
    type nul >_light.scss
    ECHO + _light.scss created
)
:: _dark.scss
if exist _dark.scss echo - _dark.scss already exists
if not exist _dark.scss (
    type nul >_dark.scss
    ECHO + _dark.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to Vendors
cd ..
cd vendors
ECHO/

ECHO Creating Vendors files
ECHO -------------------
:: _bootstrap.scss
if exist _bootstrap.scss echo - _bootstrap.scss already exists
if not exist _bootstrap.scss (
    type nul >_bootstrap.scss
    ECHO + _bootstrap.scss created
)
:: _jquery-ui.scss
if exist _jquery-ui.scss echo - _jquery-ui.scss already exists
if not exist _jquery-ui.scss (
    type nul >_jquery-ui.scss
    ECHO + _jquery-ui.scss created
)
ECHO -------------------


ECHO/
ECHO Moving to main folder
cd ..
ECHO/

ECHO Creating main.scss file
ECHO -------------------
:: main.scss
if exist main.scss echo - main.scss already exists
if not exist main.scss (
    type nul >main.scss
    ECHO + main.scss created
)
ECHO -------------------

ECHO/
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
