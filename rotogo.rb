# Roto5 クラスと Display モジュールを読み込む
require './rotogo_Roto5'
require './rotogo_Display'
require './rotogo_DisplayPrize'
require './rotogo_VirtualCurrency'

# 複数回プレイできるよう変更
loop do
  pur = VirtualCurrency.purchase  # ← ここで `pur` を取得！
# メソッドの戻り値を変数に格納
  roto5_numbers=Roto5.roto5
  buy_numbers=Roto5.buy
  hit=Roto5.hit(buy_numbers,roto5_numbers)

  # Display モジュールの show_result メソッドを呼び出す
  Display.show_result(buy_numbers, roto5_numbers, hit)
  # DisplayPrize モジュールの show_prize メソッドを呼び出す
  DisplayPrize.show_prize(hit,pur)
  
  answer = ""  # 変数をループの外で定義

  loop do
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