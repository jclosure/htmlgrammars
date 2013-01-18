$:.unshift(File.dirname(__FILE__) + "/../lib")

require "treetop"
require "polyglot"
require "pry"
require "debugger/pry"

#binding.pry


class Testbed
	def parser(grammer_file)
		Treetop.load($:[0]+"/"+grammer_file).new
	end
end

