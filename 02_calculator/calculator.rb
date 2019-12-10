# Calculator

def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(arr)
    arr.inject(0, &:+)
end

def multiply1(a, b)
    a * b
end

def multiply2(*numbers)
    # numbers.reduce(:*)
    result = 1
    numbers.each { |n| result = result * n }
    result
end

def power(a, b)
    a ** b
end

def factorial(n)
    if n < 0
        return nil
    elsif n == 0
        return 1
    else
        result = 1
        while n > 0
            result *= n
            n -= 1
        end
    return result
    end
end