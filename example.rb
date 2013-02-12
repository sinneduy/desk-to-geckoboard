require File.join File.dirname(__FILE__), 'desk-to-gecko'

total = getDataFromDesk('new,open,pending')
new = getDataFromDesk('new')
active = getDataFromDesk('new,open')
awaitingDev = getDataFromDesk('pending', 'Awaiting Dev')
pending = getDataFromDesk('pending') - awaitingDev
