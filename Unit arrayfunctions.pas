unit arrayfunctions;

interface 

procedure DeleteElementArray (numberElementArrayForDelete: integer);
procedure AddElementArray (newElementArray: integer);
function GetCount: integer;
function GetItem(numberElementArray: integer): integer;


implementation
var 
  mas: array [1..100] of integer;
  endNumberElementArray: integer;
//delete
procedure DeleteElementArray (numberElementArrayForDelete: integer); 
var
  i: integer;

begin
  for i:= numberElementArrayForDelete to (endNumberElementArray - 1) do
    mas[i]:= mas[i + 1];
  
  endNumberElementArray:= (endNumberElementArray - 1);
end;

//add
procedure AddElementArray (newElementArray: integer);
  
begin
  endNumberElementArray:= (endNumberElementArray + 1);
  mas[endNumberElementArray]:= newElementArray;
end;    

//GetCount
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
    
  Result:= totalElementsArray};
begin
  Result:= endNumberElementArray;
end;

//GetItem
function GetItem(numberElementArray: integer): integer;

begin
  Result:= mas[numberElementArray];
end;

end.  