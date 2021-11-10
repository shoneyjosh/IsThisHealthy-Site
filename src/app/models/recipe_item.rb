class RecipeItem < ApplicationRecord
    belongs_to :recipe
    belongs_to :food

    before_save :set_calories
    before_save :set_fat
    before_save :set_cholesterol
    before_save :set_sodium
    before_save :set_carbs
    before_save :set_sugar
    before_save :set_protein
    before_save :set_url
    
    def calories
        if persisted?
            self[:calories]
        else
            food.calories
        end
    end

    def fat
        if persisted?
            self[:fat]
        else
            food.fat
        end
    end

    def cholesterol
        if persisted?
            self[:cholesterol]
        else
            food.cholesterol
        end
    end

    def sodium
        if persisted?
            self[:sodium]
        else
            food.sodium
        end
    end

    def carbs
        if persisted?
            self[:carbs]
        else
            food.carbs
        end
    end

    def sugar
        if persisted?
            self[:sugar]
        else
            food.sugar
        end
    end

    def protein
        if persisted?
            self[:protein]
        else
            food.protein
        end
    end

    def url
        if persisted?
            self[:url]
        else
            food.url
        end
    end
    private

    def set_calories
        self[:calories] = calories
    end

    def set_fat
        self[:fat] = fat
    end

    def set_cholesterol
        self[:cholesterol] = cholesterol
    end

    def set_sodium
        self[:sodium] = sodium
    end

    def set_carbs
        self[:carbs] = carbs
    end

    def set_sugar
        self[:sugar] = sugar
    end

    def set_protein
        self[:protein] = protein
    end

    def set_url
        self[:url] = url
    end
end
