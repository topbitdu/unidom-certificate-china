class Unidom::Certificate::China::IdentificationNumberValidator < ActiveModel::EachValidator

  WEIGHTS      = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ].freeze
  CHECK_DIGITS = %w{1 0 X 9 8 7 6 5 4 3 2}.freeze

  def validate_each(record, attribute, value)

    value = value.to_s
    sum   = 0
    value[0..16].chars.each_with_index do |char, index| sum += char.to_i*WEIGHTS[index] end

    record.errors[attribute] << (options[:message]||'is invalid') unless CHECK_DIGITS[sum%11]==value[17]

  end

end
