import unittest
from first_ci_cd import hello_world

class TestHelloWorld(unittest.TestCase):
    def test_hello_world(self):
        self.assertEqual(hello_world(), 'Check if its working5')

if __name__ == '__main__':
    unittest.main()
