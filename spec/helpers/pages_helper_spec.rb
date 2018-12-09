# Leaving this here as an example to run tests against.
RSpec.describe PagesHelper, type: :helper do
  describe 'string concat' do
    it 'concats two strings with spaces' do
      expect(helper.concat_strings('this','that')).to eq('this that')
    end
  end
end
