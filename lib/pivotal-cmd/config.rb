# -*- coding: utf-8 -*-

module Pivotal::Cmd
  class Config

    FILENAME = ".pivotalcmdrc"

    def initialize
      @filepath = File.expand_path(File.join(Dir.home, FILENAME))
      @yaml = YAML.load_file @filepath
    end

    def token
      @token ||= @yaml["token"]
    end

    def project_id
      @project_id ||= @yaml["project_id"]
    end

  end
end
