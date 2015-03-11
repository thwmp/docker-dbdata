# docker-dbdata
Out-of-the-box BusyBox image set up to store data for MySQL databases.

## Building the image ##

If you don't want to pull the `morganhjk/dbdata` image from the [automated build repository]
(https://registry.hub.docker.com/u/morganhjk/dbdata/) on the [Docker Hub Registry]
(https://registry.hub.docker.com/), you can clone the [repository on GitHub]
(https://github.com/morganhjk/docker-dbdata) and build the image `morganhjk/dbdata`
locally by executing the following command inside the docker-dbdata folder:

    docker build -t morganhjk/dbdata .

## Running the image ##

To run a container with the image to be used by another container (e.g. `morganhjk/mariadb`), execute the following command:

    docker run --name somedb_data morganhjk/dbdata
  
You can use the `morganhjk/rmit` image to inspect the data in the container above by executing the following command:

    docker run --rm -it --volumes-from somedb_data morganhjk/rmit
