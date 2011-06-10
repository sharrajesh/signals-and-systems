%rajesh
%this function finds the nearby value to v in the array x
function index=find_nearby(x,v)
absx=abs(x-v); %abs x diffed with v
sabsx=sort(absx); % sorted abs x
nz=find(absx==sabsx(1)); % now find the index for the list deviante x value
index=nz(1); % if there are multiple of them take the first value
end
