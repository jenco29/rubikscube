//size 2048- only edge orientation (flipped or not)
import java.util.Map;

//edge piece, orientation
HashMap<int, int> edgeMoves = new HashMap<int, int>();

//encoded into 11 bit int, eac bit orientation of 1 edge
//gets orientation of every piece
int t=0;
int v=2;
for(int i=0; i<e; i++){
    t = t*v;
    
}

//uses index of every piece
for(Layout e : edges){
    edgeMoves.put(e, t);
}

