#!/usr/bin/ruby
#wget -O - https://projecteuler.net/project/resources/p089_roman.txt
s=''
while gets do s<<$_ end
z=s.size
s.gsub!('IIIII','V')
s.gsub!('XXXXX','L')
s.gsub!('CCCCC','D')
s.gsub!('IIII','IV')
s.gsub!('XXXX','XL')
s.gsub!('CCCC','CD')
s.gsub!('VIV','IX')
s.gsub!('LXL','XC')
s.gsub!('DCD','CM')
p z-s.size