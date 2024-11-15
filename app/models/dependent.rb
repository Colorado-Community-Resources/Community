class Dependent < ApplicationRecord
    belongs_to :user,foreign_key: :user_id, primary_key: :username, optional: false
end
