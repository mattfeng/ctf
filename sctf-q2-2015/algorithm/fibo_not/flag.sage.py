# This file was *autogenerated* from the file flag.sage
from sage.all_cmdline import *   # import sage library
_sage_const_30 = Integer(30); _sage_const_1 = Integer(1); _sage_const_0 = Integer(0); _sage_const_2 = Integer(2)
g = [_sage_const_0 , _sage_const_1 ]
for i in range(_sage_const_0 , _sage_const_30 ):
    g.append((g[i] + g[i + _sage_const_1 ]) ** _sage_const_2 )

w = [_sage_const_0 , _sage_const_1 ]
for i in range(_sage_const_0 , _sage_const_30 ):
    w.append(w[i] ** _sage_const_2  + w[i + _sage_const_1 ] ** _sage_const_2 )

print g[_sage_const_30 ] - w[_sage_const_30 ]
