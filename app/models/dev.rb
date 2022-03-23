class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        # binding.pry
        find_freebie = self.freebies.find do |freebie|
            # binding.pry
            freebie.item_name == item_name
        end
        if (find_freebie != nil)
            "True"
        else "False"
        end
    end

    
    # def give_away(dev, freebie)
    #     if freebies.include? freebie
    #         freebie.dev = dev
    #         freebie.save 
    #     end
    # end
end
