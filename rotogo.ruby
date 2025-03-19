hit=0
buy=[]
roto5=(1..20).to_a.sample(5)
5.times do
  print"1~20の中で好きな数を選んでください>>"
  select_num=gets.to_i
  buy.append(select_num)
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