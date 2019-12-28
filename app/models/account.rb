class Account < Applicationrecord
    
    belongs_to :user
    
    has_many :investments,
    dependent: :destroy
end