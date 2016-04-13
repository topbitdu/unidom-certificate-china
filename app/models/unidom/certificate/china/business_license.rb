# Business License 是中国的工商营业执照。

class Unidom::Certificate::China::BusinessLicense < ActiveRecord::Base

  FORMAT_VALIDATION_REGEX = /\A\d{15}\z/

  self.table_name = 'unidom_china_business_licenses'

  include Unidom::Common::Concerns::ModelExtension

  validates :registration_number, presence: true, length: { is: columns_hash['registration_number'].limit }, numericality: { integer_only: true }, format: self::FORMAT_VALIDATION_REGEX

  validates :address, presence: true, length: { in: 2..columns_hash['address'].limit }
  validates :name,    presence: true, length: { in: 2..columns_hash['name'].limit    }

  validates :legal_representative_name, presence:    true, length: { in: 2..columns_hash['legal_representative_name'].limit }
  validates :issuing_authority_name,    allow_blank: true, length: { in: 2..columns_hash['issuing_authority_name'].limit    }

  has_many :certificatings, class_name: 'Unidom::Certificate::Certificating', as: :certification

  scope :registration_number_is, ->(registration_number) { where registration_number: registration_number }

end
