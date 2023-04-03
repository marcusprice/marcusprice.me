# repo names and addresses
declare -A client_repo server_repo
client_repo[address]=git@github.com:marcusprice/marcusprice.me-client.git
client_repo[name]=marcusprice.me-client

server_repo[address]=git@github.com:marcusprice/marcusprice.me-server.git
server_repo[name]=marcusprice.me-server

# app paths
# !important - server_dir must be in $GOPATH
self_dir=~/code/marcusprice.me
client_dir=~/code
server_dir=~/code/go/src
