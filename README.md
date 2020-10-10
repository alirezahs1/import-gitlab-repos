# Import All Gitlab Repositories
Import all Gitlab repositories on local at once

## 1- Gitlab Access Token
Generate new access token from gitlab dashboard\
Go to settings/Access Tokens and generate one.

## 2- Install jq
sudo apt-install jq

## 3- Run bash script
`sudo chmod +x import.sh`
`sudo ./import <YOURUSERNAME> <TOKEN> <PAGENUMBERS>`
<PAGENUMBERS> is optional.
