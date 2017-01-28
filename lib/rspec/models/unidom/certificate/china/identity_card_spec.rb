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

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

  end

end
