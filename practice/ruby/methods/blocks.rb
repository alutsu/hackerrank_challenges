def factorial(n)
  result = (1..n).reduce(1, :*)
  yield(result)
end

n = gets.to_i
factorial(n) do |result|
    puts result
end
