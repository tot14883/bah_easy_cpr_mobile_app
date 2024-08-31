import 'package:bah_easy_cpr/core/router/custom_page_route_builder.dart';
import 'package:bah_easy_cpr/page/checking_area_safty_screen.dart';
import 'package:bah_easy_cpr/page/cpr_follow_instruction_screen.dart';
import 'package:bah_easy_cpr/page/cpr_solution_screen.dart';
import 'package:bah_easy_cpr/page/finding_unconscious_person_screen.dart';
import 'package:bah_easy_cpr/page/instruction_aed_screen.dart';
import 'package:bah_easy_cpr/page/menu_cpr_screen.dart';
import 'package:bah_easy_cpr/page/observe_breathing_patterns_screen.dart';
import 'package:bah_easy_cpr/page/patient_recovery_position_screen.dart';
import 'package:bah_easy_cpr/page/privacy_screen.dart';
import 'package:bah_easy_cpr/page/processing_cpr_screen.dart';
import 'package:bah_easy_cpr/page/rescue_breath_screen.dart';
import 'package:bah_easy_cpr/page/rhythmic_cpr_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRouterName = PrivacyScreen.routeName;

  static Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case PrivacyScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: PrivacyScreen.routeName,
          builder: (ctx) => PrivacyScreen(),
          transitionType: RouteTransition.fade,
        );

      case RescueBreathScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: RescueBreathScreen.routeName,
          builder: (ctx) => const RescueBreathScreen(),
          transitionType: RouteTransition.fade,
        );

      case RhythmicCprScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: RhythmicCprScreen.routeName,
          builder: (ctx) => const RhythmicCprScreen(),
          transitionType: RouteTransition.fade,
        );

      case PatientRecoveryPositionScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: PatientRecoveryPositionScreen.routeName,
          builder: (ctx) => const PatientRecoveryPositionScreen(),
          transitionType: RouteTransition.fade,
        );

      case ObserveBreathingPatternsScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: ObserveBreathingPatternsScreen.routeName,
          builder: (ctx) => const ObserveBreathingPatternsScreen(),
          transitionType: RouteTransition.fade,
        );

      case MenuCprScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: MenuCprScreen.routeName,
          builder: (ctx) => const MenuCprScreen(),
          transitionType: RouteTransition.fade,
        );

      case InstructionAedScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: InstructionAedScreen.routeName,
          builder: (ctx) => const InstructionAedScreen(),
          transitionType: RouteTransition.fade,
        );

      case FindingUnconsciousPersonScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: FindingUnconsciousPersonScreen.routeName,
          builder: (ctx) => const FindingUnconsciousPersonScreen(),
          transitionType: RouteTransition.fade,
        );

      case CprSolutionScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: CprSolutionScreen.routeName,
          builder: (ctx) => const CprSolutionScreen(),
          transitionType: RouteTransition.fade,
        );

      case CprFollowInstructionScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: CprFollowInstructionScreen.routeName,
          builder: (ctx) => const CprFollowInstructionScreen(),
          transitionType: RouteTransition.fade,
        );

      case CheckingAreaSaftyScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: CheckingAreaSaftyScreen.routeName,
          builder: (ctx) => const CheckingAreaSaftyScreen(),
          transitionType: RouteTransition.fade,
        );

      case ProcessingCprScreen.routeName:
        return CustomPageRouteBuilder.route(
          name: ProcessingCprScreen.routeName,
          builder: (ctx) => const ProcessingCprScreen(),
          transitionType: RouteTransition.fade,
        );

      default:
        assert(false, 'this should not be reached');
        return null;
    }
  }
}
