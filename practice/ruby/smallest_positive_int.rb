def solution(a)
  sort_array = a.select { |el| el >= 1 }.sort
  output = 1

  sort_array.each_with_index do |el, index|
    return output if output < el
    output = el + 1
  end
  output
end
