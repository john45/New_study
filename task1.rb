# adittion class string
# master branch
class String
  def valid?
    stack = []
    skobki = { '{' => '}', '[' => ']', '(' => ')', '<' => '>' }
    self.each_char do |char|
      stack << char if skobki.key?(char)
      return false if skobki.key(char) && skobki.key(char) != stack.pop
    end
    stack.empty?
  end
end
