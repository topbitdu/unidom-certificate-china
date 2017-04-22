shared_examples 'Unidom::Certificate::China::IdentityCard' do |model_attributes, model, certificated, certificator|

  before :each do
  end

  after :each do
  end

  context do

    it_behaves_like 'Unidom::Certificate::Concerns::AsCertification', model_attributes, model, certificated, certificator

  end

end
