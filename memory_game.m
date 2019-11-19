clc
clear

fprintf('\n**********************************************\n')
fprintf('*  Name:  Alexa Nevin   Date:  11/18/19        *\n')
fprintf('*  Group Q                                     *\n')
fprintf('*  Instructor:  Krista Kecskemety              *\n')                       
fprintf('************************************************\n')

%Game will be made of two different arrays, one displaying the gameboard
%that the user sees, and the other being filled with the cards actual
%values. User will select two cards at a time from the filled array and
%assign the blank array of those spots the values of the filled array. If
%cards match, add a point and change * to MATCH. Keep playing until all
%spots are equal to MATCH on blank array

playAgain = 1;
while playAgain == 1
    
    %Creating arrays
    blankArray = ["blank","blank","blank", "blank"; "blank","blank","blank", "blank"; "blank","blank","blank", "blank"];
    filledArray = ["BRUTUS", "BRUTUS", "OSU", "OSU"; "BUCKEYES", "BUCKEYES", "SLOOPY", "SLOOPY"; "OHIO", "OHIO", "COLUMBUS", "COLUMBUS"];
    %filledARray needs to be shuffled here by using a random function

    matches = 0;
    while matches < 6
        %gets user input for card choices and makes sure the input is valid
        card1row = input("Please select the row (between 1-3) for the first card that you want to flip over. Your choice: ")
        if card1row < 1 || card1row > 3
            card1row = input("This number is invalid. Please enter a number between 1 and 3 inclusive. Your choice: ")
        end

        card1col = input("Please select the column (between 1-4) for the first card that you want to flip over. Your choice: ")
        if card1col < 1 || card1row > 4
            card1col = input("This number is invalid. Please enter a number between 1 and 4 inclusive. Your choice: ")
        end
        
      
        %"flips over" card selected by player
        blankArray(card1row, card1col) = filledArray(card1row, card1col);
        blankArray
        pause(2)
        clc
        blankArray(card1row, card1col) = "blank";

        
        card2row = input("Please select the row (between 1-3) for the second card that you want to flip over. Make sure the card is in a different spot than the first choice. Your choice: ")
        if card2row < 1 || card1row > 3
            card2row = input("This number is invalid. Please enter a number between 1 and 3 inclusive. Your choice: ")
        end

        card2col = input("Please select the column (between 1-4) for the second card that you want to flip over. Make sure the card is in a different spot than the first choice. Your choice: ")
        if card2col < 1 || card1row > 4
            card2col = input("This number is invalid. Please enter a number between 1 and 4 inclusive. Your choice: ")
        end

        %"flips over" card selected by player
        blankArray(card2row, card2col) = filledArray(card2row, card2col);
        blankArray
        pause(2)
        clc
        blankArray(card2row, card2col) = "blank";

        %if they have a match set those cards to filled array
        if filledArray(card1row, card1col) == filledArray(card2row, card2col)
            %match
            blankArray(card1row, card1col) = filledArray(card1row, card1col);
            blankArray(card2row, card2col) = filledArray(card2row, card2col);
            matches = matches + 1
        end

        %display game board after last card selection
        blankArray
        matches
    end

    fprintf("WINNER! CONGRATULATIONS! YOU HAVE MATCHED ALL THE CARDS! \n")
    
    %ask user if they want to play again
    playAgain = input("Would you like to play again? Enter 1 for yes and 0 for no. Your Choice: ")
    if playAgain ~= 0 && playAgain ~= 1
        playAgain = input ("Invalid choice. Please enter 0 or 1. Your Choice: ")
    end
    
    %clear board for new game
    clc
    
end

fprintf("end game")
%quit command here



