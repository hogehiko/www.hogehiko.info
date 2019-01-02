
run:
	docker run --name some-nginx -p 80:80 -v "$(pwd):/usr/share/nginx/html:ro" -d nginx