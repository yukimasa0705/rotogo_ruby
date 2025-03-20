#賞金を表示するモジュールを定義
module Display_Prize
  #hitに応じた賞金額を表示するメソッド
  def self.show_prize(hit)
    case hit
    when 0 then mag=0
    when 1 then mag=2
    when 2 then mag=3
    when 3 then mag=15
    when 4 then mag=200
    when 5 then mag=15000
    end
    puts"賞金額は#{mag*100}hanyです。"
    puts"なお。賞金額は100hany(hanyは仮想通貨の単位)に"
    puts"当たった数に基づいた倍率を掛けて計算しています"
  end
end