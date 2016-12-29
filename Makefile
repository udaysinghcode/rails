build:
	docker build -t udaysinghcode/rails:0.0.10 .

debug:
	docker run -i -t --entrypoint=bash udaysinghcode/rails:0.0.10

run:
	docker run -i -p 3306:3306 udaysinghcode/rails

push:
	docker push udaysinghcode/rails
