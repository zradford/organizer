class Character < ApplicationRecord
   belongs_to :user
   has_many :items
   validates_presence_of :name
   before_validation :set_defaults, on: :create
   accepts_nested_attributes_for :items

   def self.modifier(ability_score)
      return 
   end

   ABILITY_SCORES = [:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma]

   ABILITY_SCORES.each do |m|
      define_method :"#{m}_modifier" do
         return ((self.send(:"#{m}") - 10) / 2)
      end
      define_method :"#{m}_short_name" do
         name = m.to_s
         return name.first(3)
      end  
   end

   private
      def set_defaults
         self.level = 1 if level.blank?
      end
end
