class Character < ApplicationRecord
   belongs_to :user
   validates_presence_of :name
   before_validation :set_defaults, on: :create

   private
      def set_defaults
         self.level = 1 if level.blank?
      end
end
