class String
  def to_col_name
    self.downcase.gsub(/[^0-9a-z]/i, '_').gsub(/_{1,}/, '_')
  end
end