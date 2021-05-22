class HandleValidator < ActiveModel::EachValidator
  def validate_each(record,attribute, value)
    if value =~ /[!@#$%&*()\[\]{}=+¨^~\/Çç><,;:?¡¿\\"']+/
      record.errors.add attribute, (options[:message] || 'Your handle cannot include any special characters')
    end

    if value.include?(" ")
      record.errors.add attribute, (options[:message] || 'Your handle cnnot include any spaces')
    end

  end
end
