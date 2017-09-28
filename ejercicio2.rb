module Formula
  attr_accessor :lado
# mixins para hacer composiciones
# si se pasan con include a un método hijo, quedan como métodos de instancia

  def perimeter

    if class.is_a? Cuadrado
      @lado * 4
    else 
      puts hola
    end

  def area
    if class.is_a? Cuadrado
    @lado * @lado
  else 
    puts hola
  end
end
end
end

class Rectangulo
  include Formula

  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def sides
    print "El rectángulo tiene largo #{@largo} y ancho #{@ancho}.", "\n"
  end
end

class Cuadrado
  include Formula

  def initialize(lado)
    @lado = lado
  end

  def sides
    print "El cuadrado tiene lados de medida #{@lado}.", "\n"
  end
end

c1 = Cuadrado.new(2)
puts c1.perimeter
