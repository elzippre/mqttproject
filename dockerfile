FROM python:3.9 
# Or any preferred Python version.
ADD main.py .
RUN pip install paho-mqtt
CMD [“python”, “./simple-sensor.py -b 172.21.0.2 -v -i 20”] 
# Or enter the name of your unique directory and parameter set