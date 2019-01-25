# docker-frontail forked from mthenw/docker-frontail

### This repo is no longer maintained. `Dockerfile` is not maintained under [`frontail`](https://github.com/mthenw/frontail) repo.

docker run         \
--name frontail     --net=host        \
-v /datavol/openhab/openhab_userdata:/openhab/userdata         \
-p 9001:9001     -d         --rm         lukics/frontail:armv7     \
/openhab/userdata/logs/events.log  /openhab/userdata/logs/openhab.log

