FROM selenium/standalone-chrome:122.0.6261.69

USER root
RUN apt-get update && apt-get install python3-distutils -y
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
WORKDIR /app

COPY ./requirements.txt /app

RUN python3 -m pip install -r requirements.txt

# We need these jar to working with S3A. Here the link to prequities https://hadoop.apache.org/docs/stable/hadoop-aws/tools/hadoop-aws/index.html#getting_started
RUN wget https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.1/hadoop-aws-3.3.1.jar
RUN wget https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.901/aws-java-sdk-bundle-1.11.901.jar
RUN mv *.jar /usr/local/lib/python3.10/dist-packages/pyspark/jars

COPY . /app
CMD ./start_notebook.sh