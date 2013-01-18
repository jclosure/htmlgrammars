# Htmlgrammars

Playground for creating html parsing grammars for automated consumption of web content.  The idea is that once we're able to create tokenized representations of content, then we'll be able to apply stochastic processing algorithms over it to identify emergent thematic categories.  The hope is that this will lead to the indentification of higher order grammars.  Ideally we will be able to distill the generative rule sets for these, so that they can be infered and created automatically.

The first implementations will be dead simple html processors focussed on distilling categories with directed learning.


Treetop Reference

	http://treetop.rubyforge.org/syntactic_recognition.html 
	http://www.trsolutions.biz/blog
	http://po-ru.com/diary/getting-started-with-treetop/
	http://thingsaaronmade.com/blog/a-quick-intro-to-writing-a-parser-using-treetop.html
	https://github.com/aarongough/koi-reference-parser
	https://github.com/aarongough/treetop-sexp-parser



## Installation

Add this line to your application's Gemfile:

    gem 'htmlgrammars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install htmlgrammars

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
