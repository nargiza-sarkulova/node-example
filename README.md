```
docker build -t node-example .
docker run --name node-example \
    -p 3000:3000 -p 5858:5858 \
    --mount type=bind,src="$(pwd)/src",target="/app/src" \
    --mount type=bind,src="$(pwd)/test",target="/app/test" \
    node-example
```
