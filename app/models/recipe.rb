class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :body

  referenced_in :user

end

