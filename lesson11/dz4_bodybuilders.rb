# Подключаем класс Bodybuilder из файла bodybuilder.rb
require_relative "bodybuilder"

# Создаем трех качков
bodybuilder1 = Bodybuilder.new
bodybuilder2 = Bodybuilder.new
bodybuilder3 = Bodybuilder.new

# Качаем первому трицепс 3 раза. Для этого воспользуемся методом .times у целого
# числа. Посмотрите, как он работает:
# https://ruby-doc.org/core-2.4.0/Integer.html#method-i-times
3.times do 
    bodybuilder1.pump("triceps")
end
# Качаем первому бицепс 8 раз.
8.times do 
    bodybuilder1.pump("biceps")
end
# Качаем первому спину 5 раз. и так далее
5.times do 
    bodybuilder1.pump("spina")
end

6.times do 
    bodybuilder2.pump("triceps")
end
2.times do 
    bodybuilder2.pump("biceps")
end
8.times do 
    bodybuilder2.pump("spina")
end

1.times do 
    bodybuilder3.pump("triceps")
end
9.times do 
    bodybuilder3.pump("biceps")
end
4.times do 
    bodybuilder3.pump("spina")
end

# Теперь выводим их на подиум и смотрим что они там понакачали :)
puts "Первый бодибилдер:"
bodybuilder1.show_muscles
puts
puts "Второй бодибилдер:"
bodybuilder2.show_muscles
puts
puts "Третий бодибилдер:"
bodybuilder3.show_muscles

puts bodybuilder1.class.name 