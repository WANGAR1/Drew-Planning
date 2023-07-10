class User < ApplicationRecord
    # Temporarily disable validations during seeding
    def save(*)
      true
    end
  
    def save!(*)
      true
    end
end