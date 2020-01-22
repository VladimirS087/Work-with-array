Program Add_Delete_Get_Array;

var
  mas: array [1..100] of integer;
  endNumberElementArray: integer;
  
procedure DeleteElementArray (numberElementArrayForDelete: integer);
var
  i: integer;

begin
  for i:= numberElementArrayForDelete to (endNumberElementArray - 1) do
    mas[i]:= mas[i + 1];
  
  endNumberElementArray:= (endNumberElementArray - 1);
end;

procedure AddElementArray (newElementArray: integer);
begin
  endNumberElementArray:= (endNumberElementArray + 1);
  mas[endNumberElementArray]:= newElementArray;
end;      

function GetCount: integer;

{var
  totalElementsArray: integer;
  
begin
  totalElementsArray:= 0;
  
  while true do
  if (mas[totalElementsArray + 1] >= '0') and (mas[totalElementsArray + 1] <= '9') then
  begin
    totalElementsArray:= totalElementsArray + 1;
    continue;
  end
  else
    break;
    
  Result:= totalElementsArray;}

begin
  Result:= endNumberElementArray;
end;

function GetItem(numberElementArray: integer): integer;

begin
  Result:= mas[numberElementArray];
end;

  
var
firstNumberElementArray, i: integer;
numberElementArrayForDelete: integer;
newElementArray: integer;
numberElementArray: integer;

begin
 firstNumberElementArray:= 1;
 //entry data
  writeln ('Write how much elements in array');
  readln (endNumberElementArray);

  writeln ('Write digit for each elements of array');
  for i:= firstNumberElementArray to endNumberElementArray do
    readln (mas[i]);
 //delete
  writeln ('Write the number of the element to remove');
  readln (numberElementArrayForDelete);
  
  DeleteElementArray (numberElementArrayForDelete);
  // output
  writeln ('Our array after delete is: ');
  for i:= 1 to endNumberElementArray do
  writeln (mas[i]);
  
  //add
  writeln ('Write digit for new element of array');
  readln (newElementArray);
  
  AddElementArray(newElementArray);
  
  writeln ('Our array after add new element is: ');
  for i:= 1 to endNumberElementArray do
  writeln (mas[i]);
  
  //GetCount
  writeln ('Total elements array: ', GetCount);
  
  //GetItem
  writeln ('Write number of element array for show');
  readln (numberElementArray);
  writeln ('Digit of this element of array is: ', GetItem(numberElementArray));
end.

