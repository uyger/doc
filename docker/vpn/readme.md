sudo docker run \
	--name vpn \
	-p 500:500/udp \
	-p 4500:4500/udp \
	-p 1701:1701/tcp \
	-e PSK={共享密码} \
	-e USERNAME={用户名} \
	-e PASSWORD={密码} \
	-d siomiz/softethervpn
