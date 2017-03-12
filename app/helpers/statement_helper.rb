module StatementHelper
  def statement_line(line)
    render 'statement_line', line: line
  end

  def statement_indent(indent)
    p indent if indent < 0
    return ('&nbsp;'*(indent*5)).html_safe
  end
end
