; extends
((inline) @injection.content
  (#lua-match? @injection.content "^%s*import")
  (#set! injection.language "javascript"))
((inline) @injection.content
  (#lua-match? @injection.content "^%s*export")
  (#set! injection.language "javascript"))
