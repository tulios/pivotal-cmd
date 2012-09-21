# -*- coding: utf-8 -*-

module Pivotal::Cmd
  class Printer

    def initialize object
      @object = object
    end

    def print
      case @object.class.to_s
        when "Pivotal::Cmd::Iteration"
          puts "\nStories:"
          @object.stories.each do |story|
            puts "  #{story.id.bold} #{story.state} #{story.url}"
            puts "  #{story.name.yellow} #{(story.labels and not story.labels.empty?) ? "- #{story.labels.magenta}" : ""}"
            if story.description and not story.description.strip.empty?
              puts "  #{story.description}"
            end
            if story.notes and not story.notes.empty?
              story.notes.each do |note|
                puts "  #{note}"
              end
            end
            puts "\n\n"
          end
      end
    end

  end
end
