$:.unshift(File.dirname(__FILE__) + "/../lib")
require "htmlgrammars/version"
require "treetop"
require "polyglot"

module Htmlgrammars
  	
	#require "simple_html"
	require_files = []
	require_files.concat Dir[File.join(File.dirname(__FILE__), '.', '**', '*.treetop')]

	require_files.each do |file|
	  Treetop.load(file)
	end
	
end