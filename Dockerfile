FROM jarlefosen/cs16

#Optionally add your own server.cfg file
COPY server.cfg cstrike/server.cfg
COPY mapcycle.txt cstrike/mapcycle.txt
COPY motd.txt cstrike/motd.txt

ENV SERVER_NAME "your_server_name"
ENV RCON_PW "your_rcon_pass"
ENV START_MAP "de_dust2"
