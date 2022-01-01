/*
use prune tables
apply each move in group
check table for distance using the move
compare to current distance, apply if less
if more try next move
apply each move to the new layout and repeat until distance is 0
move onto next prune table

<StringList> solve = new <StringList>();

Move R = State of cube;
int n = stateToIndex(R);
int N = P1[n][1];

while(N > 0){
    for(int i=0; i<18; i++){
        Move R2 = ApplyMove(R, movs1[i]);
        n = stateToIndex(R2);
        int M = P1[n][1];

        if(M<N){
            N = M;
            R = R2;
            solve.Add(movs1[i]);
            break;
        }
    }
}
*/
