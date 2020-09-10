FROM python:3

COPY sentiment-clf /sentiment-clf
COPY start /sentiment-clf/
WORKDIR "/sentiment-clf"
RUN   mkdir -p /sentiment-clf/lib/models \ && pip install -r requirements.txt

ENTRYPOINT ["/bin/bash", "start"] 