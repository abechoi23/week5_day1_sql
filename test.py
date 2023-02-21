from minIndex import whiteboard
# change whiteboard to python file name, you can change * to function name
import unittest

class SharedIndexTest(unittest.TestCase):

    def test_whiteboard(self):
        list1 = ["Shogun","Tapioca Express","Burger King","KFC"]
        list2 = ["Piatti","The Grill at Torrey Pines","Hungry Hunter Steakhouse","Shogun"]
        result1 = whiteboard(list1, list2)
        self.assertEqual(result1, ['Shogun'])
        list3 =  ["Shogun","Tapioca Express","Burger King","KFC"]
        list4 =  ["KFC","Shogun","Burger King"]
        result2 = whiteboard(list3, list4)
        self.assertEqual(result2, ['Shogun'])
        list4 = ["Shogun","Tapioca Express","Burger King","KFC"] 
        list5 = ["KFC","Burger King","Tapioca Express","Shogun"]
        result3 = whiteboard(list4, list5)
        self.assertEqual(sorted(result3), sorted(["KFC","Burger King","Tapioca Express",'Shogun']))
        list6 = ["Shogun","Tapioca Express","Burger King","KFC"] 
        list7 = ["KNN","KFC","Burger King","Tapioca Express","Shogun"]
        result4 = sorted(whiteboard(list4, list5))
        self.assertEqual(result4, sorted(["KFC","Burger King","Tapioca Express","Shogun"]))