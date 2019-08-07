# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
   

# Check the locations to make sure I put the pieces in the correct Location on the board
#We need to add an image file to create a picture for the differnt pieces onces we land on what we want them to look like
#we can add that in
#To check it out, go into your rails console then call Pieces.first...second, third...ect this will allow you to see the inputs
#next we will want to make models, this will go into the services file where the board was also created
#from there we will need to have how the pieces move, jump over, taking pieces, moving acoss the board.

#There is onyl one peice that can jump over piece (knight)
#sliding pieces are (queen, bishop, rook)
#the pawns seem simple but will require addtional code coverage as they take pieces at an angle (similar to the bishop)
#the pawns also can become a 'queen' if they make to to the oppsosite end of the board