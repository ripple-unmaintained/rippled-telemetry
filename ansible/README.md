## Rippled Telemetry Ansible

Ansible roles and playbooks are the canonical
definition of server software infrastructure
used by the rippled peer network telemetry system.

Playbooks are intended to be idempotent, meaning
they can be run over and over again on an existing
virtual machine and the system will always end up
in the desired functional state.

Ideally however the ansible playbooks will always
be run on a brand new virtual machine, discarding
the previous VM in order to prevent degradation
of the system across deploys and updates.

### Roles

- common
- rabbitmq
- redis
- sensu-common
- sensu-server
- sensu-client-rippled
- nginx

### Playbooks

- sensu-server
- sensu-client

### Variables

- rabbitmq_ssl_cert
- rabbitmq_ssl_key
- rabbitmq_vhost  (/sensu)
- rabbitmq_user   (sensu)_
- rabbitmq_pass   (password)
- rabbitmq_port   (5671)
- rabbitmq_host   (127.0.0.1)

