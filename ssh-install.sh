#!/usr/bin/env bash

ssh-keygen -t rsa
# Press enter for each line 
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod og-wx ~/.ssh/authorized_keys 
