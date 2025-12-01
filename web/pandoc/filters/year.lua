local current_year = os.date('%Y')

-- Set the year in metadata so templates can access it
function Meta(meta)
  meta.year = pandoc.MetaString(current_year)
  return meta
end

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

function RawBlock(el)
  if el.text and el.text:match('CURRENT_YEAR') then
    el.text = el.text:gsub('CURRENT_YEAR', current_year)
  end
  return el
end

