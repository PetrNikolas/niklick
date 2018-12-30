module Repositories
  class RecordNotFoundError < StandardError; end

  class Base
    def all
      entity_dataset
    end

    delegate :first, to: :entity_dataset

    delegate :last, to: :entity_dataset

    def find(id)
      entity_dataset.find(id)
    rescue ActiveRecord::RecordNotFound => e
      raise RecordNotFoundError, e
    end

    def create(_attributes)
      entity.create(**attributues)
    end

    def update(id:, attributes:)
      find(id).update(**attributes)
    end

    def destroy(id)
      find(id).destroy
    end

    private

    def entity
      raise NotImplementedError
    end

    def entity_dataset
      entity.all
    end
  end
end
