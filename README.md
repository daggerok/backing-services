# backing services with docker and maven

## getting started

```bash
git clone https://github.com/daggerok:backing-services-with-maven-and-docker-compose ~/.dev

# before development
mvn -f ~/.dev -P mysql-up # or:
mvn -f ~/.dev -D up=mysql # or:
~/.dev/mvnw -P mysql-up

# cleanup
mvn -f ~/.dev -P mysql-down # or:
mvn -f ~/.dev -D down=mysql # or:
~/.dev/mvnw -P mysql-down
```

## services available

current setup by default contains profiles for:
* docker-compose file: `src/docker-compose-consul.yaml`,
  use maven commands:
  ```bash
  mvn -f ~/.dev -D up  =consul
  mvn -f ~/.dev -D down=consul
  ```
* docker-compose file `src/docker-compose-mysql.yaml`, 
  use maven commands:
  ```bash
  mvn -f ~/.dev -D up=mysql
  mvn -f ~/.dev -D down=mysql
  ```
* docker-compose file `src/docker-compose-rabbitmq.yaml`,
  use maven commands:
  ```bash
  mvn -f ~/.dev -D up  =rabbitmq
  mvn -f ~/.dev -D down=rabbitmq
  ```
