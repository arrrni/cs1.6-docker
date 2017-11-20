FROM jarlefosen/cs16

RUN mkdir addons && mkdir addons/metamod && mkdir addons/dproto && mkdir addons/metamod/dlls

COPY metamod_i386.so cstrike/addons/metamod/dlls/metamod_i386.so
COPY dproto_i386.so cstrike/addons/dproto/dproto_i386.so
COPY plugins.ini cstrike/addons/metamod/plugins.ini
COPY liblist.gam cstrike/liblist.gam
COPY dproto.cfg cstrike/dproto.cfg

#RUN su - && chown steam:users liblist.gam && chown steam:users dproto.cfg && chown -R steam:users addons/

#RUN chmod 755 cstrike/liblist.gam

#Optionally add your own server.cfg file
COPY server.cfg cstrike/server.cfg
COPY mapcycle.txt cstrike/mapcycle.txt
COPY motd.txt cstrike/motd.txt

ENV SERVER_NAME "your_server_name"
ENV RCON_PW "your_rcon_pass"
ENV START_MAP "de_dust2"
