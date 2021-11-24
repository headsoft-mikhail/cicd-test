import unittest


class TestStocksProducts(unittest.TestCase):
    def setUp(self):
        print('setUp')

    def tearDown(self):
        print('tearDown')

    def test_example_test(self):
        value = (1+1 == 2)
        self.assertTrue(value)
