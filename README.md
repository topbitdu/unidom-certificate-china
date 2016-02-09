# Unidom Certificate China

[![License](https://img.shields.io/badge/license-MIT-green.svg)](http://opensource.org/licenses/MIT)

Unidom (UNIfied Domain Object Model) is a series of domain model engines. The China Certificate domain model engine includes Identity Card, Driving License, and Business License models.
Unidom (统一领域对象模型)是一系列的领域模型引擎。中国证件领域模型引擎包括中国大陆的身份证、驾驶证、营业执照等模型。

## Usage in Gemfile:
```ruby
gem 'unidom-certificate-china'
```

## Run the Database Migration:
```shell
rake db:migrate
```

## Call the Model:
```ruby
Unidom::Certificate::China::IdentityCard.identification_number_is('51010519801231123X').first
```
