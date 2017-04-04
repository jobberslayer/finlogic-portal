module StatementHelper
  def statement_line(line, budget=nil)
    render 'statement_line.html', line: line, budget: budget
  end

  def statement_indent(indent)
    p indent if indent < 0
    return ('&nbsp;'*(indent*5)).html_safe
  end

  def statement_org_name(location)
    if @location.organization.logo.nil?
      render 'statement_plain_org_name.html', location: @location
    else
      render 'statement_logo_org_name.html', location: @location
    end
  end

end
