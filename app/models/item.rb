class Item < ApplicationRecord
   validates_presence_of :name
   validates :currency,
    :inclusion  => { :in => [ '','Copper', 'Silver', 'Electrum', 'Gold', 'Platinum' ],
    :message    => "%{value} is not a valid currency" } if :currency.present?

   def self.currency_list
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
