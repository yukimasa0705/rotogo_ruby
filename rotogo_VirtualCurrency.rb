# 仮想通貨を使うためのクラスを定義
class VirtualCurrency
  @@poss=1000 # クラス変数として定義
  
  # 所持金のゲッター
  def self.poss
    @@poss
  end

  # 購入メソッド
  def self.purchase
    loop do
      print"いくら購入しますか？>>"
      begin
        pur=Integer(gets.chomp)
        # 1円以上の購入を促す
      raise"自然数を書いてください" if pur<1
      raise"所持金が足りません" if pur>@@poss
        return pur
      rescue ArgumentError
        # 文字、小数を書いた場合のエラー処理
        puts"整数を入力してください"
      rescue => e
        puts e.message 
      end
    end
  end
end