module ApplicationHelper
  def doll(n)
    return number_to_currency(n)
  end

  def space_over
    return ('&nbsp;'*3).html_safe
  end
end
