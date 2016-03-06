
g = [0, 1]
for i in range(0, 30):
    g.append((g[i] + g[i + 1]) ^ 2)

w = [0, 1]
for i in range(0, 30):
    w.append(w[i] ^ 2 + w[i + 1] ^ 2)

print g[30] - w[30]
