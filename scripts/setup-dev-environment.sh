#!/bin/bash
source config.sh

# set up and build client
echo -e "setting up client build:\n"
cd $client_dir
git clone "${client_repo[address]}" && cd "${client_repo[name]}"
npm install && npm run build
echo "client cloned to: $client_dir/${client_repo[name]}"

# set up server and link static dir with client build
echo -e "\n\n\nsetting up server:\n"
cd $server_dir
git clone "${server_repo[address]}" && cd "${server_repo[name]}"
go get ./...
ln -s "$client_dir/${client_repo[name]}/build" . && mv build public
echo "server cloned to: $server_dir/${server_repo[name]} and linked with client build"

cd $self_dir
