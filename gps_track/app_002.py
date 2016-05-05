#create db.nmea with GPGGA sentences
import serial
import pynmea2

serialStream = serial.Serial("/dev/ttyAMA0", 9600, timeout=0.5)

with open("db.nmea", "a") as f:
    while True:
        sentence = serialStream.readline()
        if sentence.find('GGA') > 0:
            f.write(sentence+"\n")

f.close();
