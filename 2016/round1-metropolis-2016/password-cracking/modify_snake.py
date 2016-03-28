

out = open('snake.txt', 'w')

with open("/home/pwn/shared/snakewords.txt") as f:
    for line in f.readlines():
        line = line.split('. ')[1].strip()
        print line
        out.write(line + '\n')
