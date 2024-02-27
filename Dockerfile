FROM python:3.7

WORKDIR /usr/src/app

RUN apt update
RUN apt -y upgrade
RUN apt -y install avahi-daemon
RUN apt -y install libavahi-client3
RUN apt -y install libnss3
RUN apt -y install libx11-xcb1
RUN apt -y install libxcomposite1
RUN apt -y install libxcursor1
RUN apt -y install libxdamage1
RUN apt -y install libxi6
RUN apt -y install libxtst6
RUN apt -y install libxrandr2
RUN apt -y install libasound2
RUN apt -y install libatk1.0-0
RUN pip install cefpython3
RUN pip install numpy
RUN pip install ndi-python

COPY . .

CMD ["python", "chromicast.py", "https://vdo.mcserv.in/?view=Aaron&codec=h264", "1920", "1080"]
