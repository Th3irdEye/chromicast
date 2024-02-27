FROM python:3

WORKDIR /usr/src/app

RUN pip install --no-cache-dir -r cefpython3
RUN pip install --no-cache-dir -r numpy
RUN pip install --no-cache-dir -r ndi-python

COPY . .

CMD [ "python", "./chromicast.py https://vdo.mcserv.in/?view=Aaron&codec=h264 1920 1080" ]
