# syntax=docker/dockerfile:1

FROM ymlai87416/python_talib:python3.8_0.4_2
EXPOSE 8501
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY dashboard.py ./
COPY .streamlit/config.toml ./.streamlit/

CMD [ "streamlit", "run", "dashboard.py" ]