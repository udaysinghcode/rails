build:
	docker build -t udaysinghcode/rails:1.0.0 .

debug:
	docker run -i -t --entrypoint=bash udaysinghcode/rails:1.0.0

run:
	docker run -i -p 3306:3306 udaysinghcode/rails:1.0.0

push:
	docker push udaysinghcode/rails
