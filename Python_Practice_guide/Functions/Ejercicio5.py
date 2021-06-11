def area_circle(radius):
    pi = 3.1415
    return pi*radius**2

def volume_cilindre(radius, height):
    return area_circle(radius) * height

print(volume_cilindre(3,5))
