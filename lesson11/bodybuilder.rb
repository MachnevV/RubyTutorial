class Bodybuilder
    # В конструкторе создаем три группы мышц
    def initialize
        @triceps = 0
        @biceps = 0
        @spina = 0
    end

    # Увеличиваем мышцы в зависимости типа мышцы (параметр muscle, который
    # передали в этот метод в качестве аргумента)
    def pump(muscle)
        case muscle
        when "triceps"
            @triceps += 1
        when "biceps"
            @biceps += 1
        when "spina"
            @spina += 1
        end
    end

    # Метод show_muscles выводит на экран текущий статус мышц
    def show_muscles
        puts "Трицепсы: #{@triceps} \nБицепсы: #{@biceps}\nСпина: #{@spina}"
    end
end