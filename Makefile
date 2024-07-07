build:
	cd src && CGO_ENABLED=0 GOOS=linux go build -o build/fullcycle-rocks && cd ..
