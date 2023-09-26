class Graph {
  Map<int, List<int>> map = {};

  void insertVertex(int vertex) {
    map[vertex] = [];
  }

  void insertEdge(int vertex1, int vertex2) {
    map[vertex1]?.add(vertex2);
    map[vertex2]?.add(vertex1);
  }

  void getVertices() {
    print(map.keys.toList());
  }

  void getNeighbour(int vertex) {
    print(map[vertex]?.toList());
  }

  void bfs(int start) {
    var visited = List<bool>.filled(map.length, false);
    List<int> arr = [];

    visited[start] = true;
    arr.add(start);

    while (arr.isNotEmpty) {
      var vertex = arr.removeAt(0);
      print(vertex);

      for (var adj in map[vertex]!) {
        if (!visited[adj]) {
          visited[adj] = true;
          arr.add(adj);
        }
      }
    }
  }

  void dfs(int startVertex) {
    List<bool> visited = List<bool>.generate(map.length, (index) => false);
    dfsHelper(startVertex, visited);
  }

  void dfsHelper(int vertex, List<bool> visited) {
    visited[vertex] = true;
    print(vertex);

    for (int neighbor in map[vertex]!) {
      if (!visited[neighbor]) {
        dfsHelper(neighbor, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  graph.insertVertex(0);
  graph.insertVertex(1);
  graph.insertVertex(2);
  graph.insertVertex(3);
  graph.insertVertex(4);
  graph.insertVertex(5);
  graph.insertVertex(6);
  graph.insertEdge(0, 1);
  graph.insertEdge(0, 2);
  graph.insertEdge(1, 3);
  graph.insertEdge(1, 4);
  graph.insertEdge(2, 5);
  graph.insertEdge(2, 6);
  // graph.insertEdge(3, 4);

  // graph.getVertices();
  // graph.getNeighbour(4);

  // print("bfs");
  // graph.bfs(0);
  print('dfs');
  graph.dfs(0);
// }
}
//! BFS
// class Graph {
//   int V; // number of vertices
//   List<List<int>> adjList; // adjacency list

//   Graph(int vertices) {
//     V = vertices;
//     adjList = List<List<int>>.filled(V, []);
//   }

//   // add an edge between v and w
//   void addEdge(int v, int w) {
//     adjList[v].add(w);
//   }

//   // BFS traversal starting from vertex s
//   void bfs(int s) {
//     // Mark all the vertices as not visited
//     bool visited[] = List<bool>.filled(V, false);

//     // Create a queue for BFS
//     List<int> queue = [];

//     // Mark the current node as visited and enqueue it
//     visited[s] = true;
//     queue.add(s);

//     while (queue.isNotEmpty) {
//       // Dequeue a vertex from queue and print it
//       s = queue.removeAt(0);
//       print(s);

//       // Get all adjacent vertices of the dequeued vertex s
//       // If an adjacent vertex has not been visited, then mark it
//       // visited and enqueue it
//       for (int i = 0; i < adjList[s].length; ++i) {
//         int n = adjList[s][i];
//         if (!visited[n]) {
//           visited[n] = true;
//           queue.add(n);
//         }
//       }
//     }
//   }
// }

// void main() {
//   Graph g = Graph(4);

//   g.addEdge(0, 1);
//   g.addEdge(0, 2);
//   g.addEdge(1, 2);
//   g.addEdge(2, 0);
//   g.addEdge(2, 3);
//   g.addEdge(3, 3);

//   print("BFS starting from vertex 2:");
//   g.bfs(2);
// }

//! DFS
// class Graph {
//   int vertices;
//   List<List<int>> adjacencyList;

//   Graph(int v) {
//     vertices = v;
//     adjacencyList = List<List<int>>.generate(v, (_) => []);
//   }

//   void addEdge(int src, int dest) {
//     adjacencyList[src].add(dest);
//   }

//   void DFS(int start) {
//     Set<int> visited = Set<int>();
//     _DFSHelper(start, visited);
//   }

//   void _DFSHelper(int vertex, Set<int> visited) {
//     visited.add(vertex);
//     print(vertex);

//     for (int neighbor in adjacencyList[vertex]) {
//       if (!visited.contains(neighbor)) {
//         _DFSHelper(neighbor, visited);
//       }
//     }
//   }
// }

// void main() {
//   Graph graph = Graph(4);
//   graph.addEdge(0, 1);
//   graph.addEdge(0, 2);
//   graph.addEdge(1, 2);
//   graph.addEdge(2, 0);
//   graph.addEdge(2, 3);
//   graph.addEdge(3, 3);

//   print("Depth-First Traversal (starting from vertex 2):");
//   graph.DFS(2);
// }
