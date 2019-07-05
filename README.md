## 모바일 티켓 발권기

__요구사항__

```
- 100 좌석 스탠딩 티켓 존재
- 최대 4장까지 예매가능

# 예매하기
- 예매 갯수 -> 휴대폰번호 입력 : 예매완료 
- 예매는 순서대로 가능
- 티켓이 없으면 "현재 예매 가능한 티켓이 없습니다"
- 예매가 4장 미만 남았을시 4장 이장 X -> 선택 불가능 안내 떠야함 

# 예매확인 
- 모바일 번호
- 휴대폰 뒷자리 입력
- 취소 , 출력 가능 


# 예매취소
예매확인 이후단계
- 취소 하면, 이전 내역 삭제, 예매 티켓 살아나야함 

# 예매 출력
예매 확인 이후 단계
- 출력 버튼 누르면, 출력완료
- 출력하면 예매 확인에서 확인 가능하나 취소버튼 보이면 x 
```

## Rspec 설치

```
gem install rspec
rspec --init
```

## 참고

```ruby
  describe "숫자를 입력받는다" do
    before do
      @TM = TicketMachine.get_number
    end
    # test 3
    it "숫자 입력" do
      puts "test 3"
      expect(@TM.nil?).to be == false
      expect(@TM.nil?).not_to be == true
    end
    # test 4
    it "숫자만 입력 받아야 한다" do
      puts "test4"
      expect(@TM.is_a? Integer).to be == true
      expect(@TM.is_a? Integer).not_to be == false
    end
  end
```