require 'rails_helper'
require

describe Image do
  let(:response) { double('faraday_response', status: status, headers: headers) }
  before do
    allow(Faraday).to receive(:get).with(anything()).and_return(response)
  end

  describe '#download' do

    context 'error status' do
      let(:status) { 404 }
      let(:headers) {{}}
      it '#should raiese Arg Error' do
        expect{Image.download('')}.to raise_error(ArgumentError)
      end
    end

    context 'wrong type' do
      let(:status) { 200 }
      let(:headers) { {'content-type' => 'plain/text'} }
      it '#should raiese Arg Error' do
        expect{Image.download('')}.to raise_error(TypeError)
      end
    end

    context '#success' do
      #dodelat
    end
  end
end
