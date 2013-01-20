$:.unshift(File.dirname(__FILE__))
$:.unshift(File.dirname(__FILE__) + "/../lib")

require "treetop"
require "polyglot"
require "pry"
require "debugger/pry"
require "awesome_print"

require 'net/http'
require 'net/https'
require "uri"

#binding.pry


class Testbed
	def load_parser(grammer_file)
		Treetop.load($:[0]+"/LexicalRules")
		Treetop.load($:[0]+"/"+grammer_file).new
	end

	def load_content(resource)
		case  resource
			when /^http.*/
				uri = URI.parse(resource)
				http = Net::HTTP.new(uri.host, uri.port)
				http.use_ssl = resource =~ /^https.*/
				request = Net::HTTP::Get.new(uri.request_uri)
				response = http.request(request)
				response.body
			else
				f = File.open(resource, 'rb')
				f.read
		end
	end
end



