#!/bin/bash

sshpass -p "$OVH_HOSTING_PASSWORD" ssh -o StrictHostKeyChecking=no $OVH_HOSTING_USER@$OVH_HOSTING_DOMAIN "rm -rv * && git clone $REPOSITORY_URL && mv $REPOSITORY_NAME/* . && mv $REPOSITORY_NAME/.htaccess . && rm -rf $REPOSITORY_NAME"