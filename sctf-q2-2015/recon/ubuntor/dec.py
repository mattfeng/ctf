#!/usr/bin/env python

s = "iVBORw0KGgoAAAANSUhEUgAAAB4AAAAXAQMAAAAm8W0pAAAABlBMVEUAAAD///+l2Z/dAAAAaElEQVQI12M4Uxksw3D1e2gNw5nfwTYMV/+CWMVbZRj+////h6H3WeYahluvVoGIrDkQ1t1nQAIs+2/bciCxavUfhv9Zy0EEiFWe/Qciu3WbZgdDaHjWDoZQ8awZDNHhWXsYdgdndQAAbBA+tIufstkAAAAASUVORK5CYII="

f = open('out.png', 'w')
f.write(s.decode('base64'))
f.close()
