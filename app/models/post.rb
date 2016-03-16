class Post < ActiveRecord::Base
  validates :text, length: { minimum: 5, maximum: 25 }
end
