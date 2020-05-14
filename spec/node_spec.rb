require_relative '../node.rb'

RSpec.describe Node do

  let(:node) { Node.new() }

  describe Attributes do
    it 'Has a readable name' do
      expect(node.name).to be nil
    end

    it 'Has readble depends_on' do
      expect(node.depends_on).to eq []
    end
  end
end
