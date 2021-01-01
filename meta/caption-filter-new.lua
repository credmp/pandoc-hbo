function Div (div)
  if not div.classes:includes 'captioned-content' then return end
  local caption = div.content[1]
  local codeblock = div.content[2]
  if caption and codeblock
      and caption.t == 'Div'
      and codeblock.t == 'CodeBlock'
      and caption.classes:includes 'caption' then
    codeblock.attributes.caption = pandoc.utils.stringify(caption)
    return codeblock
  end
end
