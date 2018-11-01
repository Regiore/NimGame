/// @description Insert description here
// You can write your code in this editor
digit1 = 0;
digit2 = 0;  ///These are the binary count for each place
digit3 = 0;
change1 = [0,0,0];
change2 = [0,0,0];  ///These store what color increased the digit amount
change3 = [0,0,0]; ///stores 'r', 'g', 'b' if a change was made to that color
					//in that binary collumn

if(turn != "player")
{
	tempRed = red_count;
	tempGreen = green_count;
	tempBlue = blue_count;
	
	//do red calculations
	digit1 += tempRed & 1;
	if(digit1 == 1)
	{
		change1[0] = "r";
	}
	tempRed = tempRed >> 1;
	digit2 += tempRed & 1;
	if(digit2 == 1){change2[0] = "r";}
	tempRed = tempRed >> 1;
	digit3 += tempRed & 1;
	if(digit3 == 1){change3[0] = "r";}
	
	//Green calculations
	if(tempGreen & 1)
	{
		digit1 += 1;
		change1[1] = "g";
	}
	tempGreen = tempGreen >> 1;
	if(tempGreen & 1)
	{
		digit2 += 1;
		change2[1] = "g";
	}
	tempGreen = tempGreen >> 1;
	if(tempGreen & 1)
	{
		digit3 += 1;
		change3[1] = "g";
	}
	
	
	//Blue calculations
	if(tempBlue & 1)
	{
		digit1 += 1;
		change1[2] = "b";
	}
	tempBlue = tempBlue >> 1;
	if(tempBlue & 1)
	{
		digit2 += 1;
		change2[2] = "b";
	}
	tempBlue = tempBlue >> 1;
	if(tempBlue & 1)
	{
		digit3 += 1;
		change3[2] = "b";
	}
	
	//masterlist sees how many should be removed from said list
	masterList = [0,0,0];
	if(digit1 % 2 != 0) //if odd and remainder not 0
	{
			if(change1[0] != 0) //check if red needs added to possible change
			{
				masterList[0] += 1; 
			}
			if(change1[1] != 0) //check if green "".....""
			{
				masterList[1] += 1;
			}
			if(change1[2] != 0)  //check if blue "".....""
			{
				masterList[2] += 1;
			}
	}
	
	if(digit2 % 2 != 0) //if odd
	{
			if(change2[0] != 0)
			{
				masterList[0] += 2;
			}
			if(change2[1] != 0)
			{
				masterList[1] += 2;
			}
			if(change2[2] != 0)
			{
				masterList[2] += 2;
			}
	}
	
	if(digit3 % 2 != 0) //if odd
	{
			if(change3[0] != 0)
			{
				masterList[0] += 4;
			}
			if(change3[1] != 0)
			{
				masterList[1] += 4;
			}
			if(change3[2] != 0)
			{
				masterList[2] += 4;
			}
	}
		
	//remove from one of the master list storage [0] = red, [1] = green, [2] = blue
	//to much broken
	///to much sleep needed
	//sorry
	
}
