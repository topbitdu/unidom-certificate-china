RSpec.describe Unidom::Certificate::China::IdentificationNumberValidator, type: :validator do

  valid_values = %w{
      231024198506186916
      231024198506188110
      231024198506185470
      231024198506182851
      231024198506187193
    }
  invalid_values = %w{
      231024198506186917
      231024198506188111
      231024198506185471
      231024198506182852
      231024198506187194
    }

  it_behaves_like 'ActiveModel::EachValidator', valid_values, invalid_values

end
