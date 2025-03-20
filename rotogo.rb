# Roto5 クラスと Display モジュールを読み込む
require './rotogo_Roto5'
require './rotogo_Display'

# メソッドの戻り値を変数に格納
roto5_numbers=Roto5.roto5
buy_numbers=Roto5.buy
hit=Roto5.hit(buy_numbers,roto5_numbers)

# Display モジュールの show_result メソッドを呼び出す
Display.show_result(buy_numbers, roto5_numbers, hit)