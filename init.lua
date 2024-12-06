require("full-border"):setup()

-- Header name
function header_host()
  if ya.target_family() ~= "unix" then
    return ui.Line({})
  end
  return ui.Span(ya.user_name() .. "@yazi" .. ": "):fg("red")
end

Header:children_add(header_host, 500, Header.LEFT)

-- group of files and username at the bottom
function Status_owner()
  local h = cx.active.current.hovered
  if h == nil or ya.target_family() ~= "unix" then
    return ui.Line({})
  end

  return ui.Line({
    ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
    ui.Span(":"),
    ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
    ui.Span(" "),
  })
end

Status:children_add(Status_owner, 500, Status.RIGHT)

--- @sync entry
return {
  entry = function()
    local h = cx.active.current.hovered
    ya.manager_emit(
      "tab_create",
      h and h.cha.is_dir and { h.url } or { current = true }
    )
  end,
}
