$:.unshift(File.dirname(__FILE__) + "/../lib")
require "htmlgrammars/version"
require "treetop"
require "polyglot"

#NOTE: THESE DO NOT RELOAD IN THE REPL
require "LexicalRules"


module Htmlgrammars
  	
	#load all treetop files
	require_files = []
	require_files.concat Dir[File.join(File.dirname(__FILE__), '.', '**', '*.treetop')]

	require_files.each do |file|
	  Treetop.load(file)
	end
	
end