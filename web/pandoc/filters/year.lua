local current_year = os.date('%Y')

function Str(el)
  if el.text and el.text:match('CURRENT_YEAR') then
    el.text = el.text:gsub('CURRENT_YEAR', current_year)
  end
  return el
end

function RawInline(el)
  if el.text and el.text:match('CURRENT_YEAR') then
    el.text = el.text:gsub('CURRENT_YEAR', current_year)
  end
  return el
end
