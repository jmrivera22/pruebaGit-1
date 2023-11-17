#!/bin/bash
	apt-get install acl
	useradd -m luis
	useradd -m pedro
	useradd -m juan
	mkdir -p /home/luis/trabajos
	chmod a-rwx /home/luis/trabajos
	setfacl -m u:luis:rw /home/luis/trabajos
	setfacl -m u:pedro:r /home/luis/trabajos
	setfacl -m u:juan:rw /home/luis/trabajos