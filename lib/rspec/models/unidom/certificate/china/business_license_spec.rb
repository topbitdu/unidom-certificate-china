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

    it_behaves_like 'Unidom::Common::Concerns::ModelExtension', model_attributes

  end

end
