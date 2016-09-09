require "types"

module Main
  module Entities
    class Person < Dry::Struct
      attribute :id, Types::Strict::Int
      attribute :name, Types::Strict::String
      attribute :bio, Types::Strict::String
      attribute :short_bio, Types::Strict::String
      attribute :avatar_image, Types::Hash
      attribute :job_title, Types::Strict::String.optional
      attribute :twitter_handle, Types::Strict::String.optional
      attribute :website_url, Types::Strict::String.optional
      attribute :city, Types::Strict::String
    end
  end
end
