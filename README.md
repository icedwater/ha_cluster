# Testing HA Cluster

Docker-based cluster for high availability webapp using keepalived and haproxy.

Based on a Medium [blog post][blog] by @yahyasghiouri.

## Prerequisites

- Python 3.12 (per example)
- docker
- docker-compose

## Procedure

1. Make sure the prerequisites are installed.
2. Clone this repository.

        git clone https://github.com/icedwater/ha_cluster

3. Create and activate a virtual environment to test the Flask app.

        python -m venv webapp
        source webapp/bin/activate
        pip install -r requirements.txt
        python app.py

4. Build the webapp docker image which will be duplicated.

        docker build -f Dockerfile.webapp -t webapp_test .

5. Create a .env file to specify the CONFIG_DIR for the docker-compose file.

        CONFIG_DIR=/path/to/this/directory  # wherever the config files are

6. Run the cluster using docker-compose.

        docker-compose -p project_name up -d

   The docker-compose network which may need to be manually removed after shutdown.
   First try to shut it down using `docker-compose`:

        docker-compose down

   If that does not work, you may need to stop and remove everything manually.

        docker kill {web,haproxy}{1,2} web3
        docker network prune                # remove the now-inactive network

[blog]: https://medium.com/@yahyasghiouri1998/building-a-high-availability-cluster-with-haproxy-keepalived-and-docker-a-step-by-step-guide-9325f4ac8aa7
