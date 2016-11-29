build:
	docker build -t udaysinghcode/rails .

debug:
	docker run -i -t --entrypoint=sh udaysinghcode/rails

run:
	docker run -i -p 3306:3306 udaysinghcode/rails

push:
	docker push udaysinghcode/rails
