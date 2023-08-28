class AnimalsRecord < ApplicationRecord
  self.abstract_class = true


  connects_to shards: {
    default: { writing: :cats, reading: :cats },
    cats: { writing: :cats, reading: :cats },
    dogs: { writing: :dogs, reading: :dogs }
  }
end
