require_relative "Game"

describe Game do
  let(:the_word) { Game.new }
  let(:guesses) { Game.new }

  it "calls the word" do
    expect(the_word.word).to eq "hope"
  end

  it "sets word length and puts a _ for each letter" do
  	expect(the_word.word_length).to eq 4
  end

# The test below still fails due to incorrect index number
  it "accepts a guess as a letter and compares to word" do
  	expect(guesses.guess("p")).to eq "__p_"
  end

#  it "ends the game if player reaches maximum number of guesses" do

end