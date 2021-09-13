# a < b < c の条件を維持しながら a + b + c = 1000 なるピタゴラス数を順番に探していく

def sum_of_pythagoras(sum)
    a = 1; b, c = a+1, a+2
    limit = sum
    loop do
      if (a + b + c) == sum and pythagoras?(a, b, c)
        return a, b, c
      end
      c += 1
      if c > limit
        b += 1; c = b + 1
      end
      if b > limit/2
        a += 1; b = a + 1; c = b + 1
      end
      return nil if a > limit/3
    end
  end
  def pythagoras?(a, b, c)
    return true if (a ** 2 + b ** 2) == c ** 2
    false
  end
  t =  Time.now
  a, b, c = sum_of_pythagoras(1000)
  puts "#{a} * #{b} * #{c} = #{a*b*c}"
  puts Time.now - t 