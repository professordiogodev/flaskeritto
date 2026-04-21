To containerize this app, just run:
```bash
docker build -t flaskeritto .
```

Then, you can run (and specify the port you want):
```bash
docker run -p 8085:7777 -e PORT=7777 flaskeritto
```