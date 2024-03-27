FROM selenium/standalone-chrome:122.0.6261.69


USER root
RUN apt-get update && apt-get install python3-distutils -y
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
WORKDIR /app
COPY ./requirements.txt /app

RUN python3 -m pip install -r requirements.txt

COPY . /app

RUN cp jars/* /usr/local/lib/python3.10/dist-packages/pyspark/jars

CMD ./start_notebook.sh