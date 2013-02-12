require 'rubygems'
require 'json'
require 'twurl'

def getDataFromDesk(status, label = null, host = 'example')
  if !label
    output = `twurl --host #{host}.desk.com "/api/v1/cases.json?labels=#{label}&status=#{status}"`
  else
    output = `twurl --host #{host}.desk.com "/api/v1/cases.json?status=#{status}"`
  end
  jsondecode = JSON.parse(output)
  return jsondecode['total']
end

def pushDataToGecko(url, apikey, data)
  response = `curl -X POST #{url} -d '{"api_key":"#{apikey}","data":{#{data}]}}'`
end
