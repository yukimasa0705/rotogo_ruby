def roto5
  return (1..20).to_a.sample(5)
end

def buy
  buy=[]
  while buy.size<5
    print"1~20の中で好きな数を選んでください>>"
    # ユーザーが選んだ数を取得
    begin
      select_num = Integer(gets.chomp)
      # 整数が1~20の範囲内か？unlessを使うことで範囲外であるかを確認
      raise "範囲内の数を入力してください" unless (1..20).include?(select_num)
      # 重複していないか
      raise "重複してますよ。もったいない" if buy.include? (select_num)
    # 整数が入力されたか
    rescue ArgumentError
      puts "整数を入力してください"
      next
    rescue => e
      puts e.message
      next
    end
    buy<<select_num
  end
  return buy
end

def hit(buy,roto5)
  # 買った番号と当選番号の積集合の要素数を取得し、当たりの数とする 
  return (buy & roto5).size
end

# メソッドの戻り値を変数に格納
roto5_numbers=roto5()
buy_numbers=buy()
hit=hit(buy_numbers,roto5_numbers)

puts"あなたが買った番号はこちらでした"
puts buy_numbers.join(", ")
puts"今回のあたり番号はこちらでした"
puts roto5_numbers.join(", ")

# hitに応じて結果を表示する部分をcase文で整理
case hit
when 0
  puts"残念でした"
# thenを使いワンライナー化
when 1 then puts"よかったやん（1個一致：約 44.0%）"
when 2 then puts"めでてーな(2個一致：約 29.3%)"
when 3 then puts"たいしたもんや(3個一致：約 6.77%)"
when 4 then puts"すげえやん(4個一致：約 0.484%)"
when 5 then puts"奇跡起きたな(5個一致：約 0.00645%)"
end
  