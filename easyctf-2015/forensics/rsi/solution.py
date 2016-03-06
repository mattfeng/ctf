keys = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
'z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '\n', 'esc',
'backspace', '\t', ' ', '-', '=', '{', '}', '\\', 'number', ';',
'\'', '~', ',', '.', '/', 'caps']

infile = open('output.txt', 'r')
outfile = open('keys.txt', 'w')

str = infile.readline()
len = len(keys)
while str != "":
    svalue = str.split(":")[2] # we are interesting in a third byte
    value = int(svalue, 16) - 4 # first symbol have code 0x04
    if value >= 0 and value < len:
        outfile.write(keys[value])
    str = infile.readline()
