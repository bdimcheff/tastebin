$('button.browser-back').live 'click', (e) ->
  e.preventDefault()
  history.back()
