RSpec::Matchers.define :be_invalid_with_fields do |*fields|
  match do |resource|
    resource.invalid? && resource.errors.keys == fields
  end

  failure_message do |resource|
    %(
      expect that #{resource} should be invalid with following
      fields #{fields} that contains non valid data
    )
  end
end
