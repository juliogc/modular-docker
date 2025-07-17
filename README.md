# Getting Started

This project uses Docker Compose for environment management.  
Use the provided Makefile commands to start and manage the containers.

## Running the Project

### Production Environment

To run Docker Compose commands in the production environment:

```sh
make prod cmd=up
```

- **Containers started:**  
  - `app` (from `docker/app/docker-compose.yml`)

You can replace `up` with any valid docker compose subcommand, such as `down`, `build`, `stop`, etc.:

```sh
make prod cmd=down
make prod cmd=build
```

### Development Environment

To run Docker Compose commands in the development environment:

```sh
make dev cmd=up
```

- **Containers started:**  
  - `app` (from `docker/app/docker-compose.yml`)
  - `db` (from `docker/db/docker-compose.yml`)

Other examples:

```sh
make dev cmd=down
make dev cmd=build
```

### Stopping Containers

To stop and remove the running containers:

```sh
make dev cmd=down
make prod cmd=down
```

---
