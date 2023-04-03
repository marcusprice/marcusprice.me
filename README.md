# marcusprice.me
This repository manages the server and client repositories for my website. It
currently has scripts to automate setting up the dev environments for each.
Future iterations will include an automated production CI/CD build pipeline
and other tools.

## Client/Server Dev Environments
The following commands will quickly set up the dev environments for both the
client and server projects, assuming you gave git, node/npm and go installed
locally:
```
git clone git@github.com:marcusprice/marcusprice.me.git
cd marcusprice.me
cp config.example.sh config.sh
```
Replace the values in the config file and run:
```
make dev-envs
```
This will clone and build the client and server, and then create a symbolic
link between the client build directory and the static directory that's served
by the backend.

If all is successful you should be able to visit the root endpoint (default
host/port setting is http://localhost:6969) and see the coming soon splash
page.

## Contributions
Feel free to open an issue if you have any ideas for improvements or if you
spot anything that could be improved upon 🙂

## Contact
If I can be of help or you just want to say hi/talk about tech, feel free to
email me: [marcusprice88@gmail.com](mailto:marcusprice88@gmail.com)
