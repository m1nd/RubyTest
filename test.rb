# class Point

# 	@@count = 0;

# 	def initialize(x, y)
# 		@x = x
# 		@y = y

# 		@@count += 1;
# 	end

# 	def x
# 		@x
# 	end

# 	def self.printCount()
# 		puts "count is #{@@count}"
# 	end

# 	def to_s
# 		"#{@x}:#{@y}"
# 	end


# end

# pt = Point.new(3, 4)
# pt2 = Point.new(0, 4)

# Point.printCount

# puts pt, pt2



# def fib(n)
# 	if n < 2
# 		n
# 	else
# 		fib(n-1) + fib(n-2)
# 	end
# end

# puts "#{fib(0)}"




class Point

  attr_accessor :x
  attr_accessor :y

	@@count = 0;

	def initialize(x, y)
		@x = x
		@y = y

		@@count += 1;
	end

	def -(point)
		@x = @x - point.x  
		@y = @y - point.y
		self
	end

	def +(point)
		@x = @x + point.x  
		@y = @y + point.y
		self
	end


	def ==(point)
		if @x == point.x && @y == point.y
		 	true
		 else
		 	false
		 end 
	end

	def isOrigin
		if @x == 0 && @y == 0
		 	true
		 else
		 	false
		 end 
	end

	def setOrigin
		@x = @y = 0
	end

	def self.printCount()
		puts "count is #{@@count}"
	end
end

pt = Point.new(4, 5)
pt2 = Point.new(2, 7)
pt3 = Point.new(4, 5)
pt4 = Point.new(0, 0)


resPoint = Point.new(3, 4)

resPoint = pt - pt2
puts "Result point = #{resPoint.x} : #{resPoint.y}"

resPoint = resPoint + pt2
puts "Result point = #{resPoint.x} : #{resPoint.y}"

eq = pt3 == pt
puts "Equal: #{eq}"

puts "Is this origin? #{pt4.isOrigin}"

puts "#{pt3.x} : #{pt3.y}"

pt3.setOrigin

puts "#{pt3.x} : #{pt3.y}"

# class Lift
  
#   attr_accessor :floor 	# На каком этаже лифт
#   attr_accessor :targetFoor

#   @@floorsCount = 10 	# Куда ехать


# 	def initialize(floor)
# 		self.floor = floor
# 		puts "Лифт готов"
# 	end

# 	def up
# 		i = self.floor
# 		until i > self.targetFoor do
# 			Kernel.sleep(1)
# 			puts "Едем вверх, этаж #{i}"
# 			i += 1
# 		end
# 		puts "Приехали!"
# 	end

# 	def down
# 		i = self.floor
# 		until i < self.targetFoor do
# 			Kernel.sleep(1)		
# 			puts "Едем вниз, этаж #{i}"
# 			i -= 1
# 		end
# 		puts "Приехали!"
# 	end


# 	def move(weight, target)
# 		if weight < 400 && target <= @@floorsCount && target > 0
# 			self.targetFoor = target
# 			if target > self.floor
# 					up()
# 				else 
# 					down()
# 			end

# 			else
# 				puts "Не корректные данные!"
# 		end
		
# 	end

# end


#  liftOne = Lift.new(6)
#  liftOne.move(350, 4)

