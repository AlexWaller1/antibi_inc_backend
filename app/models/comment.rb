class Comment < ActiveRecord::Base
    validates :report, presence: :true
    belongs_to :hybrid
end