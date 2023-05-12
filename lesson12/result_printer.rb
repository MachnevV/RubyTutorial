# Класс ResultPrinter занимается выводом на экран состояния и результата игры.
class ResultPrinter
    # Обратите внимание, что конструктора у класса ResultPrinter нет, т.к. он
    # не хранит внутри себя никакого состояния. Все необходимые данные этому
    # методу будут переданы в качестве параметров.
    #
    # Основной метод, печатающий состояния объекта класса Game, который нужно
    # передать ему в качестве параметра.
    def print_status(game)
        # Перед каждым выводом статуса очищаем экран методом cls
        cls
        # Выводим на экран слово с подчеркиваниями методом get_work_for_print
        puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
        
        # Выводим текущее количество ошибок и все «промахи»
        puts "Ошибки: #{game.bad_letters.join(', ').to_s}"
        
      
        if game.status = -1
          puts 'Вы проиграли :('
          puts "Загаданное слов было: #{game.letters.join("")}"
        else
          if game.status == 1
            puts "Поздравляем, вы выиграли!\n\n"
          else
            puts 'У вас осталось попыток: ' + (7 - game.errors).to_s
          end
        end
    end
    
    def get_word_for_print(letters, good_letters)
        result = ''
      
        for item in letters do
          if good_letters.include?(item)
            result += item + ' '
          else
            result += '__ '
          end
        end
      
        return result
    end

    def cls
        system('cls') || system('clear')
    end
end