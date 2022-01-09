final color red = color(255, 0, 0);
final color blue = color(0, 0, 255);
final color white = color(255);
final color green = color(0, 190, 0);
final color orange = color(255, 100, 0);
final color yellow = color(255, 255, 0);

final int back = 0;
final int front = 1;
final int down = 2;
final int up = 3;
final int right = 4;
final int left = 5;

final int corner = 0;
final int edge = 1;
final int centre = 2;
final int core = 3;

//identity
final int[] PermIC = {1, 2, 3, 4, 5, 6, 7, 8};
final int[] PermIE = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
final int[] OrIC = {1,1,1,1,1,1,1,1};
final int[] OrIE = {1,1,1,1,1,1,1,1,1,1,1,1};

//front
final int[] PermFC = {1, 7, 3, 5, 2, 6, 4, 8};
final int[] PermFE = {1, 2, 3, 4, 5, 10, 9, 8, 6, 7, 11, 12};
final int[] OrFC = {0,1,0,1,2,0,2,0};
final int[] OrFE = {0,0,0,0,0,0,0,0,0,0,0,0};

//back
final int[] PermBC = {6, 5, 3, 4, 1, 2, 7, 8};
final int[] PermBE = {1, 2, 3, 4, 12, 6, 7, 11, 9, 10, 5, 8};
final int[] OrBC = {1,0,1,0,0,2,0,2};
final int[] OrBE = {0,0,0,0,0,0,0,0,0,0,0,0}; 

//left
final int[] PermLC = {6, 5, 3, 4, 1, 2, 7, 8};
final int[] PermLE = {5, 6, 3, 4, 2, 1, 7, 8, 9, 10, 11, 12};

//right
final int[] PermRC = {1, 2, 8, 7, 5, 6, 3, 4};
final int[] PermRE = {1, 2, 7, 8, 5, 6, 4, 3, 9, 10, 11, 12};

//up
final int[] PermUC = {5, 2, 3, 8, 4, 6, 7, 1};
final int[] PermUE = {9, 2, 12, 4, 5, 6, 7, 8, 3, 10, 11, 1};
final int[] OrUC = {2,0,0,2,1,0,0,1};
final int[] OrUE = {1,0,1,0,0,0,0,0,1,0,0,1};

//down
final int[] PermDC = {1, 6, 7, 4, 5, 3, 2, 8};
final int[] PermDE = {1, 11, 3, 10, 5, 6, 7, 8, 9, 2, 4, 12};
final int[] OrDC = {0,2,2,0,0,1,1,0};
final int[] OrDE = {0,1,0,1,0,0,0,0,0,1,1,0};
