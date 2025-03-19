hit=0
buy=[]
roto5=(1..20).to_a.sample(5)
5.times do
  while true
    print"1~20の中で好きな数を選んでください>>"
    # ユーザーが選んだ数を取得
    select_num = gets.chomp
    # 文字列を整数に変換して再び文字列に戻し、元の入力と一致するかをチェック
    if select_num.to_i.to_s != select_num
      # 整数以外（文字列や小数）が入力された場合
      puts "整数を入力してください"
      next # 再入力を促す
    else
      # 整数が入力された場合、整数に変換
      select_num=select_num.to_i
    end
    if select_num < 1 || select_num > 20
      puts"範囲内の数を入力してください"
      next
    else
      break
    end  
  end
  buy.push(select_num)
end
for i in 0..4
  if roto5.include? (buy[i])
    hit+=1
  end
end
puts"あなたが買った番号はこちらでした"
puts buy.join(", ")
puts"今回のあたり番号はこちらでした"
puts roto5.join(", ")
if hit==0
  puts"残念でした"
elsif hit==1
  puts"よかったやん（1個一致：約 44.0%）"
elsif hit==2
  puts"めでてーな(2個一致：約 29.3%)"
elsif hit==3
  puts"たいしたもんや(3個一致：約 6.77%)"
elsif hit==4
  puts"すげえやん(4個一致：約 0.484%)"
elsif hit==5
  puts"奇跡起きたな(5個一致：約 0.00645%)"
end
