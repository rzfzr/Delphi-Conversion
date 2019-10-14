unit SFPLib;

interface

uses
  Math, Windows, SysUtils;

type
  SFPvalue = object
    S,F,P: Extended;
  end;

type
  RGBvalue = object
    R,G,B: Byte;
  end;

type
  RGBrange = object
    rmax,rmin: Byte;
    gmax,gmin: Byte;
    bmax,bmin: Byte;
  end;

type
  SFPrange = object
    smax,smin: Byte;
    fmax,fmin: Byte;
    pmax,pmin: Byte;
  end;

function GetRGBValue(pixel: Cardinal): RGBvalue;
function IsRGBInRange(RGB: RGBvalue; Range: RGBrange): Boolean;
function RGB2SFP(r,g,b: Byte): SFPvalue;

implementation

function GetRGBValue(pixel: Cardinal): RGBvalue;
var
  RGB: RGBvalue;

begin
  RGB.R   := GetRValue(pixel);
  RGB.G   := GetGValue(pixel);
  RGB.B   := GetBValue(pixel);
  Result  := RGB;
end;

function IsRGBInRange(RGB: RGBvalue; Range: RGBrange): Boolean;
begin
  if  (RGB.R >= Range.rmin) and (RGB.R <= Range.rmax) and
      (RGB.G >= Range.gmin) and (RGB.G <= Range.gmax) and
      (RGB.B >= Range.bmin) and (RGB.B <= Range.bmax) then
        Result := TRUE
  else
        Result := FALSE;
end;

function RGB2SFP(r,g,b: Byte): SFPvalue;
var
  SFP: SFPvalue;
  rsin,rcos: Real;

begin
  // the fun starts here :-)

  rsin := (sin(2/3*PI)*g/255 + sin(4/3*PI)*b/255)*180/PI;
  rcos := (r/255 + cos(2/3*PI)*g/255 + cos(4/3*PI)*b/255)*180/PI;

  SFP.S := (SQRT(SQR(sin(120*PI/180)*g + sin(240*PI/180)*b) + SQR(r+cos(120*PI/180)*g+cos(240*PI/180)*b)));
  SFP.F := (0.298*r + 0.594*g + 0.108*b);

  // it just begun ;-)

  if (r = g) and (g = b) then SFP.P := -1
   else
   begin
    if (r + g + b) = 0 then SFP.P := 0 else
      begin
        if ((rsin > 0) and (rcos < 0)) or ((rsin < 0) and (rcos < 0)) then
          SFP.P := 180*255/360 + (ArcTan(rsin/rcos)*(180/PI)*255/360)
        else if (rsin < 0) and (rcos > 0) then
          SFP.P := 255 + (ArcTan(rsin/rcos)*(180/PI)*255/360)
        else if (rcos = 0) then
        begin
          if (rsin > 0) then SFP.P := 90/360*255/360
          else if (rsin < 0) then SFP.P := 270/360*255/360
        end
        else
          SFP.P := ArcTan(rsin/rcos)*(180/PI)*255/360;
      end;
    end;

  // here it ends :-(

    Result := SFP;

end;

end.
 