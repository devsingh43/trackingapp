import 'package:get/get.dart';
import 'package:vehicle_detection/repository/authentication_repository/authentication_repository.dart';

class MailVerificationController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    sendVerificationEmail();
  }

  Future<void> sendVerificationEmail() async{
  try{
    await AuthenticationRepository.instance.sendEmailVerification();

  }catch(e){
    //Helper.errorSnackBar(title:"on snap",message:e.toString());
  }

     }


  void setTimerForAutoRedirect(){}

  void manuallyCheckEmailVerificationStatus(){

  }
}