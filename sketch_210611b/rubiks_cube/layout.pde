//PERMUTATIONS

int[] CornerPermutationsI = {1, 2, 3, 4, 5, 6, 7, 8};
int[] EdgePermutationsI = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

int[] PermFC = {1, 7, 3, 5, 2, 6, 4, 8};
int[] PermFE = {1, 2, 3, 4, 5, 10, 9, 8, 6, 7, 11, 12};

int[] PermBC = {6, 5, 3, 4, 1, 2, 7, 8};
int[] PermBE = {1, 2, 3, 4, 12, 6, 7, 11, 9, 10, 5, 8};

int[] PermLC = {6, 5, 3, 4, 1, 2, 7, 8};
int[] PermLE = {5, 6, 3, 4, 2, 1, 7, 8, 9, 10, 11, 12};

int[] PermRC = {1, 2, 8, 7, 5, 6, 3, 4};
int[] PermRE = {1, 2, 7, 8, 5, 6, 4, 3, 9, 10, 11, 12};

int[] PermUC = {5, 2, 3, 8, 4, 6, 7, 1};
int[] PermUE = {9, 2, 12, 4, 5, 6, 7, 8, 3, 10, 11, 1};

int[] PermDC = {1, 6, 7, 4, 5, 3, 2, 8};
int[] PermDE = {1, 11, 3, 10, 5, 6, 7, 8, 9, 2, 4, 12};


//ORIENTATIONS

int[] CornerOrientationsI = {0,0,0,0,0,0,0,0};
int[] EdgeOrientationsI = {0,0,0,0,0,0,0,0,0,0,0,0};

int[] OrFC = {0,1,0,1,-1,0,-1,0};
int[] OrFE = {0,0,0,0,0,0,0,0,0,0,0,0};

int[] OrBC = {1,0,1,0,0,-1,0,-1};
int[] OrBE = {0,0,0,0,0,0,0,0,0,0,0,0}; 

int[] OrUC = {-1,0,0,-1,1,0,0,1};
int[] OrUE = {1,0,1,0,0,0,0,0,1,0,0,1};

int[] OrDC = {0,-1,-1,0,0,1,1,0};
int[] OrDE = {0,1,0,1,0,0,0,0,0,1,1,0};

int[] ApplyMove(int[] currentM, int[] mov, int type){
    int[] newM = new int[type];
    for(int i=0; i<type; i++){
        newM[i] = currentM[mov[i]-1];
    }
    return newM;

}