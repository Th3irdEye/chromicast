FROM python:3.9

WORKDIR /usr/src/app

RUN pip install cefpython3
RUN pip install numpy
RUN pip install ndi-python

COPY . .

CMD ["python", "chromicast.py", "https://vdo.mcserv.in/?view=Aaron&codec=h264", "1920", "1080"]
