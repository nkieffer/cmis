(define-skeleton python-test-script
  "Create a unittest.TestCase script."
  "Assignment name: "
"import unittest
import " str "\n"
"import inspect
import re

def showDetails(func):
    def decorated(self):
        print \"\\n==========================================================\"
        print func.__doc__
        print \"Test function name: \", func.__name__
        func(self)
    return decorated

class Test(unittest.TestCase):
    \"\"\"
##################################################################
                Tests for " str "    
##################################################################
    \"\"\"

    @classmethod
    def setUpClass(cls):
        print cls.__doc__
        cls.src = inspect.getsource(assignment)
" _
"\nif __name__==\"__main__\":
    unittest.main()"
 (write-file (concat str ".py")))
