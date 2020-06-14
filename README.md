# Boxed Concourse

You can play locally with Concourse using this in-a-box script that brings up an entire Concourse instance (worker, web, and database). The instance stores all data written to the database in a `data` directory.

Requires:

* Bash
* Docker
* Docker Compose 1.8.1+

Run the command below in your terminal to bring up a Concourse instance locally.

```
$ bash <(curl -L https://git.io/boxed-concourse)
```

## Launch It!

Run the command below to launch the Concourse instance using Docker Compose.

```
$ docker-compose up -d
```

Run the command below to stop the Concourse instance using Docker Compose.

```
$ docker-compose down
```