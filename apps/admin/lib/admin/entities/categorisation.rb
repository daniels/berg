require "types"

module Admin
  module Entities
    class Categorisation < Dry::Struct
      attribute :id, Types::Strict::Int
      attribute :post_id, Types::Strict::Int
      attribute :category_id, Types::Strict::Int
    end
  end
end
