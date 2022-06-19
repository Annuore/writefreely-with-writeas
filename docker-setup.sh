#!/bin/bash
docker-compose exec db sh -c 'exec mysql -u root -pchangeme writefreely < /tmp/schema.sql'
docker exec writefreely-web writefreely --gen-keys
docker exec -it writefreely-web writefreely --config
    