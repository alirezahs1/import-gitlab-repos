
#!/bin/bash

if [ -z "$1" ]; then
    echo "waiting for the following arguments: username + access_token + max-page-number"
    exit 1
else
    name=$1
fi

if [ -z "$2" ]; then
    echo "waiting for the following arguments: username + access_token + max-page-number"
    exit 1
else
    token=$2
fi

if [ -z "$3" ]; then 
    max=2
else
    max=$3
fi

page=1

echo $name
echo $token
echo $max
echo $page

until (( $page -lt $max ))
do 
    curl "https://gitlab.com/api/v4/users/$name/projects/?private_token=$token&per_page=100" | jq '.[].http_url_to_repo' | xargs -L1 git clone
    $page=$page+1
done

exit 0
