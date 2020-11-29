require 'log_counter'
require 'byebug'

RSpec.describe LogCounter do
  subject { described_class.new(file).call(unique: unique) }
  let(:file) { 'spec/fixtures/example_webserver.log' }

  context 'with all logs' do
    let(:unique) { false }

    describe '#call' do
      let(:expected_response) do
        {
          '/about' => 2,
          '/about/2' => 1,
          '/contact' => 2,
          '/help_page/1' => 4,
          '/home' => 3
        }
      end

      it { is_expected.to eq(expected_response) }
    end

    context 'with unique logs' do
      let(:unique) { true }

      describe '#call' do
        let(:expected_response) do
          {
            '/about' => 2,
            '/about/2' => 1,
            '/contact' => 1,
            '/help_page/1' => 4,
            '/home' => 2
          }
        end

        it { is_expected.to eq(expected_response) }
      end
    end
  end
end
