import Image

im = Image.open("pinkie-pie.png")
out = Image.new("RGB", (512, 512))

width, height = im.size
pix = im.load()
outpix = out.load()

for y in range(0, height):
    for x in range(0, width):
        print pix[x, y]
