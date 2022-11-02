#!/bin/bash

# Taken from https://stackoverflow.com/a/67550427/9654319

if [ -z "$ACCESS_TOKEN" ]
then
      echo "Set ACCESS_TOKEN to OAuth 2.0 token:"
      echo "1. Go to https://developers.google.com/oauthplayground/"
      echo "2. Paste https://www.googleapis.com/auth/drive.readonly and click 'Authorize APIs'"
      echo "3. Click 'Exchange authorization code for tokens'"
      echo "4. Set \$ACCESS_TOKEN= to the access token"
      exit 1
fi

if [ -z "$FILE_ID" ]
then
      echo "\$FILE_ID is empty"
      exit 1
fi

curl -H "Authorization: Bearer $ACCESS_TOKEN" https://www.googleapis.com/drive/v3/files/$FILE_ID?alt=media -o $FILE_ID

