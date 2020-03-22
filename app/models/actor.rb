class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{first_name}" + " " + "#{last_name}"
    end
  
    def list_roles
        newarr = []
        self.characters.all.map do |chars|
            newarr << "#{chars.name} - #{chars.show.name}" 
    end
    newarr
end


end