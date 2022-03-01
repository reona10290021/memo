def main
  while !GameDecided()
  end
end

def GameDecided
  jankenResult = JankenResult()
  
  if jankenResult == 2
    puts "あいこで、、、"
    return false
  end
  
  if !DirectionGame()
    puts "もう一度じゃんけん！"
    return false
  end
  
  if jankenResult == 1
    puts "勝利です！おめでとう！！"
  else
    puts "残念、、、負けです"
  end
  return true
end

def JankenResult
  puts "じゃんけん、、、"
  rsp = ["グー","チョキ","パー"]
  puts "0:グー、１：チョキ、２：パー、３：戦わない"
  
  user_choice = gets.chomp.to_i
  program_choice = rand(3)
  
  if user_choice == 3
    puts "終了します"
    exit
  elsif user_choice<0 || user_choice>3
    puts "適切な数字を入力してください"
  end
  
  ShowChoiceInfo(rsp[user_choice],rsp[program_choice])
  
  result = 0
  if user_choice == program_choice
    result = 2
  elsif (user_choice == 0 && program_choice == 1) || (user_choice == 1 && program_choice == 2) || (user_choice == 2 && program_choice == 0) 
    result = 1
  end
  return result
end


def ShowChoiceInfo(userChoiceString,programChoiceString)
  puts "ホイ！！"
  puts "-------------------"
  
  puts "あなた：#{userChoiceString}を出しました"
  puts "相手：#{programChoiceString}を出しました"
  
  puts "-------------------"
end


def DirectionGame
  direction = ["上","下","左","右"]
  
  puts "あっち向いて、、、"
  puts "0:上、１：下、２：左、３：右"
  
  user_direction = gets.chomp.to_i
  program_direction = rand(4)
  
  ShowChoiceInfo(direction[user_direction],direction[program_direction])
  
  return (user_direction == program_direction)
end

main()