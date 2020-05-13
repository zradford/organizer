class Item < ApplicationRecord
   belongs_to :character
   validates_presence_of :name
   before_save :validate_currency if :currency.present?


   def validate_currency
      currency_list.include?(self.currency)
   end

   def currency_list
      [ 'Copper', 'Silver', 'Electrum', 'Gold', 'Platinum' ]
   end

   def price_and_currency
      "#{self.price} #{short_currency}"
   end
   
   def short_currency
      shortened_currency = {
         'Copper'=> 'cp', 
         'Silver'=> 'sp', 
         'Electrum'=> 'ep', 
         'Gold' => 'gp', 
         'Platinum' => 'pp'
      }
      shortened_currency[self.currency]
   end
end
