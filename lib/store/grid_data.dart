import 'package:mobx/mobx.dart';
part 'grid_data.g.dart';

class Grid = _GridBase with _$Grid;

abstract class _GridBase with Store {
  @observable
  var boxNumbers = new List<int>.generate(30, (i) => i + 1);

  
  @action 
  List<int> getNumbers() {
    return(boxNumbers);
  }

  @action 
  int getAt(int a) {
    return boxNumbers[a];
  }
  
}