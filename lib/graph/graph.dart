class Graph {
  Map<String, List<String>> adjacencyList = {};
  void addVertex(String vertex) {
    if (!adjacencyList.containsKey(vertex)) {
      adjacencyList[vertex] = [];
    }
  }

  void printGraph() {
    adjacencyList.forEach((key, value) {
      print('$key: ${value.join(', ')}');
    });
  }
}

void main() {
  Graph graph = Graph();
  graph.addVertex('A');
  graph.addVertex('B');
  graph.printGraph();
}
