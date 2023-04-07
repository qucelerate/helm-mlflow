FROM python:3.10.6-slim-bullseye

# Install dependencies
RUN pip install mlflow[extras]==2.1.1 psycopg2-binary==2.9.5 boto3==1.26.3

ENV BACKEND_STORE_URI=""
ENV DEFAULT_ARTIFACT_ROOT="/opt/artifact"

# Port
EXPOSE 80

CMD mlflow server --host 0.0.0.0 --port 80 --backend-store-uri $BACKEND_STORE_URI --default-artifact-root $DEFAULT_ARTIFACT_ROOT
