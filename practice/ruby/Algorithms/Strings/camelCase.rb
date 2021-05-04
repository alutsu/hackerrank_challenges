def camelcase(s)
  words = s.split(/(?<=[a-zA-Z])(?=[A-Z])/)
  words.size
end
