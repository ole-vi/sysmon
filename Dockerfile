FROM treehouses/alpine:latest

ENV PORT=6969 \
    SYSMON_HOME=/syv/sysmon

RUN apk update && apk add --no-cache git gcc musl-dev python3-dev py3-virtualenv py3-pip py3-psutil py3-werkzeug && \
    mkdir -p $SYSMON_HOME && \
    wget -qO- https://github.com/t0xic0der/sysmon/archive/v0.1.0.tar.gz | tar xz --strip 1 -C $SYSMON_HOME && \
    virtualenv venv && \
    source venv/bin/activate && \
    pip3 install -r $SYSMON_HOME/requirements.txt

EXPOSE $PORT

CMD python3 $SYSMON_HOME/main.py -p $PORT -6