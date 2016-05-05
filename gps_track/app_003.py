#find latitude and longitude in db.nmea file
import pynmea2

f = open('db.nmea', 'r')

for line in f:
    if line.find('GGA') > 0:
        data = pynmea2.parse(line)
        print("{0:.4f}".format(data.latitude) + " {0:.4f} ".format(data.longitude))
f.close()
