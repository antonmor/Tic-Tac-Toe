  require 'tic'
  d = Tic
  d.init
  d.llenArr
loop do
   d.impArr
   opc = d.instruc
   break if d.is_number? opc == false
   d.user(opc)

   break if opc == 'x'
end