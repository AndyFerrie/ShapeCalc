class ShapeCalc 

    def area(shape, *args)
        case shape
        when :circle
            Math::PI * args[0] ** 2
        when :rectangle
            args[0] * args[1]
        when :triangle
            args[0] * args[1] / 2
        end
    end

    def check_shape(shape)
        puts "Invalid shape" unless [:circle, :rectangle, :triangle].include?(shape)
    end

    def check_positive(input)
        if input > 0
            input
        else
            puts "Please enter a positive number"
            false
        end
    end

end