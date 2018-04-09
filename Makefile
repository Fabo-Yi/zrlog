NAME := zrlog
VERSION := v1.7
PORT := 8080

all: run

clean:
	mvn clean

package: clean
	mvn package

image: package
	docker build -t $(NAME):$(VERSION) .

run: image
	docker run -dit -p $(PORT):8080  $(NAME):$(VERSION)
