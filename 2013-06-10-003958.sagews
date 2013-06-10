︠1d9524d6-61e1-4547-bffb-149b67bbfcbb︠
def possibleSums(n):
    result = [n]
    if n == 0 or n==1:
        pass
    else:
        for v in split(n.binary()):
            w  = [Integer(a,base=3) for a in v]
            for i in possibleSums(w[0]):
                for j in possibleSums(w[1]):
                    if i+j not in result:
                        result.append(i+j)
    return result
︡83c80d41-4ec9-4a3b-9548-57acf4fc09bd︡
mod = lambda n,m: n%m
def baseExpansion(n,c,b):
    i = len(n)
    base10 = sum([pow(c,i-k-1)*n[k] for k in range(i)])
    j = int(ceil(log(base10 + 1,b)))
    baseExpanded = [mod(base10//pow(b,j-p),b) for p in range(1,j+1)]
    return baseExpanded
︠3f4893bd-5354-427b-a5c7-198b3fd77147︠
︡2c2c86ee-f432-4da3-b227-e4f60565d409︡
︠bb38a6ff-0d89-4d60-baa0-8169bcb3233e︠

import math

def base_expand(base, val):
    """This simple function performs a base-expansion from decimal
    using moduli and a translation table. The translation table is
    a clear limitation here, in that it implies the maximum base
    is 36."""

    if (base < 2) or (base > 36):
        raise BaseOutOfBoundsError(base)

    trans_table = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    res = ''

    while val != 0:
        res += trans_table[(int(val % base))]
        val = math.floor(val / base)
    return res[::-1]

class BaseOutOfBoundsError(Exception):
    """Base must be between 2 and 36"""
    def __init__(self, val):
        self.val = val
    def __str__(self):
        print "\nInvalid base: %s. Base must be (x | x > 1; x < 37)" % \
            self.val
︡fb313259-a60f-4958-9c1b-20459a170520︡
︠64b59a8f-e841-4b76-80cf-536c9d0700e0︠
