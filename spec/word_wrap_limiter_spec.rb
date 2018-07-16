RSpec.describe WordWrapLimiter do
  it 'has a version number' do
    expect(WordWrapLimiter::VERSION).not_to be nil
  end

  it 'does not wrap an empty sting onto a new line' do
    word_wrap('', 1, '')
  end

  it 'does not wrap a string that is shorter than column length' do
    word_wrap('word', 6, 'word')
  end

  it 'wraps a string longer than the column length' do
    word_wrap('word', 2, "wo\nrd")
  end

  it 'wraps a string onto multiple lines' do
    word_wrap('longer', 2, "lo\nng\ner")
  end

  it 'wraps on a space if available' do
    word_wrap('word word', 5, "word\nword")
  end

  it 'wraps on the space when column length is past the space' do
    word_wrap('word word', 6, "word\nword")
  end

  it 'wraps on spaces and words' do
    word_wrap('word word', 3, "wor\nd\nwor\nd")
  end

  it 'wraps just before the space' do
    word_wrap('word word', 4, "word\nword")
  end

  private

  def word_wrap(string, line_length, output)
    expect(WordWrapLimiter.wrap(string, line_length)).to eq(output)
  end
end
