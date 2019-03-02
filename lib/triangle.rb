class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 
  
  def kind
     if  (side1 * side2 * side3) == 0 || (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side1 == side3) <= side3
     
      begin 
        raise TriangleError 
        puts error.message
      end 
     

     elsif side1 == side2 && side1 == side3
      return :equilateral 
      
      
     elsif side1 == side2 || side1 == side3 || side2 == side3 
      return :isosceles 
      
    else
      return :scalene 
    end 
  end 
  
  class TriangleError < StandardError
    def message 
      puts "not a triangle"
    end 
  end
end 

 
