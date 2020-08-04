
A docker image that contains the `yandex-pgmigrate` pip package.  

To run it, 

```
docker run --rm mendhak/yandex-pgmigrate -t latest migrate
```

To build this image, 

```
docker build -t mendhak/yandex-pgmigrate .
```