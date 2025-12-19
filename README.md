# Demon86RM fork of Card Conjurer
Just to add my two cents:
sorry, I'm a bad person and I wanted to bring some chaos in this project by changing the directory structure (so the container image won't contain any useless/unwanted stuff like the Makefile and the Dockerfile as well as all the executable launchers), adding the tls generation (beacuse paranoia is a way of living and http plain connection are boring to implement) and last but not least, creating the manifest to deploy this application onto your K8s or Openshift cluster!

To avoid downloading unwanted stuff (mostly in the git history), I'd suggest you to clone this repo by using --depth=1, so instead of 5.5GB and 30K files, you'll download just 2.7GB and 10k files which are the one you'll actually working on/lurking into.

## For Openshift:
You need to create a secret that holds the tls.key and tls.crt files (you can use the one-liner within the Makefile to generate 'em)
as well as a configMap that has the app.conf file mapped as the nginx.conf file, otherwise your deployment won't even start.
For building the image I'd suggest you to do it locally on your workstation, start it for testing and then importing that into your container registry.
I know it might be a niche use case, but I mean why not running such application on your personal homelab cluster? 


-----------------------------------------------------------
# Card Conjurer
Card Conjurer was created by a passionate Magic the Gathering player and grew to become probably the most popular online card generator known to the game.
In November of 2022, Wizards of the Coast served the original creator and webhost of the site with Ceas and Desist paperwork, forcing the site offline.
This repository is for the purpose of making the application usable on your local machine and maintaining templates in perpetuity.
## Setup
- Clone this repo somewhere on your system. (Or download the Zip with CODE > Download Zip above)
- Run server.exe (or mac-server for MacOS, linux-server for linux)
- You're good to go! You could also set up Card Conjurer in a more traditional method using WAMP, Docker, XAMPP, etc.

[![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg?longCache=true&style=popout)](https://www.paypal.me/kyleburtondonate
) ← Help out Card Conjurer's original creator, Kyle. We love you buddy.


## Start with Docker (http://localhost:4242/)

<details>
  <summary>Install Make on Ubuntu</summary>

  ```bash
  $ sudo apt update
  ```

  check is make installed

  ```bash
  $ make -version
  ```

  after run this command, you got the following error? 
  
  - **bash: /usr/bin/make: No such file or directory**

  then follow with the next step, otherwise skip the next commands

  ```bash
  $ sudo apt install make
  ```

### Troubleshooting's? 
 * Follow this guide https://linuxhint.com/install-make-ubuntu/
</details>

<details>
  <summary>Install Make on Mac</summary>

  check is make installed

  ```bash
  $ make -version
  ```

  after run this command, you got the following error? 
  
  - **zsh: command not found: make**

  then follow with the next step, otherwise skip the next commands

  ```bash
  $ (sudo) brew install make
  ```
</details>

<details>
  <summary>Install Make on Windows</summary>

  Follow this Guide
  https://sp21.datastructur.es/materials/guides/make-install.html#windows-installation
</details>

* go to the downloaded/ cloned folder with your terminal/ powershell (windows) and run the following command

```bash
$ make start
```

Open your Browser with the following URL 

http://localhost:4242/

### Important

Be sure, that you are running Docker Desktop under Windows or Mac before you can run the make command.

## Using Local Images

If you're saving a lot of cards custom images you might hit the data limit for uploaded images (about 2MB).

You can avoid this by putting the image files in the `local_art` directory of this repo. Then, when selecting the image in the Art tab of the card creator, instead of uploading the image you can type the file name in the "Via URL" field. This will use the image directly from the `local_art` directory instead of needing to store the whole image in the save file.

For example if you add the file:
`cardconjurer/local_art/my_art.jpg`

You can load it in the "Via URL" box by typing:
`my_art.jpg`
then hitting enter.
