sayhello:
	g++ sayhello.cpp -o sayhello

install: sayhello
	install -m 0755 sayhello /usr/local/bin

remove:
	rm /usr/local/bin/sayhello
