describe Unidom::Certificate::China::BusinessLicense, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      registration_number:              '123456789012345',
      unified_social_credit_identifier: '123456789012345678',
      name:                             'Yeedar Inc.',
      address:                          '#305, Building #n, #n Some Street, Some City',
      legal_representative_name:        'YiDa',
      issuing_authority_name:           'Some City PS Department',
      validity_from_date:               Date.current-10.years,
      validity_thru_date:               Date.current+10.years
    }

    registration_number_max_length              = described_class.columns_hash['registration_number'].limit
    unified_social_credit_identifier_max_length = described_class.columns_hash['unified_social_credit_identifier'].limit

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    it_behaves_like 'validates', model_attributes, :registration_number,
      {                            } => 0,
      { registration_number: nil   } => 0,
      { registration_number: ''    } => 0,
      { registration_number: '1'   } => 2,
      { registration_number: 'A'   } => 3,
      { registration_number: '11'  } => 2,
      { registration_number: 'AA'  } => 3,
      { registration_number: '111' } => 2,
      { registration_number: 'AAA' } => 3,
      { registration_number: '1'*(registration_number_max_length-1) } => 2,
      { registration_number: 'A'*(registration_number_max_length-1) } => 3,
      { registration_number: '1'*registration_number_max_length     } => 0,
      { registration_number: 'A'*registration_number_max_length     } => 2,
      { registration_number: '1'*(registration_number_max_length+1) } => 2,
      { registration_number: 'A'*(registration_number_max_length+1) } => 3

    it_behaves_like 'validates', model_attributes, :unified_social_credit_identifier,
      {                                         } => 0,
      { unified_social_credit_identifier: nil   } => 0,
      { unified_social_credit_identifier: ''    } => 0,
      { unified_social_credit_identifier: '1'   } => 1,
      { unified_social_credit_identifier: 'A'   } => 1,
      { unified_social_credit_identifier: '11'  } => 1,
      { unified_social_credit_identifier: 'AA'  } => 1,
      { unified_social_credit_identifier: '111' } => 1,
      { unified_social_credit_identifier: 'AAA' } => 1,
      { unified_social_credit_identifier: '1'*(unified_social_credit_identifier_max_length-1) } => 1,
      { unified_social_credit_identifier: 'A'*(unified_social_credit_identifier_max_length-1) } => 1,
      { unified_social_credit_identifier: '1'*unified_social_credit_identifier_max_length     } => 0,
      { unified_social_credit_identifier: 'A'*unified_social_credit_identifier_max_length     } => 0,
      { unified_social_credit_identifier: '1'*(unified_social_credit_identifier_max_length+1) } => 1,
      { unified_social_credit_identifier: 'A'*(unified_social_credit_identifier_max_length+1) } => 1

    it_behaves_like 'validates text', model_attributes, :name,    length: 2..described_class.columns_hash['name'].limit
    it_behaves_like 'validates text', model_attributes, :address, length: 2..described_class.columns_hash['address'].limit

  end

end
