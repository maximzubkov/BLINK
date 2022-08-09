FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-runtime

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y \
               build-essential \
	       wget \
               unzip \
               ssh \
               git \
	       gcc \
               vim \
	       libgcc-8-dev
RUN apt-get clean

RUN python -m pip install --upgrade pip

WORKDIR /BLINK
COPY . /BLINK

RUN pip install -r requirements.txt
