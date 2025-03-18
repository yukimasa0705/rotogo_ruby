roto5=(1..20).to_a.sample(5)
print"1~20の中で好きな数を選んでください>>"
select_num=gets.to_i 
if roto5.include? select_num
  puts"あたり"
else
  puts"はずれ"
end
puts"今回のあたり番号はこちらでした"
puts roto5.join(",")