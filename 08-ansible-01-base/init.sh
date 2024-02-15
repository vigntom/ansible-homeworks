#!/usr/bin/env bash

echo "Create containers"

cd infra/
time terraform apply -auto-approve
echo "\n =================== \n"

echo "Run playbook"

cd ../playbook
time ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
echo "\n =================== \n"

echo "Destroy containers"
cd ../infra
time terraform destroy -auto-approve
echo "\n =================== \n"

echo "Restore path"
cd ../
