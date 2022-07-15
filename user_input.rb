require_relative('shape_calc.rb')

puts "Please choose the shape whose area you would like to calculate: circle, rectangle, triangle"
shape = gets.chomp.to_sym
shape_calc = ShapeCalc.new

if shape == :circle

    puts "Please enter the radius of the circle"

    radius = gets.chomp.to_f
        while shape_calc.check_positive(radius) == false do
        radius = gets.chomp.to_f
        end

    puts "The area of the circle is #{shape_calc.area(shape, radius)}"

elsif shape == :rectangle

    puts "Please enter the length of the rectangle"

    length = gets.chomp.to_f
        while shape_calc.check_positive(length) == false do
        length = gets.chomp.to_f
        end

    puts "Please enter the width of the rectangle"

    width = gets.chomp.to_f
        while shape_calc.check_positive(width) == false do
        width = gets.chomp.to_f
        end

    puts "The area of the rectangle is #{shape_calc.area(shape, length, width)}"

elsif shape == :triangle

    puts "Please enter the base of the triangle"

    base = gets.chomp.to_f
        while shape_calc.check_positive(base) == false do
        base = gets.chomp.to_f
        end

    puts "Please enter the height of the triangle"

    height = gets.chomp.to_f
        while shape_calc.check_positive(height) == false do
        height = gets.chomp.to_f
        end 
        
    puts "The area of the triangle is #{shape_calc.area(shape, base, height)}"
else
    puts "Invalid shape"
end