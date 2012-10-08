require 'spec_helper'

describe Pivotal::Cmd::Config do

  let :file_config do
    {"token"=>"123", "project_id"=>456}
  end

  let :subject do
    Pivotal::Cmd::Config.new
  end

  describe ".token" do
    before do
      YAML.stub(:load_file).and_return(file_config)
    end

    it "should return correct token" do
      subject.stub(:token).and_return(file_config["token"])
      subject.token.should eql "123"
    end
  end
end