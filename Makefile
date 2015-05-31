start: build
	docker run \
		--name retina-router \
		--link retina-web:retina \
		--link retina-web:retina-web \
		--publish 80:80 --detach \
		bodokaiser/retina-router

build:
	docker build -t bodokaiser/retina-router .
