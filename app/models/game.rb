class Game < ApplicationRecord

	belongs_to :user
  has_many :pieces
  
  validates :title,
    presence: true,
    length: {maximum: 255 , minimum: 3},
    on: :create,
    allow_nil: false

after_create :board_pieces
def board_pieces


#Pawns White 
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 0, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 1, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 2, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 3, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 4, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 5, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 6, y_location: 1)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'white', x_location: 7, y_location: 1)
   #Pawns Black
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 0, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 1, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 2, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 3, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 4, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 5, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 6, y_location: 6)
   Piece.create(game_id: id, piece_type: 'pawn', color: 'black', x_location: 7, y_location: 6)
   #Rooks white
   Piece.create(game_id: id, piece_type: 'rook', color: 'white', x_location: 7, y_location: 0)
   Piece.create(game_id: id, piece_type: 'rook', color: 'white', x_location: 0, y_location: 0)
   #Rooks Black
   Piece.create(game_id: id, piece_type: 'rook', color: 'black', x_location: 0, y_location: 7)
   Piece.create(game_id: id, piece_type: 'rook', color: 'black', x_location: 7, y_location: 7)
   #knight white
   Piece.create(game_id: id, piece_type: 'knight', color: 'white', x_location: 1, y_location: 0)
   Piece.create(game_id: id, piece_type: 'knight', color: 'white', x_location: 6, y_location: 0)
   #knight black
   Piece.create(game_id: id, piece_type: 'knight', color: 'black', x_location: 1, y_location: 7)
   Piece.create(game_id: id, piece_type: 'knight', color: 'black', x_location: 6, y_location: 7)
   #bishop white
   Piece.create(game_id: id, piece_type: 'bishop', color: 'white', x_location: 2, y_location: 0)
   Piece.create(game_id: id, piece_type: 'bishop', color: 'white', x_location: 5, y_location: 0)
   #bishop black
   Piece.create(game_id: id, piece_type: 'bishop', color: 'black', x_location: 2, y_location: 7)
   Piece.create(game_id: id, piece_type: 'bishop', color: 'black', x_location: 5, y_location: 7)
   #queen white
   Piece.create(game_id: id, piece_type: 'queen', color: 'white', x_location: 3, y_location: 0)
   #queen black
   Piece.create(game_id: id, piece_type: 'queen', color: 'black', x_location: 4, y_location: 7)
   #king white
   Piece.create(game_id: id, piece_type: 'king', color: 'white', x_location: 4, y_location: 0)
   #king black
   Piece.create(game_id: id, piece_type: 'king', color: 'black', x_location: 3, y_location: 7)
   #blank
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 0, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 1, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 2, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 3, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 4, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 5, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 6, y_location: 2)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 7, y_location: 2)

   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 0, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 1, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 2, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 3, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 4, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 5, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 6, y_location: 3)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 7, y_location: 3)

   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 0, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 1, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 2, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 3, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 4, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 5, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 6, y_location: 4)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 7, y_location: 4)

   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 0, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 1, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 2, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 3, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 4, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 5, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 6, y_location: 5)
   Piece.create(game_id: id, piece_type: 'blank', color: 'black', x_location: 7, y_location: 5)


end
end
