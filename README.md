# Frisco QA (quality assurance)

This project uses Cypress + Cucumber to get the best of both worlds and allows you to write Ghernkin syntax tests.

## Run the project

Make sure you follow pre-reqs and install recommended extensions beforehand. Open a terminal window pointing to the project folder and run:

```
npm install
npm run cypress-ntlm
```

## Pre-requisite Installations

[Git](https://git-scm.com/) - will let you save source code to Gitlab/GitHub etc.

[Node](https://nodejs.org/en/) - lets you install useful libraries from the internet

[VSCode](https://code.visualstudio.com/) - recommended code editor with a wealth of useful extensions

## Pre-requisite Proxy Settings

These can be done from any terminal window. For best results, reboot your machine after running these steps to ensure they have propogated on your machine.

```
set NO_PROXY=*.intel.com,localhost,127.0.0.1
set HTTP_PROXY=http://proxy-chain.intel.com:911
set HTTPS_PROXY=http://proxy-chain.intel.com:912

npm config set proxy http://proxy-chain.intel.com:911
npm config set https-proxy http://proxy-chain.intel.com:912
npm config set strict-ssl false
```

Note: http://proxy-dmz.intel.com variations don't seem to work

## Pre-requisite VSCode plugins

For the best experience possible you'll want to install these plugins ;)

[Cucumber plugin for Cypress](https://github.com/TheBrainFamily/cypress-cucumber-preprocessor) allows you to write Cucumber (Gherkin language syntax) tests that will run Cypress under the hood

[Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) will help format files consistently across different machines to prevent code conflicts

[VSCode icons](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) makes is much easier to differentiate between the different file/folder types in your project

## Setting the default task

Get the defaut task to run by setting it in VS Code. Use Ctrl + Shift + P will bring up possible actions, search for "Task". Then Select "Tasks: Configure Default Build Task". Select the cypress-ntlm task.

Also make sure automatic tasks are enabled.

- Ctrl + P.
- Search for and select
- `Manage Automatic Tasks in Folder`
- `Allow Automatic Tasks in Folder`

## Certificates for https HTZ environments

In this projects particular case, the deployment sites are hosted in HTZ (high trust zone) using https protocol. For that purpose you will need to have Intel Certificates added to environment variables in order to access the sites through Cypress.

The main certificate you need is available here:
http://certificates.intel.com/repository/certificates/IntelSHA2RootChain-Base64.zip

- You'll want to use the IntelSHA256RootCA-base.crt
- Save it in a location like C:\Certificates
- Unzip and save the certificate to a location in your system (C:\Certificates)
- Add an environment variable `NODE_EXTRA_CA_CERTS`.
- Set the value of `NODE_EXTRA_CA_CERTS` to point to the `IntelSHA256RootCA-base.crt` certificate

## Trouble Shooting

Avoid storing this project anywhere around your `C:\Users\<idsid>` folders area. There is some funky stuff that happens in those folders that will make some folders exist / not-exist as you run the code (Had this problem with Bill Bennett)

Make sure you reboot your system after modifying any environment variables and make sure they are set with the `set` command in a terminal window. It's the only way I've seen to make sure they take effect.

## Docker

Remove all images

`docker rmi $(docker images -a -q)`

Remove all containers

`docker prune -a`

`docker rm $(docker ps -a -f status=exited -q)`
`docker rm $(docker ps -a -q)`
`docker stop $(docker ps -a -q)`

#Windows
"ntlm-proxy": "start /min \"ntlm-proxy\" cmd /c node_modules\\.bin\\ntlm-proxy",
"cypress-ntlm": "git pull && npm run ntlm-proxy && (cypress-ntlm open & ntlm-proxy-exit)",

#MAC
"ntlm-proxy": "ntlm-proxy &",
"cypress-ntlm": "npm run ntlm-proxy && (cypress-ntlm run --env TAGS=@zano ; ntlm-proxy-exit)",
