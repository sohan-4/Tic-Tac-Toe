--Sohan Biswal
--This is a Tic-Tac-Toe program
--I am trying to also practice unconventional coding methods such as gotos and monolithic programming
print("Tic Tac Toe Game")
print("_1_|_2_|_3_")
print("_4_|_5_|_6_")
print(" 7 | 8 | 9 ")
print("One player will be X and the other player will be Y. You will enter a number to place a piece at your desired spot. Refer to the above board for the numbers. Good Luck!")
--choosenAlready represents the board
choosenAlready={"_", "_", "_", "_", "_", "_", " ", " ", " "}
--Ask for user input
while (whichPiece~="X" and whichPiece~="O") do
  print("Does player 1 want to be X or O?")
  whichPiece=io.read()
  whichPiece=string.upper(whichPiece)
end
--Main program loop
while true do
  --This goto is for input validation
  ::firstGoto::
  print("Where does player 1 want to go, type the corresponding number.")
  io.write(string.format("_%s_", choosenAlready[1]))
  io.write(string.format("|_%s_|", choosenAlready[2]))
  io.write(string.format("_%s_\n", choosenAlready[3]))
  io.write(string.format("_%s_", choosenAlready[4]))
  io.write(string.format("|_%s_|", choosenAlready[5]))
  io.write(string.format("_%s_\n", choosenAlready[6]))
  io.write(string.format(" %s ", choosenAlready[7]))
  io.write(string.format("| %s |", choosenAlready[8]))
  io.write(string.format(" %s\n", choosenAlready[9]))
  piece=tonumber(io.read())
  --input validation
  if (type(piece)~="number") then
    print("That is not a number!")
    goto firstGoto
  end
  if piece>9 or piece<1 then
    print("Please enter a number in between 1 to 9!")
    goto firstGoto
  end
  if (choosenAlready[piece]=="X" or choosenAlready[piece]=="O") then
    print("You have to choose a blank square!")
    goto firstGoto
  end
  --place the piece
  if whichPiece=="X" then
    table.remove(choosenAlready, piece)
    table.insert (choosenAlready, piece, "X")
  else
    table.remove(choosenAlready, piece)
    table.insert (choosenAlready, piece, "O")
  end
  --check if player 1 has won
  if ((choosenAlready[1]=="X" and choosenAlready[2]=="X" and choosenAlready[3]=="X") or (choosenAlready[1]=="X" and choosenAlready[4]=="X" and choosenAlready[7]=="X") or (choosenAlready[1]=="X" and choosenAlready[5]=="X" and choosenAlready[9]=="X") or (choosenAlready[1]=="O" and choosenAlready[2]=="O" and choosenAlready[3]=="O") or (choosenAlready[1]=="O" and choosenAlready[4]=="O" and choosenAlready[7]=="O") or (choosenAlready[1]=="O" and choosenAlready[5]=="O" and choosenAlready[9]=="O") or (choosenAlready[2]=="X" and choosenAlready[5]=="X" and choosenAlready[8]=="X") or (choosenAlready[2]=="O" and choosenAlready[5]=="O" and choosenAlready[8]=="O") or (choosenAlready[3]=="X" and choosenAlready[6]=="X" and choosenAlready[9]=="X") or (choosenAlready[3]=="X" and choosenAlready[5]=="X" and choosenAlready[7]=="X") or (choosenAlready[3]=="O" and choosenAlready[6]=="O" and choosenAlready[9]=="O") or (choosenAlready[3]=="O" and choosenAlready[5]=="O" and choosenAlready[7]=="O") or (choosenAlready[4]=="X" and choosenAlready[5]=="X" and choosenAlready[6]=="X") or (choosenAlready[4]=="O" and choosenAlready[5]=="O" and choosenAlready[6]=="O") or (choosenAlready[7]=="X" and choosenAlready[8]=="X" and choosenAlready[9]=="X") or (choosenAlready[7]=="O" and choosenAlready[8]=="O" and choosenAlready[9]=="O")) then
  print("Game Over!!!\nPlayer 1 wins!!!\nWell Played, Good Game!!!")
  io.write(string.format("_%s_", choosenAlready[1]))
  io.write(string.format("|_%s_|", choosenAlready[2]))
  io.write(string.format("_%s_\n", choosenAlready[3]))
  io.write(string.format("_%s_", choosenAlready[4]))
  io.write(string.format("|_%s_|", choosenAlready[5]))
  io.write(string.format("_%s_\n", choosenAlready[6]))
  io.write(string.format(" %s ", choosenAlready[7]))
  io.write(string.format("| %s |", choosenAlready[8]))
  io.write(string.format(" %s\n", choosenAlready[9]))
  os.exit()
  end
  --check if it is a draw with the board filling up
  drawCounter=0
  for i =1, 9, 1 do
    if (choosenAlready[i]~="_") and (choosenAlready[i]~=" ")then
      drawCounter=drawCounter+1
    end
    if drawCounter==9 then
      print("Game Over!!!\nIt is a draw!!!\nWell played, Good Game!!!")
      io.write(string.format("_%s_", choosenAlready[1]))
  io.write(string.format("|_%s_|", choosenAlready[2]))
  io.write(string.format("_%s_\n", choosenAlready[3]))
  io.write(string.format("_%s_", choosenAlready[4]))
  io.write(string.format("|_%s_|", choosenAlready[5]))
  io.write(string.format("_%s_\n", choosenAlready[6]))
  io.write(string.format(" %s ", choosenAlready[7]))
  io.write(string.format("| %s |", choosenAlready[8]))
  io.write(string.format(" %s\n", choosenAlready[9]))
      os.exit()
    end
  end
  --now it is player 2s turn, code is similiar to previous code for player 1
  ::secondGoto::
  print("Where does player 2 want to go, type the corresponding number.")
  io.write(string.format("_%s_", choosenAlready[1]))
  io.write(string.format("|_%s_|", choosenAlready[2]))
  io.write(string.format("_%s_\n", choosenAlready[3]))
  io.write(string.format("_%s_", choosenAlready[4]))
  io.write(string.format("|_%s_|", choosenAlready[5]))
  io.write(string.format("_%s_\n", choosenAlready[6]))
  io.write(string.format(" %s ", choosenAlready[7]))
  io.write(string.format("| %s |", choosenAlready[8]))
  io.write(string.format(" %s\n", choosenAlready[9]))
  piece=tonumber(io.read())
  --input validation
  if (type(piece)~="number") then
    print("That is not a number!")
    goto secondGoto
  end
  if piece>9 or piece<1 then
    print("Please enter a number in between 1 to 9!")
    goto secondGoto
  end
  if (choosenAlready[piece]=="X" or choosenAlready[piece]=="O") then
      print("You have to choose a blank square!")
    goto secondGoto
  end
  --place the piece
  if whichPiece~="X" then
    table.remove(choosenAlready, piece)
    table.insert (choosenAlready, piece, "X")
  else
    table.remove(choosenAlready, piece)
    table.insert (choosenAlready, piece, "O")
  end
  --check if player 2 won
  if ((choosenAlready[1]=="X" and choosenAlready[2]=="X" and choosenAlready[3]=="X") or (choosenAlready[1]=="X" and choosenAlready[4]=="X" and choosenAlready[7]=="X") or (choosenAlready[1]=="X" and choosenAlready[5]=="X" and choosenAlready[9]=="X") or (choosenAlready[1]=="O" and choosenAlready[2]=="O" and choosenAlready[3]=="O") or (choosenAlready[1]=="O" and choosenAlready[4]=="O" and choosenAlready[7]=="O") or (choosenAlready[1]=="O" and choosenAlready[5]=="O" and choosenAlready[9]=="O") or (choosenAlready[2]=="X" and choosenAlready[5]=="X" and choosenAlready[8]=="X") or (choosenAlready[2]=="O" and choosenAlready[5]=="O" and choosenAlready[8]=="O") or (choosenAlready[3]=="X" and choosenAlready[6]=="X" and choosenAlready[9]=="X") or (choosenAlready[3]=="X" and choosenAlready[5]=="X" and choosenAlready[7]=="X") or (choosenAlready[3]=="O" and choosenAlready[6]=="O" and choosenAlready[9]=="O") or (choosenAlready[3]=="O" and choosenAlready[5]=="O" and choosenAlready[7]=="O") or (choosenAlready[4]=="X" and choosenAlready[5]=="X" and choosenAlready[6]=="X") or (choosenAlready[4]=="O" and choosenAlready[5]=="O" and choosenAlready[6]=="O") or (choosenAlready[7]=="X" and choosenAlready[8]=="X" and choosenAlready[9]=="X") or (choosenAlready[7]=="O" and choosenAlready[8]=="O" and choosenAlready[9]=="O")) then
  print ("Game Over!!!\nPlayer 2 wins!!!\nWell Played, Good Game!!!")
  io.write(string.format("_%s_", choosenAlready[1]))
  io.write(string.format("|_%s_|", choosenAlready[2]))
  io.write(string.format("_%s_\n", choosenAlready[3]))
  io.write(string.format("_%s_", choosenAlready[4]))
  io.write(string.format("|_%s_|", choosenAlready[5]))
  io.write(string.format("_%s_\n", choosenAlready[6]))
  io.write(string.format(" %s ", choosenAlready[7]))
  io.write(string.format("| %s |", choosenAlready[8]))
  io.write(string.format(" %s\n", choosenAlready[9]))
  os.exit()
end
--check if it is a draw
  drawCounter=0
  for i =1, 9, 1 do
    if (choosenAlready[i]~="_") and (choosenAlready[i]~=" ")then
      drawCounter=drawCounter+1
    end
    --print(drawCounter, " b")
    if drawCounter==9 then
      print("Game Over!!!\nIt is a draw!!!\nWell played, Good Game!!!")
      io.write(string.format("_%s_", choosenAlready[1]))
      io.write(string.format("|_%s_|", choosenAlready[2]))
      io.write(string.format("_%s_\n", choosenAlready[3]))
      io.write(string.format("_%s_", choosenAlready[4]))
      io.write(string.format("|_%s_|", choosenAlready[5]))
      io.write(string.format("_%s_\n", choosenAlready[6]))
      io.write(string.format(" %s ", choosenAlready[7]))
      io.write(string.format("| %s |", choosenAlready[8]))
      io.write(string.format(" %s\n", choosenAlready[9]))
      os.exit()
    end
  end
end