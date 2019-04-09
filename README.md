# Shopware development template

This repository is a template for local development. It enables you to create a running Shopware instance to test new technologies from shopware, including the new *core* or the new *administration*.

The newest installation guide, together with the complete documentation, is available at
[docs.shopware.com](https://docs.shopware.com/en/shopware-platform-en/getting-started).


# NEXUS

Preparation

```
git clone git@github.com:wesolowski/development.git

cd development

git clone git@github.com:shopware/platform.git
```


### Docker installation

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