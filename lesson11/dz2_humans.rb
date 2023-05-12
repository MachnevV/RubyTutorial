# Подключаем класс Person из файла person.rb. Можно написать
#
# require "./person.rb"
#
# но лучше так
require_relative "person"

puts "У нас есть три человека:"

person1 = Person.new("Гаврила", "Петрович")
puts person1.full_name

person2 = Person.new("Фёдор", "Петрович")
puts person2.full_name

person3 = Person.new("Василий", "Алибабаевич")
puts person3.full_name