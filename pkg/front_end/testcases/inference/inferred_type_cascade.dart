// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/*@testedFeatures=inference*/
library test;

class A {
  int a;
  List<int> b;
  void m() {}
}

var /*@topType=A*/ v = new A()
  ..a = 1
  ..b.add(2)
  ..m();