require 'spec_helper'

describe OmniAuth::Strategies::Cloudsdale do

  subject do
    OmniAuth::Strategies::Cloudsdale.new({})
  end

  context "client options" do
    it 'should have correct site' do
      subject.options.client_options.site.should eq("https://www.cloudsdale.org/")
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://www.cloudsdale.org/oauth/authorize')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://www.cloudsdale.org/oauth/token')
    end
  end
end
