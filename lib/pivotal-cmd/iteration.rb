# -*- coding: utf-8 -*-

module Pivotal::Cmd
  class Iteration

    attr_accessor :id, :stories

    def initialize xml_string
      xml_doc = Nokogiri::XML xml_string
      iteration_xml = xml_doc.xpath("//iterations").first

      @id = iteration_xml.xpath("//iteration/id").text
      @stories = iteration_xml.xpath("//story").to_a.map {|xml| Story.new xml}
    end

  end
end
