import os
from modules.myPyTools import *
import sys

if if_debug():
    print("Debug Mode!")
    import pymytest_Debug as pymytest
else:
    print("Release Mode!")
    import pymytest_Release as pymytest

pymytest.hello()
pymytest.hello()