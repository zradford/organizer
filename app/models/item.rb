class Item < ApplicationRecord
   validates_presence_of :name
   validates :currency,
    :inclusion  => { :in => [ 'Copper', 'Silver', 'Electrum', 'Gold', 'Platinum' ],
    :message    => "%{value} is not a valid currency" } if :currency

   def self.currency_list
      [ 'Copper', 'Silver', 'Electrum', 'Gold', 'Platinum' ]  
   end
end
