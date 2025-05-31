# dind sample

## Get started
```bash
docker compose up --build -d      
```
```bash
[+] Running 17/1
 ✔ dind 16 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                                                               11.6s 
[+] Running 2/2
 ✔ Volume "dind-sample_dind-data"  Created                                                                                                                                 0.0s 
 ✔ Container dind                  Started                                                                                                                                 3.9s 
```
```bash
docker compose exec dind docker ps
```
```bash
CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS        PORTS                               NAMES
de14bd7a4e00   mysql:8.0   "docker-entrypoint.s…"   3 seconds ago   Up 1 second   0.0.0.0:3306->3306/tcp, 33060/tcp   inner-mysql
```
