run:
	static ./public

deploy:
	find ./public -exec s3up --cache-control 's-maxage=31536000, max-age=300' --bucket undobrexit.com {} +
