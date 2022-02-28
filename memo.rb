require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
memo_type = gets.to_s.chomp
 
#続きを書いていきましょう！！(ifで条件分岐)
if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  
  file_name = gets.to_s.chomp
  
  puts "メモしたい内容を入力してください"
  puts "完了したらCtrl + Dを押してください"
  
  memo_content = STDIN.read
  
  CSV.open(file_name+".csv", "w") do |csv|
    csv << [memo_content]
  end
  
  puts "新規作成完了しました"
  
else
  puts "拡張子を除いた既存のファイルを入力してください"
  
  file_name = gets.to_s.chomp
  
  puts "追加したい内容を入力してください"
  puts "完了したらCtrl + Dを押してください"
  
  memo_edit = STDIN.read
  
  CSV.open(file_name+".csv", "a") do |csv|
    csv << [memo_edit]
  end
  
  puts "追加完了しました"
  
end