# Подключаем класс Person из файла person.rb. Можно написать
#
# require "./person.rb"
#
# но лучше так
require_relative "person2"

young_person = Person.new("Сергей", "Петрович", 41)

old_person = Person.new("Константин", "Львович", 61)

puts "У нас есть два человека:"

# Вызываем у объектов класса Person по очереди все их методы: full_name, age,
# и old? и выводим на экран информацию на основе того, что получили.
puts young_person.full_name
puts "И ему #{young_person.age} — #{young_person.old? ? 'пожилой' : 'молодой'}"

puts old_person.full_name
puts "И ему #{old_person.age} — #{young_person.old? ? 'пожилой' : 'молодой'}"