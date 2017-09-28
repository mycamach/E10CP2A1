module Formula
  # se usan  para hacer composiciones

  def perimeter
    case self
    # este case equivale a self.class (pero se pone solo con self en Ruby)
    when Rectangulo
      perimeter = 2 * (@largo + @ancho)
      "El perímetro del rectángulo es #{perimeter}.\n"
    when Cuadrado
      perimeter = @lado * 4
      "El perímetro del cuadrado es #{perimeter}.\n"
    end
  end

  def area
    case self
    when Rectangulo
      area = @largo * @ancho
      "El área del rectángulo es #{area}.\n"
    
    when Cuadrado
      area = @lado * @lado
      "El área del cuadrado es #{area}.\n"
    end
  end
end

class Rectangulo
  attr_reader :largo, :ancho
  include Formula

  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def sides
    print "El rectángulo tiene largo #{@largo} y ancho #{@ancho}.\n"
  end
end

class Cuadrado
  attr_reader :lado
  include Formula

  def initialize(lado)
    @lado = lado
  end

  def sides
    print "El cuadrado tiene lados de medida #{@lado}.\n"
  end
end

c1 = Cuadrado.new(2)
print c1.sides
print c1.perimeter
print c1.area

r1 = Rectangulo.new(10, 4)
print r1.sides
print r1.perimeter
print r1.area
=begin cuando c1 llama a perimeter, el self del método devuelve
la clase de c1 (o sea, Cuadrado)
=end
