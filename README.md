# backing services with docker and maven

## getting started

```bash
git clone https://github.com/daggerok/backing-services ~/.dev
export PATH="$HOME/.dev/bin:$PATH"

# before development
up mysql

# cleanup
down mysql
```

## services available

current setup by default contains profiles for:
* docker-compose file: `src/docker-compose-consul.yaml`,
  use commands:
  ```bash
  up consul
  down consul
  ```
* docker-compose file `src/docker-compose-mysql.yaml`, 
  use commands:
  ```bash
  up mysql
  down mysql
  ```
* docker-compose file `src/docker-compose-rabbitmq.yaml`,
  use commands:
  ```bash
  up rabbitmq
  down rabbitmq
  ```
