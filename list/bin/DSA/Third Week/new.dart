// //! Graph
// class Graph{
//   Map<int, List<int>> graph = {};
//   void insertVertex(int vertex){
//     graph[vertex] = [];
//   }
//   void insertEdge(int vertex1, int vertex2){
//     graph[vertex1]?.add(vertex2);
//     graph[vertex2]?.add(vertex1);
//   }

//   // BFS
//   void bfs(int start){
//     var visited = List<bool>.filled(graph.length, false);
//     List<int> arr = [];
//     visited[start] = true;
//     arr.add(start);

//     while(arr.isNotEmpty){
//       var vertex = arr.removeAt(0);
//       print(vertex);

//       for(var adj in graph[vertex]!){
//         if(!visited[adj]){
//           visited[adj] = true;
//           arr.add(adj);
//         }
//       }
//     }
//   }

//   // DFS

//   void dfs(int start){
//     var visited = List.filled(graph.length, false);
//     dfsHelper(start,visited);
//   }

//   void dfsHelper(int vertex, List<bool> visited) {
//     visited[vertex] = true;
//     print(vertex);

//     for(var adj in graph[vertex]!){
//       if(!visited[adj]){
//         dfsHelper(adj, visited);
//       }
//     }
//   }
// }

// void main(List<String> args) {
//   Graph graph = Graph();

//   graph.insertVertex(0);
//   graph.insertVertex(1);
//   graph.insertVertex(2);
//   graph.insertVertex(3);
//   graph.insertVertex(4);
//   graph.insertVertex(5);
//   graph.insertVertex(6);
//   graph.insertEdge(0, 1);
//   graph.insertEdge(0, 2);
//   graph.insertEdge(1, 3);
//   graph.insertEdge(1, 4);
//   graph.insertEdge(2, 5);
//   graph.insertEdge(2, 6);
//   graph.dfs(1);
// }

//! Min Heap

// class MinHeap {
//   List<int> arr = [];

//   void insert(int data) {
//     arr.add(data);
//     shiftUp(arr.length - 1);
//   }

//   void shiftUp(int index) {
//     while (index > 0) {
//       int parentIndex = (index - 1) ~/ 2;
//       if (arr[parentIndex] > arr[index]) {
//         swapping(parentIndex, index);
//         index = parentIndex;
//       } else {
//         break;
//       }
//     }
//   }

//   int deleteMin() {
//     if (arr.isEmpty) {
//       print('Heap is empty');
//     }
//     int min = arr[0];
//     int last = arr.removeLast();

//     if (arr.isNotEmpty) {
//       arr[0] = last;
//       shiftDown(0);
//     }
//     return min;
//   }

//   void swapping(int parentIndex, int index) {
//     int temp = arr[parentIndex];
//     arr[parentIndex] = arr[index];
//     arr[index] = temp;
//   }

//   void shiftDown(int index) {
//     while (2 * index + 1 < arr.length) {
//       int leftChildIndex = 2 * index + 1;
//       int rightChildIndex = 2 * index + 2;
//       int smallestChildIndex = leftChildIndex;

//       if(rightChildIndex < arr.length && arr[rightChildIndex] < arr[leftChildIndex]){
//         smallestChildIndex = rightChildIndex;
//       }
//       if(arr[index] > arr[smallestChildIndex]) {
//         swapping(index, smallestChildIndex);
//         index = smallestChildIndex;
//       } else {
//         break;
//       }
//     }
//   }

//   void printHeap(){
//     for(int i = 0; i < arr.length; i++){
//       print(arr[i]);
//     }
//   }
// }
// void main(List<String> args) {
//   MinHeap m = MinHeap();
//   m.insert(10);
//   m.insert(54);
//   m.insert(2);
//   m.insert(65);
//   m.insert(1);
//   m.insert(12);
//   m.insert(23);
//   m.printHeap();
// }
//! Max Heap
// class MaxHeap{
//   List<int> heap = [];
//   void insert(int data){
//     heap.add(data);
//     shiftUp(heap.length - 1);
//   }
//   int deleteMax(){
//     if(heap.isEmpty){
//       print('Heap is empty');
//     }

//     int max = heap[0];
//     int last = heap.removeLast();

//     if(heap.isNotEmpty){
//       heap[0] = last;
//       shiftDown(0);
//     }
//     return max;
//   }
  
//   void shiftUp(int index) {
//     int parentIndex = (index - 1) ~/ 2;
//     if(heap[parentIndex] < heap[index]){
//       swapp(parentIndex,index);
//       shiftUp(parentIndex);
//     }
//   }
  
//   void shiftDown(int index) {
//     int left = 2 * index + 1;
//     int right = 2 * index + 2;
//     int largest = index;
//     if(left < heap.length && heap[left] > heap[largest]){
//       largest = left;
//     }
//     if(right < heap.length && heap[right] > heap[largest]){
//       largest = right;
//     }
//     if(largest != index) {
//       swapp(index, largest);
//       shiftDown(largest);
//     }
//   }
  
//   void swapp(int parentIndex, int index) {
//     int temp = heap[parentIndex];
//     heap[parentIndex] = heap[index];
//     heap[index] = temp;
//   }

//   void printHeap(){
//     for(int i = 0; i < heap.length; i++){
//       print(heap[i]);
//     }
//   }

// }

// void main(List<String> args) {
//   MaxHeap m = MaxHeap();
//   m.insert(10);
//   m.insert(54);
//   m.insert(2);
//   m.insert(65);
//   m.insert(1);
//   m.insert(12);
//   m.insert(23);
//   m.printHeap();
// }

