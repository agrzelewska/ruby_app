require 'log_parser'
require 'byebug'

RSpec.describe LogParser do
  subject { described_class.new(file).call }
  let(:file) { 'spec/fixtures/example_webserver.log' }

  describe '#call' do
    let(:expected_response) do
      [
        ['/help_page/1', '126.318.035.038'],
        ['/contact', '184.123.665.067'],
        ['/home', '184.123.665.067'],
        ['/about/2', '444.701.448.104'],
        ['/help_page/1', '929.398.951.889'],
        ['/about', '444.701.448.104'],
        ['/help_page/1', '722.247.931.582'],
        ['/about', '061.945.150.735'],
        ['/help_page/1', '646.865.545.408'],
        ['/home', '235.313.352.950'],
        ['/contact', '184.123.665.067'],
        ['/home', '235.313.352.950']
      ]
    end

    it { is_expected.to eq(expected_response) }
  end
end
