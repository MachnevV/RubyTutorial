# Основной класс игры Game. Хранит состояние игры и предоставляет функции для
# развития игры (ввод новых букв, подсчет кол-ва ошибок и т. п.).
class Game
  # Конструктор — вызывается всегда при создании объекта данного класса имеет
  # один параметр, в него нужно передавать при создании строку к загаданнмы
  # словом. Например, game = Game.new('молоко').
    def initialize(slovo)
    # Инициализируем переменные экземпляра. В @letters будет лежать массив букв
    # загаданного слова. Для того, чтобы его создать, вызываем метод get_letters
    # этого же класса.
        @letters = get_letters(slovo)
        @errors = 0
        @good_letters = []
        @bad_letters = []
        @status = 0
    end

    # Метод, который возвращает массив букв загаданного слова
    def get_letters(slovo)
        if slovo == nil || slovo == ''
          abort "Вы не ввели слово для игры"
        end

        return slovo.encode('UTF-8').split('')
    end

    # 1. спросить букву в консоли
    # 2. проверить результат
    def ask_next_letter
        puts "\n Ввудите следующую букву"

        letter = ""

        while letter == ""
            letter = STDIN.gets.encode("UTF-8").chomp
        end

        # После получения ввода, передаем управление в основной метод игры
        next_step(letter)
    end

    # Метод next_step должен проверить наличие буквы в загаданном слове 
    # Или среди уде названных букв (массивы @good_letters, @bad_latters)
    # Аналог метода check_result в первой версии "Виселицы"
    def next_step(bukva)
        if @status == -1 || @status == 1
            return
        end
        
        if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
          return 
        end
          
        if @letters.include?(bukva)
          # Если в слове есть буква запишем её в число "правильных"
          @good_letters << bukva

          # Дополнительная проверка — угадано ли на этой букве все слово целиком.
          # Если да — меняем значение переменной @status на 1 — победа.
          if @good_letters.uniq.sort == @letters.uniq.sort
            @status = 1
          end

        else
          # Если в слове нет введенной буквы — добавляем эту букву в массив
          # «плохих» букв и увеличиваем счетчик ошибок.
          @bad_latters << bukva
          @errors += 1

          # Если ошибок больше 7 — статус игры меняем на -1, проигрыш.
          if @errors >= 7
            @status = -1
          end
        end
    end

    # Методы, так называемые accessors или геттеры. Смысл каждого метода — только
    # предоставить доступ к внутренним переменным экземпляра класса. Без таких
    # методов, например к @letters, @errors нет доступа ни у кого, кроме самого
    # объекта данного класса
    def letters
      return @letters #фишка в руби можно без return
    end

    def good_letters
      @good_letters
    end

    def bad_latters
      @bad_latters
    end

    def status
      @status
    end

    def errors
      @errors
    end
end