FROM python:3.9

LABEL maintainer="Queens University Belfast d.capparelli@qub.ac.uk"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3-pip \
    make \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

COPY app /OnAirScreen

WORKDIR /OnAirScreen

RUN pip install -r requirements.txt

RUN make && make install

ENTRYPOINT ["python", "/OnAirScreen/start.py"]
