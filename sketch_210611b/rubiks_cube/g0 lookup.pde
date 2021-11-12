//size 2048- only edge orientation 0 or 1(flipped or not)
import java.util.Map;

//edge piece, orientation
HashMap<int, int> edgeOr = new HashMap<int, int>();



//encoded into 11 bit int, eac bit orientation of 1 edge
//gets orientation of every piece
//even # good and bad edges- avg. 6

int[] or = new int[12];

for(int i=0; i<12; i++){
    edgeOr.put(i, edges[i].orientation);
    or[i] = edges[i].orientation;

}

//v^n -1 << 4095


int returnOrientation(int[] or){
    int t=0;
    int v=2;
    for(int i=0; i<e; i++){
        t = t*v;
        t = t + or[i];
    }
    return t;
}


//uses index of every piece
for(Layout e : edges){
    edgeOr.put(e, t);
}

