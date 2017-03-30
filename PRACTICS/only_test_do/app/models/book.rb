class Book < ActiveRecord::Base
  attr_accessible :body, :page, :title

  private

  def some_def(y)
    puts 'hello'
  end
end
