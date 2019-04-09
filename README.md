# Shopware development template

This repository is a template for local development. It enables you to create a running Shopware instance to test new technologies from shopware, including the new *core* or the new *administration*.

The newest installation guide, together with the complete documentation, is available at
[docs.shopware.com](https://docs.shopware.com/en/shopware-platform-en/getting-started).


# NEXUS

Url: <http://localhost:8000/>

Preparation

```
git clone git@github.com:wesolowski/development.git

cd development

git clone git@github.com:shopware/platform.git
```


### Docker installation (PHP is installed locally)

```
./psh.phar docker:start

bash init.sh # Mac / Linux
init.bat # Windows - PowerShell
```

Access the application container:

```
./psh.phar docker:ssh
# or
bash bash.sh
```

### Docker installation (PHP is not installed locally)

##### Init
```
docker volume create shopware_projectdata
docker-compose build 
docker-compose up -d

bash init.sh # Mac / Linux
init.bat # Windows - PowerShell
```



### Docker SSH

```
Host: 127.0.0.1
Port: 2222
User: root
Pass: nexus123
Path: /app
```