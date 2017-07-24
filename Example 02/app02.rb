# заполнение письма по заданному бланку из файла blank.txt

# задаем данные для заполнения
given = 'Tom'
family = 'Cruise'
wunderprize = '100% genuine faux diamond'

# открываем файлы бланка для чтения и письма для записи
input_file = File.open('blank.txt', 'r')
output_file = File.new('letter.txt', 'w')

# читаем построчно файл бланка и совершаем подстановки
input_file.readlines.each do |line|
  output_file << line .gsub(/=FIRST=/, given)
                      .gsub(/=FAMILY=/, family)
                      .gsub(/=SUCKER=/, "#{given} #{family}")
                      .gsub(/=TRINKET=/, "fabulous #{wunderprize}")
end

# закрываем файлы
input_file.close
output_file.close
