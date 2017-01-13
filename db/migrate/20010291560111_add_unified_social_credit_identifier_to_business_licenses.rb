class AddUnifiedSocialCreditIdentifierToBusinessLicenses < ActiveRecord::Migration[5.0]

  def change
    change_column_null :unidom_china_business_licenses, :registration_number, true
    add_column         :unidom_china_business_licenses, :unified_social_credit_identifier, 'char(18)', null: true, default: nil
    add_index          :unidom_china_business_licenses, :unified_social_credit_identifier, name: 'index_unidom_china_business_licenses_on_usci', unique: true
  end

end
