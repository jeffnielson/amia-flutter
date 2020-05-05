// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Grid on _GridBase, Store {
  final _$boxNumbersAtom = Atom(name: '_GridBase.boxNumbers');

  @override
  List<int> get boxNumbers {
    _$boxNumbersAtom.context.enforceReadPolicy(_$boxNumbersAtom);
    _$boxNumbersAtom.reportObserved();
    return super.boxNumbers;
  }

  @override
  set boxNumbers(List<int> value) {
    _$boxNumbersAtom.context.conditionallyRunInAction(() {
      super.boxNumbers = value;
      _$boxNumbersAtom.reportChanged();
    }, _$boxNumbersAtom, name: '${_$boxNumbersAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'boxNumbers: ${boxNumbers.toString()}';
    return '{$string}';
  }
}
