Command to check which ports are listening: ```ss -tulnp```\
To filter further use: ```ss -tulnp | grep "port_number" ```

ss	Socket Statistics (network connections)\
-t	Show TCP connections\
-u	Show UDP connections\
-l	Show listening sockets\
-n	Show numeric IP addresses and ports\
-p	Show process names and PIDs\

--- 
ServicePorts:
HTTP:	80 \
HTTPS:	443 \
SSH:	22 \
FTP:	21 \
MySQL:	53 \
PostgreSQL:	5432 \
Kubernetes API Server:	6443 \
Docker Daemon API:	2375 / 2376 \
MongoDB:	27017 \
Grafana:	300 / 43 \
Prometheus:	9090 \
Tomcat:	8080 \
Apache Kafka:	9092 \
Redis:	6379 \
RDP (Remote Desktop Protocol):	3389 \
ElasticSearch API:	9200 \
Jenkins: 8080 \
SMTP:	25 \
SonarQube:	9000 \
Nexus:	8081 
