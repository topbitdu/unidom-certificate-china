# GB 32100-2015《法人和其他组织统一社会信用代码编码规则》
# http://qyj.saic.gov.cn/wjfb/201509/t20150929_162430.html

class Unidom::Certificate::China::UnifiedSocialCreditIdentifierValidator < ActiveModel::EachValidator

  WEIGHTS = [ 1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10, 30, 28 ].freeze
  VALUES  = '0123456789ABCDEFGHJKLMNPQRTUWXY'.freeze

  def validate_each(record, attribute, value)

    value = value.to_s
    sum   = 0
    value[0..16].chars.each_with_index do |char, index| sum += VALUES.index(char)*WEIGHTS[index] end
    checksum = sum % 31
    checksum = 0==checksum ? 31 : checksum
    checksum = 31-checksum

    record.errors[attribute] << (options[:message]||'is invalid') unless VALUES[checksum]==value[17]

  end

end
