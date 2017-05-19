prefix = /usr/local

all: bin/sayhello

bin/sayhello: src/sayhello.cpp
	mkdir -p bin/
	g++ -o $@ $^ -lm

install: bin/sayhello
	install -D bin/sayhello $(DESTDIR)$(prefix)/bin/sayhello

clean:
	-rm -f bin/sayhello

distclean:
	-rm -f bin/sayhello

uninstall:
	-rm -f $(DESTDIR)$(prefix)/bin/sayhello

.PHONY: all install clean distclean uninstall
