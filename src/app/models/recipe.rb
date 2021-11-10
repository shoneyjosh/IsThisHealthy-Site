class Recipe < ApplicationRecord
    has_many :recipe_items
    before_save :set_calTotal
    before_save :set_cholTotal
    before_save :set_sodiumTotal
    before_save :set_carbsTotal
    before_save :set_sugarTotal
    before_save :set_proteinTotal
    
    def calTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.calories * recipe_item.quantity : 0}.sum
    end

    def cholTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.cholesterol * recipe_item.quantity : 0}.sum
    end

    def sodiumTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.sodium * recipe_item.quantity : 0}.sum
    end

    def carbsTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.carbs * recipe_item.quantity : 0}.sum
    end

    def sugarTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.sugar * recipe_item.quantity : 0}.sum
    end

    def proteinTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.protein * recipe_item.quantity : 0}.sum
    end

    def fatTotal
        recipe_items.collect{|recipe_item| recipe_item.valid? ? recipe_item.fat* recipe_item.quantity : 0}.sum
    end
    private

    def set_calTotal
        self[:calTotal] = calTotal
    end

    def set_cholTotal
        self[:cholTotal] = cholTotal
    end

    def set_sodiumTotal
        self[:sodiumTotal] = sodiumTotal
    end

    def set_carbsTotal
        self[:carbsTotal] = carbsTotal
    end

    def set_sugarTotal
        self[:sugarTotal] = sugarTotal
    end

    def set_proteinTotal
        self[:proteinTotal] = proteinTotal
    end

    def set_fatTotal
        self[:fatTotal] = fatTotal
    end

end
