module AoiiHelper
  def statement_line(data, line)
    render 'statement_line', data: data, line: line
  end
end
