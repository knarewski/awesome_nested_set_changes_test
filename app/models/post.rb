class Post < ActiveRecord::Base
  acts_as_nested_set
  after_save :print_changes

  private

  def print_changes
    puts "Changes:"
    p changes
  end
end
