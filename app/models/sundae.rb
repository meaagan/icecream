class Sundae < ApplicationRecord
    belongs_to :cone
    belongs_to :ice_cream_flavour
    belongs_to :ice_cream_type
    belongs_to :topping

    after_create_commit { broadcast_append_to "sundaes" }
end
