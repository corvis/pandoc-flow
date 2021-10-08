ARG PANDOC_VERSION=latest
FROM pandoc/ubuntu:${PANDOC_VERSION}

ARG PANDOC_FLOW_VERSION
ARG RELEASE_DATE

COPY ./requirements-docker.txt /tmp/requirements-docker.txt

RUN apt-get update && apt-get install -y make python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install pandoc-flow==${PANDOC_FLOW_VERSION} \
    && pip install -r /tmp/requirements-docker.txt

ENTRYPOINT ["python3", "-m", "pandoc_flow"]

LABEL x.pandoc-flow.version="${PANDOC_FLOW_VERSION}" \
      x.pandoc-flow.release-date="${RELEASE_DATE}"