# tinkr-jupyter-notebook

To try it out without any hassle - [Run it on Tinkr](https://app.tinkr.cloud/).

### This is a template repository to run jupyter notebook collaboratively on Tinkr and on your local.

## Service Configuration (jn):

- **build**: Specifies how to build the Docker image. It references the Dockerfile in the current context and targets the `jn` build stage.
- **volumes**: Mounts the volume named `juptyer_datasets` to the `/home/project/work` directory in the container.
- **ports**: Maps port 8888 from the host to port 8888 in the container.
- **restart**: Sets the restart policy to `always`, ensuring the container restarts if it stops.
- **x-tinkr**: Custom configuration required to **run on Tinkr** for resource allocation and load balancing.
  - **cpu and memory**: Allocate 512 MB of CPU and memory resources to the container.
  - **load_balancer**: Defines load balancing settings.
    - **tenancy**: Specifies that the tenancy is shared.
    - **type**: Indicates the type of load balancer as a web server.
    - **healthcheck**: Specifies health check settings for the load balancer.

## Volume Definition (volumes):

Defines the `juptyer_datasets` volume, which can be used to persist data across container restarts.

## Installed packages:
- jupyterlab
- jupyter_collaboration
- notebook

- numpy==1.23.2
- pandas==2.0.3
- matplotlib==3.7.2
