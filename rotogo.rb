# Roto5 クラスと Display モジュールを読み込む
require './rotogo_Roto5'
require './rotogo_Display'
require './rotogo_Display_prize'

# 複数回プレイできるよう変更
while true
# メソッドの戻り値を変数に格納
  roto5_numbers=Roto5.roto5
  buy_numbers=Roto5.buy
  hit=Roto5.hit(buy_numbers,roto5_numbers)

  # Display モジュールの show_result メソッドを呼び出す
  Display.show_result(buy_numbers, roto5_numbers, hit)
  # Display_Prize モジュールの show_prize メソッドを呼び出す
  Display_Prize.show_prize(hit)
  while true
    print "もう一度しますか？(y/n)>>"
    answer = gets.chomp
    unless answer == "y" || answer == "n"
      puts "yかnでお答えください"
      next
    else
      break
    end
  end
  if answer == "n"
    break
  end
end