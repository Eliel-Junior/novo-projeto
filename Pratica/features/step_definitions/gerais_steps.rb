Então('devo ver a seguinte mensagem {string}') do |mensagem|
  page.find('.ui-growl-message-success').text eql (mensagem)
end
