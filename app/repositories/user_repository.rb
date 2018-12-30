module Repositories
  class User < Base
    def most_recent_by_name(name:, limit:)
      entity_dataset
        .where(name: name)
        .order(:created_at)
        .limit(limit)
    end

    private

    def entity
      User
    end
  end
end
