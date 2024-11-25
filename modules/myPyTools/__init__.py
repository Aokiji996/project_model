import sys

def if_debug() -> bool:
    gettrace = getattr(sys, 'gettrace', None)
    if gettrace():
        return True
    else:
        return False