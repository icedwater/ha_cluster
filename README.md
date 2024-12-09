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
3. Create and activate a virtual environment.
4. Build the webapp docker image which will be duplicated.
5. Run the cluster using docker-compose.

[blog]: https://medium.com/@yahyasghiouri1998/building-a-high-availability-cluster-with-haproxy-keepalived-and-docker-a-step-by-step-guide-9325f4ac8aa7
