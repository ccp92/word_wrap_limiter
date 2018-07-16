RSpec.describe WordWrapLimiter do
  it 'has a version number' do
    expect(WordWrapLimiter::VERSION).not_to be nil
  end

  it 'does not wrap an empty string onto a new line' do
    expect(WordWrapLimiter.wrap('', 0)).to eq('')
  end

  it 'does not wrap a string below the line length on a new line' do
    expect(WordWrapLimiter.wrap('word', 6)).to eq('word')
  end
end
