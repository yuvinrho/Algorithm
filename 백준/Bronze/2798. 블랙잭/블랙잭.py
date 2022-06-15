from itertools import combinations

cardNumber, maxNumber = map(int, input().split())
cardList = list(map(int, input().split()))
sumOfCards = 0

for cards in combinations(cardList, 3):    
    if sum(cards) > maxNumber:
        continue
    else:
        sumOfCards = max(sumOfCards, sum(cards))
print(sumOfCards)