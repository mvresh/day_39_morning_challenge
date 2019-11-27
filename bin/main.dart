// Tower of Hanoi
// https://www.ocf.berkeley.edu/~shidi/cs61a/w/images/f/f8/Hanoi0.png
// Find possible moves for the given state of Hanoi towers
// input: [[3,4],[1,2],[]]
// output: [[[1,3,4],[2],[]], [[3,4],[2],[1]], [[4],[1,2],[3]]]


import 'dart:convert';
import 'dart:collection';

List<List<List<int>>> possibleMoves(List<List<int>> currentState){

  List<List<List<int>>> finalMovesList = [];
  for(int i = 0; i < currentState.length;i++){
    for(int j = 0; j < currentState.length; j++){
      if (isValidMove(currentState, i, j)) {
        List<List<int>> currentStateCopy = [];
        for (List <int> tower in currentState) {
          List <int> tempTower = List.from(tower);
          currentStateCopy.add(tempTower);
        }
        currentStateCopy[j].insert(0, currentStateCopy[i][0]);
        currentStateCopy[i].removeAt(0);
        finalMovesList.add(currentStateCopy);
      }
    }
  }

  return finalMovesList;




//  //for each tower, you take the first item and compare it to the first items in other towers. if less, add it
//  //after adding, remove it from its tower
//  //its being done on the duplicate of original input
//  // and then add the duplicate to the finalMovesList
//
//  //
//  List<List<int>> structuredTowers = [];
//  towersAndPositions.forEach((tower){
//    List<int> currentTower = List.from(tower);
//    structuredTowers.add(currentTower);
//  });
//
////  List<ListQueue<int>> copyOfStructuredTowers = [];
////  for(ListQueue list in structuredTowers){
////    ListQueue<int> temp = ListQueue.from(list);
////    copyOfStructuredTowers.add(temp);
////  }
////  print(copyOfStructuredTowers);
//
//  structuredTowers.forEach((List<int> tower){
//    int index = structuredTowers.indexOf(tower);
//    print('index  : $index');
//    print(tower);
//    List<List<int>> copyOfCopyOfStructuredTowers = [];
//    for(List<int> list in structuredTowers){
//      List<int> temp = List.from(list);
//      copyOfCopyOfStructuredTowers.add(temp);
//    }
//    print(copyOfCopyOfStructuredTowers);
//    for(int i = 0; i < structuredTowers.length; i++){
//      print('i = $i');
//      if(tower.isNotEmpty && copyOfCopyOfStructuredTowers[i].isNotEmpty){
//        print('entered first if');
//        if(tower.first < copyOfCopyOfStructuredTowers[i].first){
//          print('entered second if');
//          print('copyOfCopyOfStructuredTowers[i]  - ${copyOfCopyOfStructuredTowers[i]}');
//          copyOfCopyOfStructuredTowers[i].insert(0,tower.first);
//          print(copyOfCopyOfStructuredTowers[i]);
//          print('tower  - ${tower}');
//          print(copyOfCopyOfStructuredTowers);
////          copyOfCopyOfStructuredTowers[i].removeAt(0);
//          copyOfCopyOfStructuredTowers[index].removeAt(0);
//
//          finalMovesList.add(copyOfCopyOfStructuredTowers.toList());
//          print(finalMovesList);
//        }
//      }
//    }
//
//  }
//  );
//  return finalMovesList;
//
//
//
//
//
////  List<List<int>> copyOfTowersAndPositions = [];
////  for(int i = 0; i < towersAndPositions.length;i++){
////    List<int> temp = towersAndPositions[i];
////    copyOfTowersAndPositions.add(temp);
////  }
////  for(int i = 0; i < copyOfTowersAndPositions.length;i++){
////    List<List<int>> copyOfCopyOfTowersAndPositions = [];
////    for(int i = 0; i < towersAndPositions.length;i++){
////      List<int> temp = copyOfTowersAndPositions[i];
////      copyOfCopyOfTowersAndPositions.add(temp);
////    }
////
////
////  }
////  towersAndPositions.forEach((tower){
////    int index = towersAndPositions.indexOf(tower);
////    List<List<int>> towersListWithoutCurrentTower = [];
////    towersListWithoutCurrentTower = List.from(towersAndPositions.sublist(0,index));
////    towersAndPositions.sublist(index+1).forEach((tower){towersListWithoutCurrentTower.add(tower);});
////    for(int i = 0; i < towersListWithoutCurrentTower.length; i++){
////     if(towersListWithoutCurrentTower[i].isNotEmpty && tower.isNotEmpty){
////       if(towersListWithoutCurrentTower[i][0] > tower[0]){
////         towersListWithoutCurrentTower[i].add(tower[0]);
////         tower.removeAt(0);
////
////       }
////     }
////    }
////  });
//  return [];
}

bool isValidMove(List<List<int>> currentState, int i, int j) {
  if (currentState[i].isEmpty) {
    return false;
  }

  if (currentState[j].isEmpty) {
    return true;
  }

  return (currentState[i].first < currentState[j].first);
}

main() {
  print(possibleMoves([[3,4],[1,2],[]]));
}
