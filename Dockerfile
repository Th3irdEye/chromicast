FROM python:3.9

WORKDIR /usr/src/app

RUN apt update
RUN apt -y upgrade
RUN apt install avahi-daemon
RUN systemctl enable --now avahi-daemon
RUN pip install cefpython3
RUN pip install numpy
RUN pip install ndi-python

COPY . .

CMD ["python", "chromicast.py", "https://vdo.mcserv.in/?view=Aaron&codec=h264", "1920", "1080"]
