require "spec_helper"


describe HTMLParser, "Behaving as expected" do
	before :all do
		@parser = SimpleHTMLParser.new
	end
	
	it "can match a single text node" do
		result = @parser.parse("asdf")
		result.content.first.should match_array([:text, "asdf"])		
	end

	it "can match a single tag node" do
		result = @parser.parse("<a>")
		result.content.first.should match_array([:tag, "<a>"])
	end

end
