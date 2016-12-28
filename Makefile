build:
	docker build -t udaysinghcode/rails:0.0.9 .

debug:
	docker run -i -t --entrypoint=bash udaysinghcode/rails:0.0.9

run:
	docker run -i -p 3306:3306 udaysinghcode/rails:0.0.9

push:
	docker push udaysinghcode/rails
