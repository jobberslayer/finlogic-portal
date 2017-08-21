module StatementHelper
  def statement_line(line, budget=nil, forecast=nil)
    render 'statement_line.html', line: line, budget: budget, forecast: forecast
  end

  def statement_indent(indent)
    p indent if indent < 0
    return ('&nbsp;'*(indent*5)).html_safe
  end

  def statement_org_name(location, alt_text=nil)
    if location.organization.logo.nil?
      render 'statement_plain_org_name.html', location: location, alt_text: alt_text
    else
      render 'statement_logo_org_name.html', location: location, alt_text: alt_text
    end
  end

  def stoplight_to_icon(amount)
    if amount >= 200
      return icon "thumbs-up", style: 'color:green'
    elsif amount > 75 && amount < 200
      return icon "warning", style: 'color:#CCCC00'
    else
      return icon "thumbs-down", style: 'color:red'
    end
  end
end
