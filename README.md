# Htmlgrammars

Playground for creating html parsing grammars for automated consumption of web content.  The idea is that once we're able to create tokenized representations of content, then we'll be able to apply stochastic processing algorithms over it to identify emergent thematic categories.  The hope is that this will lead to the indentification of higher order grammars.  Ideally we will be able to distill the generative rule sets for these, so that they can be automatically inferred, created, and applied to streams of web content.

The first implementations will be dead simple html processors focussed on distilling categories with directed learning.


Treetop Reference

	http://treetop.rubyforge.org/syntactic_recognition.html 
	http://www.trsolutions.biz/blog
	http://po-ru.com/diary/getting-started-with-treetop/
	http://thingsaaronmade.com/blog/a-quick-intro-to-writing-a-parser-using-treetop.html
	https://github.com/aarongough/koi-reference-parser
	https://github.com/aarongough/treetop-sexp-parser
	https://github.com/cjheath/activefacts



## Installation

Add this line to your application's Gemfile:

    gem 'htmlgrammars', :git => 'https://github.com/jclosure/htmlgrammars.git'

And then execute:

    $ bundle

## Usage

AST Dump

    parser = SimpleHTMLParser.new
	result = @parser.parse("<p>monkey</p>")
	
	=> SyntaxNode+Document0 offset=0, "<p>monkey</p>" (content):
	  SyntaxNode+Tag1+Tag0 offset=0, "<p>" (content):
	    SyntaxNode offset=0, "<"
	    SyntaxNode offset=1, "p":
	      SyntaxNode offset=1, "p"
	    SyntaxNode offset=2, ">"
	  SyntaxNode+Text0 offset=3, "monkey" (content):
	    SyntaxNode offset=3, "m"
	    SyntaxNode offset=4, "o"
	    SyntaxNode offset=5, "n"
	    SyntaxNode offset=6, "k"
	    SyntaxNode offset=7, "e"
	    SyntaxNode offset=8, "y"
	  SyntaxNode+Tag1+Tag0 offset=9, "</p>" (content):
	    SyntaxNode offset=9, "<"
	    SyntaxNode offset=10, "/p":
	      SyntaxNode offset=10, "/"
	      SyntaxNode offset=11, "p"
	    SyntaxNode offset=12, ">"

Restructured content dump

	parser = SimpleHTMLParser.new
	result = @parser.parse("<p>monkey</p>").content

	=> [[:tag, "<p>"], [:text, "monkey"], [:tag, "</p>"]]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
