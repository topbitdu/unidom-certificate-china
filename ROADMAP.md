# Unidom Certificate China Roadmap 中国证件领域模型引擎路线图

## v0.1
1. Identity Card model & migration (20010291560010)

## v0.2
1. Improve the Identity Card model to include the Model Extension concern

## v0.3
1. Improve the Identity Card model to extract the format validation regular expression
2. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.5

## v0.4
1. Improve the Identity Card migration
2. Improve the Identity Card model for the validation of the #``issuing_authority_name`` attribute to allow blank
3. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.7

## v0.5
1. Business License model & migration (20010291560110)
2. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.8

## v0.6
1. Improve the Business License model to add the ``has_many :certificatings`` macro

## v0.7
1. Improve the Identity Card model to expand the length of the #``name`` attribute from 16 to 200
2. Improve the Business License model to expand the length of the #``name`` attribute from 16 to 200

## v1.0
1. Improve the Business License model to include the As Certification concern
2. Improve the Identity Card model to include the As Certification concern
3. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v0.9
4. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v1.0

## v1.1
1. As Business License Certificated concern
2. As Identity Card Certificated concern

## v1.1.1
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.0

## v1.2
1. Identification Number validator

## v1.2.1
1. Improve the Ruby Gem Specification to depend on [unidom-common](https://github.com/topbitdu/unidom-common) v1.6

## v1.2.2
1. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v2.0
2. Improve the Ruby Gem Specification to never depend on [unidom-common](https://github.com/topbitdu/unidom-common)

## v1.2.3
1. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v2.0.3

## v1.2.4
1. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v2.0.4
2. Improve the Engine class to include the Engine Extension concern

## v1.3
1. Improve the Business License model & migration to add the #``unified_social_credit_identifier`` field
2. Improve the Business License model to add the ``unified_social_credit_identifier_is`` scope

## v1.4
1. Unified Social Credit Identifier validator

## v1.5
1. Models RSpec examples manifest
2. Types RSpec examples manifest
3. Validators RSpec examples manifest

## v1.5.1
1. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v2.0.5
2. Improve the models to support the namespace neglecting

## v1.5.2
1. Identification Number Validator spec
2. Unified Social Credit Identifier Validator spec
3. Improve the Validators RSpec examples manifest to add the Identification Number Validator spec & the Unified Social Credit Identifier Validator spec

## v1.5.3
1. Improve the Application controller for the namespace
2. Improve the Application helper for the namespace
3. Improve the Identity Card spec for the validations on the #``identification_number`` attribute
4. Improve the Business License spec for the validations on the #``registration_number`` attribute, & the #unified_social_credit_identifier attribute

## v1.5.4
1. Improve the Identity Card spec for the validations on the #name attribute, & the #address attribute
2. Improve the Business License spec for the validations on the #name attribute, & the #address attribute

## v1.5.5
1. Improve the Business License spec for the As Certification concern
2. Improve the Identity Card spec for the As Certification concern
3. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v2.1.1

## v1.5.6
1. Improve the Business License spec for the #legal_representative_name attribute, & the #issuing_authority_name attribute
2. Improve the Identity Card spec for the #issuing_authority_name attribute

## v1.5.7
1. Business License shared examples
2. Identity Card shared examples
3. RSpec shared examples manifest
4. Improve the Ruby Gem Specification to depend on [unidom-certificate](https://github.com/topbitdu/unidom-certificate) v2.1.3
