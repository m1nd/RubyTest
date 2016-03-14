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

# 	def y
# 		@y
# 	end	

# 	def -(x1, y1)
# 		x-x1 
# 		y-y1
# 	end

# 	def self.printCount()
# 		puts "count is #{@@count}"
# 	end
# end

# pt = Point.new(4, 5)
# pt2 = Point.new(2, 7)

# pt.-(2,2)

# p "#{pt.x} : #{pt.y}"




class Lift
  
  attr_accessor :floor 	# На каком этаже лифт
  attr_accessor :targetFoor

  @@floorsCount = 10 	# Куда ехать

  	# def initialize
  	# 	self.floor = 0
  	# end

	def initialize(floor)
		self.floor = floor
		puts "Лифт готов"
	end

	def up
		i = self.floor
		until i > self.targetFoor do
			Kernel.sleep(1)
			puts "Едем вверх, этаж #{i}"
			i += 1
		end
		puts "Приехали!"
	end

	def down
		i = self.floor
		until i < self.targetFoor do
			Kernel.sleep(1)		
			puts "Едем вниз, этаж #{i}"
			i -= 1
		end
		puts "Приехали!"
	end


	def move(weight, target)
		if weight < 400 && target <= @@floorsCount && target > 0
			self.targetFoor = target
			if target > self.floor
					up()
				else 
					down()
			end

			else
				puts "Не корректные данные!"
		end
		
	end

end


 liftOne = Lift.new(3)
 liftOne.move(350, 1)

 # liftTwo = Lift.new
 # puts liftTwo.floor
 # liftTwo.move(350, 6)