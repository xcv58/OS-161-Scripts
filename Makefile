CWD := $(shell pwd)

default:
	ln -s $(CWD)/build_run_os161.sh /usr/local/bin/a
	ln -s $(CWD)/change_config_for_sys161.sh /usr/local/bin/s
	ln -s $(CWD)/.gdbinit ~/root/.gdbinit

remove:
	rm /usr/local/bin/a
	rm /usr/local/bin/s
	rm ~/root/.gdbinit
