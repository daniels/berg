module Persistence
  module Relations
    class Users < ROM::Relation[:sql]
      schema(:users) do
        attribute :id, Types::Serial
        attribute :email, Types::Strict::String
        attribute :name, Types::Strict::String
        attribute :encrypted_password, Types::Strict::String.optional
        attribute :active, Types::Strict::Bool
        attribute :access_token, Types::Strict::String
        attribute :access_token_expiration, Types::Strict::Time
      end

      def by_id(id)
        where(id: id)
      end

      def by_email(email)
        where(email: email)
      end

      def by_access_token(token)
        where(access_token: token)
      end

      def active
        where(active: true)
      end
    end
  end
end
