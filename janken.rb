def janken 
  puts "じゃんけん。。。。"
  puts "0 (グー)1 (チョキ)2 (パー)3 (戦わない)"
  puts "---------------"
  myhand = gets.to_i
  enemyhand = rand(0..2)
  puts "ホイ！"
  puts "---------------"
  hands = ["グー","チョキ","パー"]
  puts ["あなた：#{hands[myhand]}を出しました。"]
  puts ["相手は：#{hands[enemyhand]}を出しました。"]
  if myhand == enemyhand  #あいこの時
    puts "あいこで"
    return true
    elsif myhand == 0 && enemyhand == 1 || myhand == 1 && enemyhand == 2 || myhand == 2 && enemyhand == 0  #勝った時
      puts "WIN"
      puts "あっち向いて〜"
      puts"0 (↑) 1 (↓) 2 (←) 3 (→)"
      myfinger = gets.to_i
      enemyfinger = rand(0..3)
      puts "ホイ！"
      puts "---------------"
      fingers = ["↑","↓","←","→"]
      puts ["あなた：#{fingers[myfinger]}を出しました。"]
      puts ["相手は：#{fingers[enemyfinger]}を出しました。"]
        if myfinger == enemyfinger
          puts "勝利"
        elsif myfinger != enemyfinger
        return true
        end
    elsif myhand == 0 && enemyhand == 2 || myhand == 1 && enemyhand == 0 || myhand == 2 && enemyhand == 1  #負けた時
      puts "LOSE"
      puts "あっち向いて〜"
      puts"0 (↑) 1 (↓) 2 (←) 3 (→)"
      myfinger = gets.to_i
      enemyfinger = rand(0..3)
      puts "ホイ！"
      puts "---------------"
      fingers = ["↑","↓","←","→"]
      puts ["あなた：#{fingers[myfinger]}を出しました。"]
      puts ["相手は：#{fingers[enemyfinger]}を出しました。"]
        if myfinger == enemyfinger
          puts "負け"
          elsif myfinger != enemyfinger
          return true
        end
  end
end




aiko = true
while aiko
  aiko = janken
end
