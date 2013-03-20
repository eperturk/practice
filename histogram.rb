InitialArray = [1, 1, 2, 2, 2, 3, 3, 4, 4, 4, 4]
Arraystring = InitialArray.to_s
#count = InitialArray.count
unique = InitialArray.uniq
uniquecount = unique.count

object1 = InitialArray.rindex(1)
object2 = InitialArray.rindex(2)
object3 = InitialArray.rindex(3)
object4 = InitialArray.rindex(4)

count4 = object4 - object3
count3 = object3 - object2
count2 = object2 - object1 
count1 = object1 - -1

Histogram = [[unique[0], count1], [unique[1], count2], [unique[2], count3], [unique[3], count4]]

print Histogram


