#source('../GraphExample/Graph.dart');
#source('../GraphExample/Stack.dart');
#source('BreadthFirstPaths.dart');

void main() {
  Graph G = new Graph(6);
  G.addEdge(0, 5);
  G.addEdge(2, 4);
  G.addEdge(2, 3);
  G.addEdge(1, 2);
  G.addEdge(0, 1);
  G.addEdge(3, 4);
  G.addEdge(3, 5);
  G.addEdge(0, 2);
  
  int s = 0;
  
  BreadthFirstPaths bfs = new BreadthFirstPaths(G, s);
  
  StringBuffer sb = new StringBuffer();
  for (int v = 0; v < G.V; v++) {
    if (bfs.hasPathTo(v)) {
      sb.add("${s} to ${v}: ");
      for (int x in bfs.pathTo(v)) {
        if (x == s) {
          sb.add("${x}");
        } else {
          sb.add("-${x}");
        }
      }
      sb.add("\n");
    } else {
      sb.add("${s} to ${v}: not connected");
    }
  }
  
  print(sb.toString());
}
