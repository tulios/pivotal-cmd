# -*- coding: utf-8 -*-

module Pivotal::Cmd
  class Gateway

    HOST = "http://www.pivotaltracker.com/services/v3"

    def initialize config
      @config = config
    end

    def current
      Iteration.new get("projects/#{@config.project_id}/iterations/current")
    end

    private
    def get path
      url = "#{HOST}/#{path}"
      RestClient.get url, token_param
    end

    def token_param
      {"X-TrackerToken" => @config.token}
    end

  end
end
