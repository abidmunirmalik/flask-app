FROM python:3.8

WORKDIR /webapp

COPY ./requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY webapp/* .

ENTRYPOINT [ "python" ]
CMD ["app.py"]
