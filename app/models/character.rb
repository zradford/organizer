class Character < ApplicationRecord
   belongs_to :user
   has_many :items
   validates_presence_of :name
   before_validation :set_defaults, on: :create

   def self.modifier(ability_score)
      return 
   end

   ABILITY_SCORE = [:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma]

   ABILITY_SCORE.each do |m|
      define_method :"#{m}_modifier" do
         return ((self.send(:"#{m}") - 10) / 2)
      end
   end

   private
      def set_defaults
         self.level = 1 if level.blank?
      end
end
