# 仮想通貨を使うためのクラスを定義
class VirtualCurrency
  @@poss=1000 # クラス変数として定義
  
  # 所持金のゲッター
  def self.poss
    @@poss
  end

  # セッターを追加
  def self.poss=(value)
    @@poss = value
  end

  # 購入メソッド
  def self.purchase
    loop do
      if @@poss <= 0  # 所持金がゼロかそれ以下ならゲーム終了
        puts "所持金がなくなったので、ゲームを終了します。"
        exit  # ゲーム終了
      end
      puts "現在の所持金は #{@@poss} hanyです。"  # 現在の所持金を表示
      print"いくら購入しますか？>>"
      begin
        pur=Integer(gets.chomp)
        # 1円以上の購入を促す
      raise"自然数を書いてください" if pur<1
      raise"所持金が足りません" if pur>@@poss
      @@poss -= pur  # 購入後に所持金を減らす
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