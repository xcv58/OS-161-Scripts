PWD=$(shell pwd)
BINDIR=/usr/local/bin
SYS161DIR=~/os161/root

default:
	ln -s $(PWD)/build_run_os161.sh $(BINDIR)/a
	ln -s $(PWD)/change_config_for_sys161.sh $(BINDIR)/s
	ln -s $(PWD)/.gdbinit ~/.gdbinit

rm:remove
clean:remove
uninstall:remove
remove:
	rm $(BINDIR)/a
	rm $(BINDIR)/s
	rm $(SYS161DIR)/.gdbinit
