require_relative 'model'

class Comments
  include Mongoid::Document

  field :comment,  type: String

  validates :comment, presence: true
  validates :comment, uniqueness: true
end

