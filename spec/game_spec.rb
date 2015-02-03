require 'spec_helper'

describe Game do
  it {should have_many(:players)}

  # it("should create a X player and O player when initialized") do
  #   test_game = Game.create()
  #   expect(test_game.players.first.mark).to(eq("X"))
  # end

  # it("should create a board when initialized") do
  #   test_game = Game.create()
  #   expect(test_game.board).to(be_an_instance_of(Board))
  # end

  # describe 'win?' do
  #   it("returns true if there is three Xs or Os in a row") do
  #     test_game = Game.create
  #       expect(test_game.board.spaces[0, 1, 2]).to eq(true)
  #   end
  # end

  describe '#play' do
    it("marks the appropriate space with the players turn") do
binding.pry()
      game = Game.create()
      game.play(1, 2)
binding.pry()
      expect(game.board.spaces[1].player.mark).to eq("X")
    end
  end

  describe '#turner' do
    it("alternates between X and O's turn, X is always first") do
     test_game = Game.create()
     expect(test_game.turn).to(eq('X'))
    end

    it("alternates between X and O's turn, X is always first") do
     test_game = Game.create()
     test_game.turner()
     expect(test_game.turn).to(eq("O"))
    end
  end
end
