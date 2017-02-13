RSpec.describe Unidom::Certificate::China::UnifiedSocialCreditIdentifierValidator, type: :validator do

  valid_values = %w{
      91350100M000100Y43
      914405073041792819
      91320111780685310N
      91441900073549790Q
      913201176673804782
      913504811581992673
    }
  invalid_values = %w{
      91350100M000100Y44
      91440507304179281A
      91320111780685310P
      91441900073549790R
      913201176673804783
      913504811581992674
    }

  it_behaves_like 'ActiveModel::EachValidator', valid_values, invalid_values

end
