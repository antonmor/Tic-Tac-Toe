class Tic

def self.init
  @tab = Array.new(3) { Array.new }
  @player = 1
  @win_p1 = [1,1,1]
  @win_p2 = [2,2,2]
end

def self.llenArr
  t = 3
  for i in (0...t)
    for j in (0...t)
      @tab[i][j] = -1
    end
  end
end

def self.is_number? string
  true if Integer(string) rescue false
end

def self.impArr
  for i in (0 ... @tab.size)
    if i == 0
          print "\t#{i}"
    else
          print "\s#{i}"      
    end
  end 
  print "\n"
  for i in (0...@tab.size)
    print "   #{i}   "
    for j in (0...@tab.size)
     case @tab[i][j]
      when -1 then print "█\s"
      when 1 then  print "X\s" 
      when 2 then  print "O\s" 
      end
    end
    print "\n"
  end
end

def self.instruc
  print "Introduce las coordenadas (x,y) ej. (0,0)\n"
  print "Es el turno del jugador #{@player}\s"
  print  "Para salir preciona la tecla 'x'  \n"
  op = gets.chomp
end

def self.win_row(x,y)
if (@tab[x] == @win_p1) == true
  puts "P1 es el vencedor...\n" 
elsif (@tab[x] == @win_p2) == true
  puts "P2 es el vencedor...\n" 
end
end

def self.win_col(x,y)
if (@tab.collect{|v| v[y]} == @win_p2)
  puts "P1 es el vencedor...\n" 
elsif (@tab.collect{|v| v[y]} == @win_p1)
  puts "P2 es el vencedor...\n" 
end
end

def self.win_dig(x,y)
if((0...3).collect {|v| @tab[v][v]} == @win_p1)
   puts "P1 es el vencedor...\n" 
  elsif ((0...3).collect {|v| @tab[v][v]} == @win_p2)
   puts "P2 es el vencedor...\n"   
end
end

def self.wind_diginv(x,y)
  if ((0...3).collect {|i| @tab[i][-i-1] } == @win_p1)
    puts "P1 es el vencedor...\n" 
  elsif ((0...3).collect {|i| @tab[i][-i-1] } == @win_p2)
    puts "P2 es el vencedor...\n"   
  end
end

def self.user(pos)
   x = pos[0].to_i
   y = pos[1].to_i
if @player == 1
     p = 1
     @player = 2
    else
     p = 2
     @player = 1
  end 
  @tab[x][y] = p

win_col(x,y)
win_row(x,y)
win_dig(x,y)
wind_diginv(x,y)

end

end

