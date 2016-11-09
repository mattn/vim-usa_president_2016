let s:status = ''

function! usa_president_2016#status()
  return s:status
endfunction

function! usa_president_2016#update()
  let a = webapi#json#decode(webapi#http#get('http://elections.huffingtonpost.com/2016/results/president.json').content)
  let s:status = printf('Clinton(%d) vs Trump(%d)', 
  \ a.summaries.president.nClintonElectoralVotes,
  \ a.summaries.president.nTrumpElectoralVotes)
  call timer_start(60000, {x->usa_president_2016#update()})
endfunction

call usa_president_2016#update()
