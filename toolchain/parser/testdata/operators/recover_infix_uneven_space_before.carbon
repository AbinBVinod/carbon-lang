// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'VariableIntroducer', text: 'var'},
// CHECK:STDOUT:     {kind: 'Name', text: 'n'},
// CHECK:STDOUT:     {kind: 'Literal', text: 'i8'},
// CHECK:STDOUT:   {kind: 'PatternBinding', text: ':', subtree_size: 3},
// CHECK:STDOUT:   {kind: 'VariableInitializer', text: '='},
// CHECK:STDOUT:     {kind: 'NameExpression', text: 'n'},
// CHECK:STDOUT:     {kind: 'NameExpression', text: 'n'},
// CHECK:STDOUT:   {kind: 'InfixOperator', text: '*', subtree_size: 3},
// CHECK:STDOUT: {kind: 'VariableDeclaration', text: ';', subtree_size: 9},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

// CHECK:STDERR: recover_infix_uneven_space_before.carbon:[[@LINE+3]]:15: Whitespace missing after binary operator.
// CHECK:STDERR: var n: i8 = n *n;
// CHECK:STDERR:               ^
var n: i8 = n *n;
