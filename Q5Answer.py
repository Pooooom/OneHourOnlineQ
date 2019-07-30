def bubble_sort(data):
	length = len(data)
	for i in range(len(data)-1):
		for j in range(len(data)-1):
			if (data[j] > data[j+1]):
				tmp = data[j]
				data[j] = data[j+1]
				data[j+1] = tmp

myArray = [31, 2, 11, 23, 8, 7, 11, 14, 20]
print("original:", myArray)

myArray1 = myArray[:]
bubble_sort(myArray1)
print("sorted:", myArray1)

index = []
for i in range(len(myArray1)):
	for j in range(len(myArray)):
		if myArray1[i] == myArray[j]:
			index.append(j + 1)
			break
print("index:", index)

rank = []
for i in range(len(myArray)):
	for j in range(len(myArray1)):
		if myArray[i] == myArray1[j]:
			rank.append(j + 1)
			break
print("rank:", rank)
