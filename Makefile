build:
	docker build --platform=linux/amd64 --no-cache -t oempro-link-proxy  .

run:
	-@docker rm oempro-link-proxy

	@docker run -d -it --rm \
	-p 80:80 \
	-p 443:443 \
	-v ${PWD}/Caddyfile:/etc/caddy/Caddyfile \
	-v ${PWD}/docker-data:/data \
	-h oempro-link-proxy \
	--name oempro-link-proxy oempro-link-proxy

stop:
	-@docker stop oempro-link-proxy

kill:
	-@docker kill oempro-link-proxy

destroy:
	-@docker stop oempro-link-proxy
	-@docker image rm oempro-link-proxy
	-@docker container rm oempro-link-proxy

restart:
	-@docker restart oempro-link-proxy
