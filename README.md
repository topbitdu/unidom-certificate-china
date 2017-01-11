# Unidom Certificate China 中国证件领域模型引擎

[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/unidom-certificate-china/frames)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

[![Gem Version](https://badge.fury.io/rb/unidom-certificate-china.svg)](https://badge.fury.io/rb/unidom-certificate-china)
[![Dependency Status](https://gemnasium.com/badges/github.com/topbitdu/unidom-certificate-china.svg)](https://gemnasium.com/github.com/topbitdu/unidom-certificate-china)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The China Certificate domain model engine includes Identity Card, Driving License, and Business License models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。中国证件领域模型引擎包括中国大陆的身份证、驾驶证、营业执照等模型。



## Recent Update

Check out the [Road Map](ROADMAP.md) to find out what's the next.
Check out the [Change Log](CHANGELOG.md) to find out what's new.



## Usage in Gemfile

```ruby
gem 'unidom-certificate-china'
```



## Run the Database Migration

```shell
rake db:migrate
```
The migration versions start with 2001029156.



## Call the Model

```ruby
identity_card = Unidom::Certificate::China::IdentityCard.identification_number_is('51010519801231123X').first_or_create(
  name:                   'John',
  address:                '#1 Nanjing Street, Shanghai, China',
  issuing_authority_name: 'Shanghai Police Station',
  ethnicity_code:         'HA',
  validity_from_date:     '2015-01-01',
  validity_thru_date:     '2025-01-01'
)
identity_card.gender_code # '1' male, calculated from the identification_number
identity_card.birth_date  # '1980-12-31', calculated from the identification_number

Unidom::Certificate::China::BusinessLicense.registration_number_is('510105012345670').first_or_create(
  name:                      'Google',
  address:                   '#1 Nanjing Street, Shanghai, China',
  issuing_authority_name:    'Shanghai Industry & Commerce Administration',
  legal_representative_name: 'Lawrence Edward Page',
  validity_from_date:        '2015-01-01',
  validity_thru_date:        '2025-01-01'
)
```



## Include the Concerns

```ruby
include Unidom::Certificate::China::Concerns::AsBusinessLicenseCertificated
include Unidom::Certificate::China::Concerns::AsIdentityCardCertificated
```

### As Business License Certificated

The As Business License Certificated do the following tasks for the includer automatically:
1. Include the [As Certificated](http://https://github.com/topbitdu/unidom-certificated) concern
2. Define the has_many :china_business_licenses macro as: ``has_many :china_business_licenses, through: :certificatings, source: :certification, source_type: 'Unidom::Certificate::China::BusinessLicense'``

### As Identity Card Certificated

The As Identity Card Certificated do the following tasks for the includer automatically:
1. Include the [As Certificated](http://https://github.com/topbitdu/unidom-certificated) concern
2. Define the has_many :china_identity_cards macro as: ``has_many :china_identity_cards, through: :certificatings, source: :certification, source_type: 'Unidom::Certificate::China::IdentityCard'``



## Validator

### Identification Number validator

```ruby
validates :identification_number, presence: true, 'unidom/certificate/china/identification_number': true
```
