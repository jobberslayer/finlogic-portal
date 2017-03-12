class String
  def to_col_name
    self.downcase.gsub(/[^0-9a-z]/i, '_').gsub(/_{1,}/, '_')
  end

  def path_indent
    self.split('|', -1).count 
  end

  def path_child_indent
    self.split('|', -1).count + 1 
  end
end