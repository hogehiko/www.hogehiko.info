
run:
	docker run --name some-nginx-container --rm -p 80:80 -v "$(shell pwd)/dist:/usr/share/nginx/html:ro" -d nginx

deploy:
	# http://www.hogehiko.info.s3-website-ap-northeast-1.amazonaws.com/
	aws s3 sync static-contents/ s3://www.hogehiko.info/

env:
	nvm use 14.15.3

watch:
	npm run watch

serve:
	npm run serve

build:
	npm run build-prod

setup:
	npm update


deploy:
	# http://www.hogehiko.info.s3-website-ap-northeast-1.amazonaws.com/
	aws s3 sync dist/ s3://www.hogehiko.info/
