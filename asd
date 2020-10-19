def BSA(arr, element):
    low = 0
    high = len(arr) - 1

    while high >= low:

        mid = (high + low) // 2
        if arr[mid] < element:
            low = mid + 1

        elif arr[mid] > element:
            low = mid - 1

        else:
            return mid

    return -1

arr = [2, 3, 4, 10, 40]
element = 10

result = BSA(arr, element)

if result != -1:
    print('The element is found at index ' + str(result))

else:
    print('The element is not found in the given array')
