#1.soru
def flatten_list(lst):
    flattened = []
    for item in lst:
        if isinstance(item, list):
            flattened.extend(flatten_list(item))
        else:
            flattened.append(item)
    return flattened

# Örnek kullanım:
input_list = [[1,'a',['cat'],2],[[[3]],'dog'],4,5]
output_list = flatten_list(input_list)
print(output_list)


#2.soru
def sorted_reverse(liste):
    for i in liste:
        if isinstance(i, list):
            i.reverse()  # İç içe geçmiş listelerin içindeki listeleri tersten sırala
            sorted_reverse(i)  # İç içe geçmiş listelerin içindeki listeleri tekrar işle
    liste.reverse()  # Dış listeyi tersten sırala

# Örnek kullanım:
liste = [[1, 2, 3], [4, 5], [6, [7, 8]]]
sorted_reverse(liste)
print(liste)