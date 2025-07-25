FROM python:3.9-slim

ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y \

    gcc \

    libffi-dev \

    python3-dev \

    libssl-dev \

    sshpass \

    vim \

    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir ansible

WORKDIR /ansible

CMD ["tail" "-f" "/dev/null"]

