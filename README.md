# sysmon
![GitHub](https://img.shields.io/github/license/treehouses/sysmon)

### Introduction
An intuitive remotely-accessible system performance monitoring and task management tool for servers and headless Raspberry Pi setups, more can be view [here](https://github.com/t0xic0der/sysmon).
### Intallations:
```bash
git clone https://github.com/treehouses/sysmon.git
cd sysmon
docker build -t sysmon .
````
### Usage:
- After build the docker image run with
``docker run -p 6969:6969 -d sysmon``
- Open a browser and navigate to the ``serverip:6969/primary``