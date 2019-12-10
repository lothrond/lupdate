VERSION := 1.0

DESTDIR ?= /usr/local

SRC_BIN := lupdate
SRC_LIB := apt_update.sh flatpak_update.sh git_update.sh pip_update.py

BIN := bin/lupdate
LIB := lib/lupdate

.PHONY: install
install: $(SRC_BIN) $(SRC_LIB)
	cp $(SRC_BIN) $(BIN)
	chmod 755 $(BIN)
	ifneq ( -d $(LIB))
		mkdir $(LIB)
	endif
	cp $(SRC_LIB) $(LIB)

.PHONY: remove
remove:
	rm $(BIN)
	rm -r $(LIB)
