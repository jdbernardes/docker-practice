FROM python:3.12-slim
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT [ "poetry", "run", "streamlit", "run", "docker_practice/app/app.py", "--server.port=8501", "--server.address=0.0.0.0" ]