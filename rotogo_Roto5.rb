class Roto5
  def self.roto5
    return (1..20).to_a.sample(5)
  end

  def self.buy
    buy=[]
    while buy.size<5
      print"1~20の中で好きな数を選んでください>>"
      # ユーザーが選んだ数を取得
      begin
        select_num = Integer(gets.chomp)
        # 整数が1~20の範囲内か？unlessを使うことで範囲外であるかを確認
        raise "範囲内の数を入力してください" unless (1..20).include?(select_num)
        # 重複していないか
        raise "重複してますよ。もったいない" if buy.include? (select_num)
      # 整数が入力されたか
      rescue ArgumentError
        puts "整数を入力してください"
        next
      rescue => e
        puts e.message
        next
      end
      buy<<select_num
    end
    return buy
  end

  def self.hit(buy,roto5)
    # 買った番号と当選番号の積集合の要素数を取得し、当たりの数とする 
    return (buy & roto5).size
  end
end