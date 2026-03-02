var _dir = point_direction(other.x, other.y, x, y);

// Empurra este inimigo um pouco para longe do outro
var _forca = 1; 
x += lengthdir_x(_forca, _dir);
y += lengthdir_y(_forca, _dir);