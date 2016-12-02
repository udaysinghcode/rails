build:
	docker build -t udaysinghcode/rails:0.0.6 .

debug:
	docker run -i -t --entrypoint=sh udaysinghcode/rails

run:
	docker run -i -p 3306:3306 udaysinghcode/rails

push:
	docker push udaysinghcode/rails
