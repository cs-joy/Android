part of "route_import_part.dart";

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
       case RouteName.loadingScreenRoute:
        return MaterialPageRoute(builder: (_) => LoadingScreen());

      case RouteName.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());



        case RouteName.signinScreenRoute:
        return MaterialPageRoute(builder: (_) => SigninScreen());

          case RouteName.signupScreenRoute:
        return MaterialPageRoute(builder: (_) => SignupScreen());

         case RouteName.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());

         case RouteName.forgotOtpRoute:
        return MaterialPageRoute(builder: (_) => ForgotOtp());

         case RouteName.resetPasswordScreenRoute:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());

        case RouteName.informationScreenRoute:
        return MaterialPageRoute(builder: (_) => InformationScreen());

          case RouteName. informationSelectionScreenRoute:
        return MaterialPageRoute(builder: (_) =>  InformationSelectionScreen());

          case RouteName.shareInformationScreenRoute:
        return MaterialPageRoute(builder: (_) =>  ShareInformationScreen());

        case RouteName.strengthLevelScreenRoute:
        return MaterialPageRoute(builder: (_) =>  StrengthLevelScreen());

         case RouteName.subscriptionScreenRoute:
        return MaterialPageRoute(builder: (_) =>  SubscriptionScreen());
          case RouteName.confirmationScreenRoute:
        return MaterialPageRoute(builder: (_) =>  ConfirmationScreen());

         case RouteName.cardDetailsScreenRoute:
        return MaterialPageRoute(builder: (_) =>  CardDetailsScreen());

          case RouteName.subscriptionSuccessScreenRoute:
        return MaterialPageRoute(builder: (_) =>  SubscriptionSuccessScreen());

         case RouteName.homeScreenRoute:
        return MaterialPageRoute(builder: (_) =>  HomeScreen());

            case RouteName.mainLayoutRoute:
        return MaterialPageRoute(builder: (_) =>  MainLayout());

          case RouteName.workoutPlanScreenRoute:
        return MaterialPageRoute(builder: (_) =>  WorkoutPlanScreen());

        case RouteName.profileScreenRoute:
        return MaterialPageRoute(builder: (_) =>  ProfileScreen());

        case RouteName.recoveryHomeScreenRoute:
        return MaterialPageRoute(builder: (_) =>  RecoveryHomeScreen());
         case RouteName.editProfileScreenRoute:
        return MaterialPageRoute(builder: (_) =>  EditProfileScreen());

           case RouteName.notificationScreenRoute:
        return MaterialPageRoute(builder: (_) =>  NotificationScreen());

         case RouteName.manageSubscriptionRoute:
        return MaterialPageRoute(builder: (_) =>  ManageSubscriptionScreen());
         case RouteName.freeTrialSubscriptionScreenRoute:
        return MaterialPageRoute(builder: (_) =>  FreeTrialSubscriptionScreen());

           case RouteName.readyWarmupScreenRoute:
        return MaterialPageRoute(builder: (_) =>  ReadyWarmupScreen());

         case RouteName.warmupCounterScreenRoute:
        return MaterialPageRoute(builder: (_) =>  WarmupCounterScreen());

         case RouteName.flatBenchPressScreenRoute:
        return MaterialPageRoute(builder: (_) =>  FlatBenchPressScreen());

         case RouteName.warmupDoneScreenRoute:
        return MaterialPageRoute(builder: (_) =>  WarmupDoneScreen());


         case RouteName.resetAndRecoverFlatScreenRoute:
        return MaterialPageRoute(builder: (_) =>  ResetAndRecoverFlatScreen());


         case RouteName.trainingScreenRoute:
        return MaterialPageRoute(builder: (_) =>  TrainingScreen());

        //  case RouteName.trainingDetailsScreenRoute:
        // return MaterialPageRoute(builder: (_) =>  TrainingDetailsScreen());

    //

      case RouteName.inclineBenchPressScreenRoute:
        return MaterialPageRoute(builder: (_) => const InclineBenchPressScreen());

        case RouteName.resetRecoverInclineScreenRoute:
        return MaterialPageRoute(builder: (_) => const ResetRecoverInclineScreen());

        case RouteName.declineBenchPressScreenRoute:
        return MaterialPageRoute(builder: (_) => const DeclineBenchPressScreen());


        case RouteName.exerciseCompletedScreenRoute:
        return MaterialPageRoute(builder: (_) => const ExerciseCompletedScreen());

        //  case RouteName.workoutCompletedScreenRoute:
        // return MaterialPageRoute(builder: (_) => const WorkoutCompletedScreen());

            case RouteName.workoutCompleteScreenRoute:
        return MaterialPageRoute(builder: (_) => const WorkoutCompleteScreen());


        case RouteName.recoveryScreenRoute:
        return MaterialPageRoute(builder: (_) => const RecoveryScreen());


        // case RouteName.inclineBenchPressScreenRoute:
        // return MaterialPageRoute(builder: (_) => const InclineBenchPressScreen());

      default:
        return unDefineRoute();
    }
  }

  //CartScreen
  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text(AppString.noRoute)),
        body: Center(child: Text(AppString.noRoute)),
      ),
    );
  }
}
