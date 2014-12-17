Usage:
	chmod 755 mk_service_user.sh
	sudo ./mk_service_user.sh newusername

Useage Scenario:
	I want to run some startup services, each as its own user, 
	on Mac OSX(10.10) using launchd from system startup.
	This will be used for plex media server, SickRage(Sickbeard),
	transmission-daemon and pocketmine-mp(Minecraft PE server).

How it works:
	A uid/gid is assigned starting and descending from 499
	(thus mac daemon user id range = ? to 499).
	Shell access and login is revoked.
	Password seems removed..
	The User's primary group is set, same name as user.
	Creates a home folder in /usr/local/HOME with proper ownership 
	and group permissions.
