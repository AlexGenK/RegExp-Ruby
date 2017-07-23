# преобразование температур из C в F и обратно

loop do
  print 'Enter a temperature (e.q., 32F, 100C): '
  temperature = gets.chomp

  # проверяем, явлется ли введенное значение температурой
  if temperature =~ /^([+-]?[0-9]+(?:\.[0-9]*)?)\s*([CF])$/i

    # если да, то запоминаем значение градусов и систему измерения
    degrees = Regexp.last_match[1]
    type = Regexp.last_match[2]

    # переводим температуру из C в F и обратно
    if type =~ /c/i
      celsium = degrees.to_f
      fahrenheit = (celsium * 9 / 5) + 32
    else
      fahrenheit = degrees.to_f
      celsium = (fahrenheit - 32) * 5 / 9
    end

    # выводим температуру
    puts "#{format('%.2f', celsium)} C is #{format('%.2f', fahrenheit)} F"
  else

    # или предупреждающее сообщение о нераспознанном вводе
    puts 'Expecting a number followed by "C" or "F",'
    puts "so I don`t understand #{temperature}"
  end

  puts '-' * 50
end
