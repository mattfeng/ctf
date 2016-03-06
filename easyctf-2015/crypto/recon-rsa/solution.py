def extended_gcd(aa, bb):
    lastremainder, remainder = abs(aa), abs(bb)
    x, lastx, y, lasty = 0, 1, 1, 0
    while remainder:
        lastremainder, (quotient, remainder) = remainder, divmod(lastremainder, remainder)
        x, lastx = lastx - quotient*x, x
        y, lasty = lasty - quotient*y, y
    return lastremainder, lastx * (-1 if aa < 0 else 1), lasty * (-1 if bb < 0 else 1)

def modinv(a, m):
    g, x, y = extended_gcd(a, m)
    if g != 1:
        raise ValueError
    return x % m

p = 12005744948928134779
q = 13677782158596496907
phi = (p - 1) * (q - 1)

e = 65537
n = 164211964063109252832691978442952628553
c = 71513340781583502404687801459685023183

d = modinv(e, phi)

m = pow(c, d, n)
print hex(m)[2:-1].decode("hex")
