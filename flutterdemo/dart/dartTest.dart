main(List<String> args) {
  var name = '张三';
  print(name);
  // name = 20; dart强类型语言
  print('${name.runtimeType}');

  const sex = '男'; //编译时期常量
  // sex = '';

  Object num = 20;
  num = "test";
  print(num);

  dynamic num1 = '200';
  num1 = 199;
  print(num1);

  //注意static final const的区别
}
