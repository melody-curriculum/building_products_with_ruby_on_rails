class Book < ActiveRecord::Base
  belongs_to :author

  validates :pages, :title, :genre, presence: true
end
