require File.join File.dirname(__FILE__), 'desk-to-gecko'

total = getDataFromDesk('new,open,pending')
new = getDataFromDesk('new')
active = getDataFromDesk('new,open')
awaitingDev = getDataFromDesk('pending', 'Awaiting Dev')
pending = getDataFromDesk('pending') - awaitingDev

pushDataToGecko('https://push.geckoboard.com/v1/send/example', apikey, '"item":[{"text":"<p>New: #{new}</p><p> Active: #{active}/#{total}</p><p>Dev: #{awaitingDev}</p><p>Pending: #{pending}/#{total}","type":0}]')
