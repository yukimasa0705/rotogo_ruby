# 結果を表示するモジュールを定義  
module Display
  def self.show_result(buy_numbers,roto5_numbers,hit)
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
  end
end