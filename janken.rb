def janken()
  puts "0(グー) / 1(チョキ) / 2(パー) / 3(じゃんけんしない)"
  user_hand = gets.chomp.to_i

  if user_hand == 3
    puts "じゃんけんをしません"
    exit
  elsif user_hand < 0 || user_hand > 3
    puts "０から３の値を入力してください"
    exit
  end

  puts "ホイ！！！"
  opp_hand = rand(0..2)

  hand = ["グー", "チョキ", "パー"]

  puts "あなたの手: #{hand[user_hand]}"
  puts "相手の手: #{hand[opp_hand]}"

  if user_hand == opp_hand
    puts "\n結果: あいこ"
    puts "------------------------------------------"
    puts "あいこで..."
    return true
  elsif user_hand == 0 && opp_hand == 1 || user_hand == 1 && opp_hand == 2 || user_hand == 2 && opp_hand == 0
    puts "\nこのまま勝てばあなたが勝てる...!"
    puts "------------------------------------------"
    $janken_result = "user_win"

    attimuite_hoi()
  else
    puts "\nこのまま負けるとあなたが負ける...!"
    puts "------------------------------------------"
    $janken_result = "user_lose"

    attimuite_hoi()
  end
end

def attimuite_hoi()
  puts "あっち向いて..."
  puts "0(上) / 1(右) / 2(下) / 3(左) / 4(あっち向いてホイをしない)"
  user_direction = gets.chomp.to_i

  if user_direction == 4
    puts "あっち向いてホイをしません"
    exit
  elsif user_direction < 0 || user_direction > 3
    puts "0から4の値を入力してください"
    exit
  end

  puts "ホイ！！！"
  opp_direction = rand(0..3)

  direction = ["上", "右", "下", "左"]

  puts "あなた: #{direction[user_direction]}"
  puts "相手:#{direction[opp_direction]}"

  if user_direction == opp_direction
    case $janken_result
    when "user_win"
      puts "\n結果 :あなたの勝ち"
    when "user_lose"
      puts "\n結果: あなたの負け"
    end
  else
    puts "結果: 勝敗付かず"
    puts "\nもう一度じゃんけんをします"
    puts "------------------------------------------"
    return true
  end
end



puts "じゃんけん..."

janken_result = true

while janken_result do
  janken_result = janken()
end


