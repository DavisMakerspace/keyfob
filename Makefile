.PHONY: all
all: install

.PHONY: install
install: /etc/systemd/system/keyfob.service

/etc/systemd/system/%: install/%.template
	sed 's|/PATH/TO|'"$$(readlink -f .)"'|g' $< >$@
