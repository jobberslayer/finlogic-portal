module StatementHelper
  def statement_line(line)
    render 'statement_line', line: line
  end

  def statement_indent(indent)
    p indent if indent < 0
    return ('&nbsp;'*(indent*5)).html_safe
  end

  def statement_org_name(location)
    if @location.organization.logo.nil?
      render 'statement_plain_org_name', location: @location
    else
      render 'statement_logo_org_name', location: @location
    end
  end
end
