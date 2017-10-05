import 'package:dart_algorithms/dart_algorithms.dart';
import 'package:test/test.dart';

main() {
  var graph = new Graph<int>();

  setUp(() {
    graph.addEdge(0, 1);
    graph.addEdge(0, 2);
    graph.addEdge(1, 3);
    graph.addEdge(2, 4);
  });

  test('graph operations', () {
    print(graph);
    graph.bfs(0);
    graph.dfs(0);
  });
}
