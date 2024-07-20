import math

# Noktaların Tanımlanması
points = [(1, 2), (4, 6), (5, 8), (3, 7)]

# Öklid Mesafesi İçin Fonksiyon
def euclideanDistance(point1, point2):
    return math.sqrt((point2[0] - point1[0])**2 + (point2[1] - point1[1])**2)

# Minimum Mesafenin Bulunması
def findMinimumDistance(points):
    min_distance = float('inf')
    for i in range(len(points)):
        for j in range(i + 1, len(points)):
            distance = euclideanDistance(points[i], points[j])
            if distance < min_distance:
                min_distance = distance
    return min_distance

# Sonucun Yazdırılması
min_distance = findMinimumDistance(points)
print(f"Minimum Öklid Mesafesi: {min_distance}")
