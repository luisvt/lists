import "package:lists/lists.dart";
import "package:test/test.dart";

void main() {
  test('', () {
    testContent();
  });
}

void testContent() {
  var base = <int>[0, 1, 2, 3, 4];
  var p1 = new ListPointer(base);
  var p2 = new ListPointer(base);
  expect((p1++)[0], 0, reason: "(p1++)[0]");
  expect(p1[0], 1, reason: "p1[0]");
  expect(0, (--p1)[0], reason: "(--p1)[0]");
  expect(true, p1 == p2, reason: "p1 == p2");
  expect(true, p1 == base, reason: "p1 == base");
  expect(false, p1 > p2, reason: "p1 > p2");
  expect(false, p1 < base, reason: "p1 < base");
  p1++;
  expect(false, p1 == p2, reason: "p1 == p2");
  expect(false, p1 == base, reason: "p1 == base");
  expect(true, p1 > p2, reason: "p1 > p2");
  expect(false, p1 < base, reason: "p1 < base");
  p2++;
  expect(true, p2 == p1, reason: "p2 == p1");
  expect(false, p2 == base, reason: "p2 == base");
  expect(false, p2 > p1, reason: "p2 > p1");
  expect(false, p2 < base, reason: "p2 < base");
  p1++;
  expect(base.sublist(p1.offset), p1, reason: "p1 sublist of base");
}
