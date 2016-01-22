# Unidom Certificate China

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
Unidom::Certificate::China.IdentityCard.valid_at.alive.first
Unidom::Certificate::China.BusinessLicense.valid_at.alive.first
```
