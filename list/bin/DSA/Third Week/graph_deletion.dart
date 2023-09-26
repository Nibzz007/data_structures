class Graph {
  Map<int, List<int>> adjacencyList = {};

  // Graph() {
  //   adjacencyList = {};
  // }

  void addEdge(int u, int v) {
    if (!adjacencyList.containsKey(u)) {
      adjacencyList[u] = [];
    }
    adjacencyList[u]!.add(v);
  }

  void deleteVertex(int v) {
    adjacencyList.forEach((u, neighbors) {
      neighbors.removeWhere((neighbor) => neighbor == v);
    });
    adjacencyList.remove(v);
  }
}

void main() {
  var graph = Graph();

  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(4, 1);

  print(graph.adjacencyList);

  graph.deleteVertex(3);

  print(graph.adjacencyList);
}
