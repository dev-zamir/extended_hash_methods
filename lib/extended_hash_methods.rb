class Hash
  def keys_by_value(value)
    self.select { |_, v| v == value }.keys
  end

  def invert_and_group
    self.values.uniq.map do |value|
      [value, keys_by_value(value)]
    end.to_h
  end
end
