import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(possibleMoves([[3,4],[1,2],[]]), [[[4], [1, 2], [3]], [[1, 3, 4], [2], []], [[3, 4], [2], [1]]]);
  });

//  test('Test Case 2', () {
//    expect(possibleMoves([[2,3,4],[1],[]]).contains([[2, 3, 4], [], [1]]), true);
//  });
//
//  test('Test Case 3', () {
//    expect(possibleMoves([[3,4],[1],[2]]).contains([[1,3,4],[],[2]]), true);
//  });
}
