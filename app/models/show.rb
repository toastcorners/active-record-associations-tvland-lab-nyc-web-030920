class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
    belongs_to :network

    def actors_list
    self.actors.all.map do |actors|
        "#{actors.first_name} #{actors.last_name}"
    end
    end


end