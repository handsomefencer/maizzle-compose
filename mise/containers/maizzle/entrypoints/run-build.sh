#!/bin/bash

echo $1

npm run dev

cp -r  /artifact/builds/app/views/devise/mailer/* /artifact/app/views/devise/mailer/
