// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// CHECK:STDOUT: [
// CHECK:STDOUT:   {kind: 'NamespaceStart', text: 'namespace'},
// CHECK:STDOUT:   {kind: 'Name', text: 'Foo'},
// CHECK:STDOUT: {kind: 'Namespace', text: ';', subtree_size: 3},
// CHECK:STDOUT:     {kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {kind: 'Name', text: 'Foo'},
// CHECK:STDOUT:           {kind: 'NameExpression', text: 'Bar'},
// CHECK:STDOUT:         {kind: 'CallExpressionStart', text: '(', subtree_size: 2},
// CHECK:STDOUT:       {kind: 'CallExpression', text: ')', subtree_size: 3},
// CHECK:STDOUT:     {kind: 'ReturnType', text: '->', subtree_size: 4},
// CHECK:STDOUT:   {kind: 'FunctionDefinitionStart', text: '{', has_error: yes, subtree_size: 7},
// CHECK:STDOUT: {kind: 'FunctionDefinition', text: '}', subtree_size: 8},
// CHECK:STDOUT: {kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

namespace Foo;

// CHECK:STDERR: fail_arrow.carbon:[[@LINE+3]]:7: `fn` requires a `(` for parameters.
// CHECK:STDERR: fn Foo->Bar() {}
// CHECK:STDERR:       ^
fn Foo->Bar() {}
