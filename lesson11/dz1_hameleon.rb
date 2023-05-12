# Подключаем класс Camelero из файла cameleo.rb. Можно написать
#
# require "./cameleo.rb"
#
# но лучше так
require_relative "cameleo"

cameleo = Cameleo.new

cameleo.change_color("красный")

sleep 1

cameleo.change_color("синий")

sleep 1

cameleo.change_color("фиолетовый в краминку")