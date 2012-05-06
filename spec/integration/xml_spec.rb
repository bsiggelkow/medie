require 'spec_helper'

describe Medie::Xml do

  before :all do
    full_json = IO.read(File.dirname(__FILE__) + '/full_xml.xml')
    @xml = Medie::Xml::Driver.new.unmarshal(full_json)
  end

  describe "XML read" do

    it "should be able to read a XML object in many ways" do

      @xml["articles"]["link"].first["type"].should == "application/xml"
      @xml.articles.links.first.type.should == "application/xml"

      @xml.articles.links.search.href.should == "http://search.place.com"
      @xml.articles.links.unknow_rel.should == nil
    end

  end

  describe "XML link handling" do

    it "should be able to treat links as methods" do

      @xml.articles.links.search.href.should == "http://search.place.com"
      @xml.articles.links.unknown_rel.should == nil
      @xml.articles.link.first.type.should == "application/xml"

    end

    it "should treat links like a map" do
      @xml.articles.links.should respond_to(:[])
      @xml.articles.links["search"].rel.should == "search"
      @xml.articles.links["unknown_rel"].should == nil
      @xml.articles.links.size.should == 2
      @xml.articles.links.keys.should include("search","self")
    end

  end

  describe "XML write" do

    it "should be able to write a XML object in many ways" do
      @xml["articles"]["size"] = 10
      @xml["articles"]["size"].should  == 10

      @xml.articles.link << {"href" => "http://dont.panic.com", "rel" => "towel"}
      @xml.articles.link.last.href.should == "http://dont.panic.com"
      @xml.articles.link.last.rel.should  == "towel"
      @xml.articles.link.size.should == 3

      @xml.articles.link.last.type = "application/json"
      @xml.articles.link.last.type.should  == "application/json"
    end

  end

end