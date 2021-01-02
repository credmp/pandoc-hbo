function Div (div)
  local label = div.content[1]
  if not label or not label.content then return nil end
  local label_span = label.content[1]
  if label_span and label_span.classes and label_span.classes:includes 'label' then
    local codeblock = div.content[2]
    if codeblock.t == 'CodeBlock' then
      codeblock.attributes.caption = pandoc.utils.stringify(label)
      return codeblock
    end
  end
end
