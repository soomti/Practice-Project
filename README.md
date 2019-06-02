## Explain about Objects
  - user : 자판기를 이용하는 사람 갹채
    - amount : Integer
    - drinks : [Drink, Drink ... ]
  - vending_machine : 자판기 객체
    - drinks : { String : [Drink, Drink, Drink], ... }
    - deposit : Integer
  - money : 화폐 객체
    - value : Integer (by ENUM)
  - drink : 음료수 객체
    - name : String
    - price : Integer

## Ruby Test Case


### Test1 - 음료수 뽑기 케이스 (큰 틀)

    1. 돈을 넣는다.
    2. 음료수를 선택할 수 있다.
    3. 음료수를 선택한다.
    4. 음료수가 나온다.
    5. 잔돈을 반환한다.

