# -*- coding: utf-8 -*-

module Pivotal::Cmd
  class Story

    attr_accessor :id, :type, :url, :estimate, :state, :description, :name, :labels, :notes

    def initialize xml_node
      @xml_node = xml_node
      @id = get("id")
      @type = get("story_type")
      @url = get("url")
      @estimate = get("estimate")
      @state = get("current_state").upcase
      @description = get("description").gsub("\n", "\n  ")
      @name = get("name").strip
      @labels = get("labels").strip.split(",").join(", ")

      @notes = xml_node.xpath("notes/note/text").map {|e| e.text}
    end

    private
    def get attr
      @xml_node.xpath(attr).text
    end

  end
end
