## Rippled Telemetry System

A Vagrantfile is provided to test the ansible installation
and configuration of the Sensu Server, RabbitMQ, and Redis

#### Start the Sensu Server
````
cd server && vagrant up --provision
````

#### Start the Sensu Client
````
cd client && vagrant up --provision
````

