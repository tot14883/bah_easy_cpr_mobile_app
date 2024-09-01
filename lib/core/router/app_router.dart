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
        return CustomPageRouteBuilder.route<bool>(
          name: PrivacyScreen.routeName,
          builder: (ctx) => PrivacyScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case RescueBreathScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: RescueBreathScreen.routeName,
          builder: (ctx) => const RescueBreathScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case RhythmicCprScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: RhythmicCprScreen.routeName,
          builder: (ctx) => const RhythmicCprScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case PatientRecoveryPositionScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: PatientRecoveryPositionScreen.routeName,
          builder: (ctx) => const PatientRecoveryPositionScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case ObserveBreathingPatternsScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: ObserveBreathingPatternsScreen.routeName,
          builder: (ctx) => const ObserveBreathingPatternsScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case MenuCprScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: MenuCprScreen.routeName,
          builder: (ctx) => const MenuCprScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case InstructionAedScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: InstructionAedScreen.routeName,
          builder: (ctx) => const InstructionAedScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case FindingUnconsciousPersonScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: FindingUnconsciousPersonScreen.routeName,
          builder: (ctx) => const FindingUnconsciousPersonScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case CprSolutionScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: CprSolutionScreen.routeName,
          builder: (ctx) => const CprSolutionScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case CprFollowInstructionScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: CprFollowInstructionScreen.routeName,
          builder: (ctx) => const CprFollowInstructionScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case CheckingAreaSaftyScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: CheckingAreaSaftyScreen.routeName,
          builder: (ctx) => const CheckingAreaSaftyScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      case ProcessingCprScreen.routeName:
        return CustomPageRouteBuilder.route<bool>(
          name: ProcessingCprScreen.routeName,
          builder: (ctx) => const ProcessingCprScreen(),
          transitionType: RouteTransition.defaultAnimation,
        );

      default:
        assert(false, 'this should not be reached');
        return null;
    }
  }
}
