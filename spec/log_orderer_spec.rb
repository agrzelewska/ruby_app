require 'log_orderer'
require 'byebug'

RSpec.describe LogOrderer do
  subject { described_class.new(file, unique: unique).call }
  let(:file) { 'spec/fixtures/example_webserver.log' }

  context 'with all logs' do
    let(:unique) { false }

    describe '#call' do
      let(:expected_response) do
        [
          ['/help_page/1', 4],
          ['/home', 3],
          ['/about', 2],
          ['/contact', 2],
          ['/about/2', 1]
        ]
      end

      it { is_expected.to eq(expected_response) }
    end

    context 'with unique logs' do
      let(:unique) { true }

      describe '#call' do
        let(:expected_response) do
          [
            ['/help_page/1', 4],
            ['/about', 2],
            ['/home', 2],
            ['/about/2', 1],
            ['/contact', 1]
          ]
        end

        it { is_expected.to eq(expected_response) }
      end
    end
  end
end
