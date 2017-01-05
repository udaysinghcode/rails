build:
	docker build -t udaysinghcode/rails:1.0.2 .

debug:
	docker run -i -t --entrypoint=bash udaysinghcode/rails:1.0.2

run:
	docker run -i -p 3306:3306 udaysinghcode/rails:1.0.2

push:
	docker push udaysinghcode/rails
