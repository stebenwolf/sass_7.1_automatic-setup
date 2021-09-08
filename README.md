# sass_7.1_automatic-setup

### A batch file that automatically creates all the (empty) files and folders you need for your next SASS project

Dear Windows users
This batch script creates all the necessary files and folders for your next SASS project.
It follows the 7-1 Architecture pattern as described on Sass-Guidelin.es
All files are empty by default


## How to use the script ?

1. Open your favourite text editor
2. Copy/paste this code in it
3. Save the file with a .bat extension, e.g. sass_setup.bat
4. Paste the file at the base of your project and simply execute it.
5. It will automatically create a folder named "sass" with all the subfolders and (empty) files you need in it.


## What if I want to add some folders or files ?

To create a new folder, just paste the following code wherever you need and replace the <> with the name you want:

```
:: <folder name> folder
if exist <folder name> echo - <folder name> folder already exists
if not exist <folder name> (
    mkdir <folder name>
    echo + <folder name> folder creation: Done.
)
```

To create a new (empty) file:

```
:: _<filename>.scss
if exist _<filename>.scss echo - _<filename>.scss already exists
if not exist _<filename>.scss (
    type nul >_<filename>.scss
    ECHO + _<filename>.scss created
)
```

In both cases simply make sure you are in the right folder.



## Credits

* Thank you @abhagsain (https://gist.github.com/rveitch/84cea9650092119527bc#gistcomment-3040049) for the idea
* Thank you @KittyGiraudel for the great SASS Guidelines website 😃 : https://sass-guidelin.es/#architecture



## Feel free to make any comment! Hope this helps :)
