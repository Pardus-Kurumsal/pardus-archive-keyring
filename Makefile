build: keyrings/pardus-archive-keyring.gpg

keyrings/pardus-archive-keyring.gpg: active-keys/index
	mkdir -p keyrings
	jetring-build -I $@ active-keys

clean:
	rm -rf keyrings

install: build
	install -d $(DESTDIR)/usr/share/keyrings/
	cp keyrings/*.gpg $(DESTDIR)/usr/share/keyrings/

.PHONY: build clean install
