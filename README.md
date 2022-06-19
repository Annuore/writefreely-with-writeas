# Writefreely (Kubernetes)
**Writefreely** is a clean, minimalist publishing platform made for writers. This project deploys *writefreely*
within a kubernetes cluster. Visit the [Official Website](https://writefreely.org/docs) for more details and documentation.

## Table of Content
- [Technology Stack](#stack)
- [Quick Start](#qs)
- [Setup](#setup)
- [Resources](#rsc)

### Technology Stack<a id='stack'></a>
- Docker
- Kubernetes

### Quick Start <a id='qs'></a>
WriteFreely deploys as a static binary on any platform and architecture that Go supports. Use their built-in SQLite support, or add a MySQL database, and you'll be up and running!
For common platforms, start with their [pre-built binaries](https://github.com/writefreely/writefreely/releases/) and head over to the [installation guide](https://writefreely.org/start) to get started.

### Setup for Kubernetes <a id='setup'></a>
- The [config.yml file](config.yml) contains the modified [config.ini](dock.config.ini) mapped as a file. Modify this file to suit your preferred configuration. In the config.ini, I added a `bind` under the app section because the application will not be accessible from the outside if that is not set.
- Modify other files to suit your configuration.
- Run `kubectl create -f <filename>` to create the resource. Each file is named according to what it is. The [deployment.yaml](deployment.yaml) file also contains the statefulset which runs the database as a statefulset. 
- Your application will be available at your **Ingress external IP**

### Resources <a id='rsc'></a>
- [Github](https://github.com/writefreely/writefreely) 
- [Writefreely Website](https://writefreely.org/)
- [Write.as](https://write.as/writefreely)
- [Docker Image](https://hub.docker.com/r/writeas/writefreely/)