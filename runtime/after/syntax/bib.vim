" Allow newline between the bibKey and the subsequent comma

syn match bibKey contained /\s*[^ \t}="]\+\([\n\r]\)\=,/hs=s,he=e-1 nextgroup=bibField
