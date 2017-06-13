from math import tan, pi

def polysum(n, s):
"""
    Input:
        n = number of sides (int or float)
        s = length of sides (int or float)
    Return:
        Sum of area and square of perimeter of polygon
"""
    def polyArea(n, s):
        area = (.25 * n * s ** 2)/(tan(pi/n))
        return area

    def polyPerimeter(n, s):
        return n * s
    # Round will take two inputs, number and amount of spaces to round to. 
    return round(polyArea(n, s) + polyPerimeter(n, s)**2, 4)

