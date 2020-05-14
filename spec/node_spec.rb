require_relative '../node.rb'

RSpec.describe Node do

  let(:node) { Node.new() }

  describe Attributes do
    it 'Has a readable name' do
      expect(node.name).to be nil
    end

    it 'Has a readble links_to' do
      expect(node.depends_on).to eq []
    end

    it 'Has a reable visit_status' do
      
    end
  end
end
