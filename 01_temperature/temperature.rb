# temperature conversion functions

def ftoc(f)
    c = (f - 32) * 5/9
    return c
end

def ctof(c)
    f = c * 1.8  + 32
    return f
end    
    
freezing_temperature1 = ftoc(32)
freezing_temperature2 = ctof(0)
puts freezing_temperature1,
     freezing_temperature2

boiling_temperature1 = ftoc(212)
boiling_temperature2 = ctof(100)
puts boiling_temperature1,
     boiling_temperature2

body_temperature1 = 98.6
body_temperature2 = 37
puts body_temperature1,
     body_temperature2

