import 'package:intl/intl.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:nubank/app/module/home/shared/account_options.dart';
import '../../shared/usario.dart';

part 'home_controller.g.dart';

@Injectable() 
class HomePageController = _HomePageControllerBase with _$HomePageController;

abstract class _HomePageControllerBase with Store {
  
  var currencyFormatter = NumberFormat('#,##0.00', 'ID');

  @observable 
  bool loading = false;

  Usuario userData = Usuario(
     name: 'Victor', 
     balance: 6000, 
     loan: 25000, 
     invoice: 200, 
     limit: 2600
   );
  
  List<AccountOptions>  accountOptions = [

    AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Pix'),
    AccountOptions(path: 'lib/assets/icons/bar-code.png', title: 'Pagar'),
    AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Transferir'),
    AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Depositar'),
    AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Pegar emprestado'),
    AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Recarga de celular'),
    AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Cobrar'),
    AccountOptions(path: 'lib/assets/icons/heart.png', title: 'Doação'),
   
   ];

  @action
  Future<void> init() async {
   
   loading = true;
   await Future.delayed(Duration(milliseconds: 2000));

  //  accountOptions.add(AccountOptions(path: 'lib/assets/icons/loan.png', title: 'Pix'));

   List.from(accountOptions);

   loading = false;

  }

}