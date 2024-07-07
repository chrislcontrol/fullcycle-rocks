FROM scratch

WORKDIR /app
COPY /src/build/fullcycle-rocks .

ENTRYPOINT [ "./fullcycle-rocks" ]
