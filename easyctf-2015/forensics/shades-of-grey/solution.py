import Image

im = Image.open("shades.jpg")
shades = []

for x in range(512):
    for y in range(512):
        color = im.getpixel((x, y))
        if color not in shades:
            shades.append(color)

d = []
for c in shades:
    d.append(c[0])

for i in range(0, 256):
    if i not in d:
        print i
