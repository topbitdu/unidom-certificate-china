describe Unidom::Certificate::China::IdentityCard, type: :model do

  before :each do
  end

  after :each do
  end

  context do

    model_attributes = {
      name:                   'YiDa',
      birth_date:             Date.current,
      address:                '#305, Building #n, #n Some Street, Some City',
      gender_code:            '1',
      ethnicity_code:         'HA',
      identification_number:  '12345619850618123X',
      issuing_authority_name: 'Some City PS Department',
      validity_from_date:     Date.current-10.years,
      validity_thru_date:     Date.current+10.years
    }

    identification_number_max_length = described_class.columns_hash['identification_number'].limit

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

    it_behaves_like 'validates', model_attributes, :identification_number,
      {                              } => 0,
      { identification_number: nil   } => 3,
      { identification_number: ''    } => 3,
      { identification_number: '1'   } => 2,
      { identification_number: 'A'   } => 2,
      { identification_number: '11'  } => 2,
      { identification_number: 'AA'  } => 2,
      { identification_number: '111' } => 2,
      { identification_number: 'AAA' } => 2,
      { identification_number: '1'*(identification_number_max_length-1) } => 2,
      { identification_number: 'A'*(identification_number_max_length-1) } => 2,
      { identification_number: '1'*identification_number_max_length     } => 0,
      { identification_number: 'A'*identification_number_max_length     } => 1,
      { identification_number: '1'*(identification_number_max_length+1) } => 2,
      { identification_number: 'A'*(identification_number_max_length+1) } => 2

    it_behaves_like 'validates text', model_attributes, :name,
      length: 2..described_class.columns_hash['name'].limit
    it_behaves_like 'validates text', model_attributes, :address,
      length: 2..described_class.columns_hash['address'].limit

  end

end
