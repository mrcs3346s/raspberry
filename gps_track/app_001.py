#create db.nmea with all GP sentences
import serial
import pynmea2

serialStream = serial.Serial("/dev/ttyAMA0", 9600, timeout=0.5)

with open("db.nmea", "a") as f:
    while True:
            f.write(serialStream.readline()+"\n")

f.close();
