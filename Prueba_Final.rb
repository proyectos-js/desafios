require 'net/http'
require 'openssl'
require 'json'

#url = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1&api_key=aToutUnNsFjwfK9YpCjL39DsAVkSswI7wbgSflgZ'
var_url ="https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=0"
api_key = "aToutUnNsFjwfK9YpCjL39DsAVkSswI7wbgSflgZ"


def metodo_request(url_input,api_input)
    url = url_input+"&api_key="+api_input
    uri = URI(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    response = http.request(request)
    JSON.parse(response.read_body)
end
#####  Arma pagina Web ######
def buid_web_page(ingreso)
    inicio = "<html>\n<head>\n</head>\n<body>\n<ul>"
    img=""
    final = "\n</ul>\n</body>\n</html>"

    ingreso.each do |llave1, valor1|
        valor1.each do |llave2, valor2|
            llave2.each do |llave3, valor3|
                if llave3 =='img_src'
                    img += "\n\t<li><img src='#{valor3}'></li>"
                end
            end
        end
    end
  File.write('./index.html',inicio+img+final)
end

data = metodo_request(var_url,api_key)
buid_web_page(data)