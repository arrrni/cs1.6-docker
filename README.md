# Counter Strike 1.6 dedicated server Docker
### You can use this repo to quickly deploy Counter Strike 1.6 server using just *docker-compose*

#### Before start

Remember to edit these sections in Dockerfile before you run docker-compose.

```
ENV SERVER_NAME "your_server_name" // server name - you can change it in config as well
ENV RCON_PW "your_rcon_pass" // RCON password
ENV START_MAP "de_dust2" // this will start "de_dust2" as first map
```

There are two optional files included in this repo:
+ motd.txt - you can store Message of the day here (that one that shows up when you enter the server)
+ mapcycle.txt - file that you can put custom map cycle for your server
Repository includes example config for your server, but you should review it and edit to fit your needs.
