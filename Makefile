
run:
	docker run --name some-nginx -p 80:80 -v "$(pwd)/static-contents:/usr/share/nginx/html:ro" -d nginx

deploy:
	# http://www.hogehiko.info.s3-website-ap-northeast-1.amazonaws.com/
	aws s3 sync static-contents/ s3://www.hogehiko.info/