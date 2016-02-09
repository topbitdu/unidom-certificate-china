# Identity Card 是中国身份证。

class Unidom::Certificate::China::IdentityCard < ActiveRecord::Base

  self.table_name = 'unidom_china_identity_cards'

  validates :name,                   presence: true, length: { in: 2..self.columns_hash['name'].limit                   }
  validates :address,                presence: true, length: { in: 2..self.columns_hash['address'].limit                }
  validates :identification_number,  presence: true, length: { is: self.columns_hash['identification_number'].limit     }
  validates :issuing_authority_name, presence: true, length: { in: 2..self.columns_hash['issuing_authority_name'].limit }

  has_many :certificatings, class_name: 'Unidom::Certificate::Certificating', as: :certification

  scope :identification_number_is, ->(identification_number) { where identification_number: identification_number }

  before_validation -> {
    self.birth_date  = Date.parse "#{identification_number[6..9]}-#{identification_number[10..11]}-#{identification_number[12..13]}"
    self.gender_code = identification_number[16].to_i.odd? ? '1' : '2'
  }

end
