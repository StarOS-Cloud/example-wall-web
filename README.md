# frontend

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

## Deploy 

### Build
```
docker build -t wall/web:latest .
```

### Run
```
docker run -d --name wall-web \
    -p 80:80 \
    -e API_HOST=<api-host> \
    wall/web:latest
```