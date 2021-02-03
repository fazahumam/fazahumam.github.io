class Book < ApplicationRecord
    #belongs_to :author
    validates :title, presence: true
    validates :description, length: {minimum: 10}
    #validates :page, numericality: {greater_than_or_equal_to: 10}
    #validates :description, exclusion: {in: ['good', 'bad', 'the best']}
    #validates :price, format: {with: }
    #validates :title, uniqueness: {case_sensitive: false}
    #validate :custom_validation

    def custom_validation
        if page >= 150
            if price < 50000
                errors.add(:price, 'the price must greater than 50000 if the page more than 150 ')
            end
        end
    end

end




