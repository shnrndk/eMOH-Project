import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '../globals.dart' as globals;

Future<Baby> fetchBaby() async {
  print('fetch Baby function');
  //String _babyId = globals.BabyId + babyIndex;
  final response = await http.get(
      'https://protected-bayou-52277.herokuapp.com/babies/viewbyid/${globals.babyId}');
  print('status code');
  print(response.statusCode);
  print(globals.babyId);
  print(response.body);
  // final json = jsonDecode(response.body);
  if (response.statusCode == 200) {

    return Baby.fromJson(json.decode(response.body)[0]);
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load Baby');
  }
}

class Baby {
  String layingFaceDownOcc, layingFaceDownCon, layingFaceDownOf;
  String movingObjectOcc, movingObjectCon, movingObjectOf;
  String bigSoundOcc, bigSoundCon, bigSoundOf;
  String ohhOcc, ohhCon, ohhOf;
  String smileOcc, smileCon, smileOf;

  String raiseHeadOcc, raiseHeadCon, raiseHeadOf;
  String playFingersOcc, playFingersCon, playFingersOf;
  String strechHandOcc, strechHandCon, strechHandOf;
  String soundTurnOcc, soundTurnCon, soundTurnOf;
  String singleLetterSoundOcc, singleLetterSoundCon, singleLetterSoundOf;
  String laughtLoudOcc, laughtLoudCon, laughtLoudOf;

  String raiseHead2Occ, raiseHead2Con, raiseHead2Of;
  String turnFaceUpDownOcc, turnFaceUpDownCon, turnFaceUpDownOf;
  String swithObjectsOcc, swithObjectCon, swithObjectOf;
  String makeSoundOcc, makeSoundCon, makeSoundOf;

  String sittingOcc, sittingCon, sittingOf;
  String holdingHimSelfOcc, holdingHimSelfCon, holdingHimSelfOf;
  String thumbForeOcc, thumbForeCon, thumbForeOf;
  String followingVoiceOcc, followingVoiceCon, followingVoiceOf;
  String proWordsOcc, proWordsCon, proWordsOf;
  String understandOcc, understandCon, understandOf;

  String walkingWithHelpOcc, walkingWithHelpCon, walkingWithHelpOf;
  String canSpeakOcc, canSpeakCon, canSpeakOf;
  String handPointOcc, handPointCon, handPointOf;
  String canRollOcc, canRollCon, canRollOf;
  String canIdentifyOcc, canIdentifyCon, canIdentifyOf;

  String walkingWithoutHelpOcc, walkingWithoutHelpCon, walkingWithoutHelpOf;
  String canClimbOcc, canClimbCon, canClimbOf;
  String makeTowerOcc, makeTowerCon, makeTowerOf;
  String eatHimselfOcc, eatHimselfCon, eatHimselfOf;
  String canTalkTenOcc, canTalkTenCon, canTalkTenOf;
  String lipsShapeOcc, lipsShapCon, lipsShapOf;

  String runWithoutFallingOcc, runWithoutFallingCon, runWithoutFallingOf;
  String upDownStairOcc, upDownStairCon, upDownStairOf;
  String canCopyOcc, canCopyCon, canCopyOf;
  String canCreateOcc, canCreateCon, canCreateOf;

  Baby(
      {this.layingFaceDownOcc,
      this.layingFaceDownCon,
      this.layingFaceDownOf,
      this.movingObjectCon,
      this.movingObjectOcc,
      this.movingObjectOf,
      this.bigSoundCon,
      this.bigSoundOcc,
      this.bigSoundOf,
      this.ohhCon,
      this.ohhOcc,
      this.ohhOf,
      this.smileCon,
      this.smileOcc,
      this.smileOf,
      ////
     
      this.raiseHeadCon,
      this.raiseHeadOcc,
      this.raiseHeadOf,
      this.playFingersCon,
      this.playFingersOcc,
      this.playFingersOf,
      this.strechHandCon,
      this.strechHandOcc,
      this.strechHandOf,
      this.soundTurnCon,
      this.soundTurnOcc,
      this.soundTurnOf,
      this.singleLetterSoundCon,
      this.singleLetterSoundOcc,
      this.singleLetterSoundOf,
      this.laughtLoudCon,
      this.laughtLoudOcc,
      this.laughtLoudOf,

      ///
      this.raiseHead2Con,
      this.raiseHead2Occ,
      this.raiseHead2Of,
      this.turnFaceUpDownCon,
      this.turnFaceUpDownOcc,
      this.turnFaceUpDownOf,
      this.swithObjectCon,
      this.swithObjectOf,
      this.swithObjectsOcc,
      this.makeSoundCon,
      this.makeSoundOcc,
      this.makeSoundOf,

      ///
      this.sittingCon,
      this.sittingOcc,
      this.sittingOf,
      this.holdingHimSelfCon,
      this.holdingHimSelfOcc,
      this.holdingHimSelfOf,
      this.thumbForeCon,
      this.thumbForeOcc,
      this.thumbForeOf,
      this.followingVoiceCon,
      this.followingVoiceOcc,
      this.followingVoiceOf,
      this.proWordsCon,
      this.proWordsOcc,
      this.proWordsOf,
      this.understandCon,
      this.understandOcc,
      this.understandOf,

      ///
      this.walkingWithHelpCon,
      this.walkingWithHelpOcc,
      this.walkingWithHelpOf,
      this.canSpeakCon,
      this.canSpeakOcc,
      this.canSpeakOf,
      this.handPointCon,
      this.handPointOcc,
      this.handPointOf,
      this.canRollCon,
      this.canRollOcc,
      this.canRollOf,
      this.canIdentifyCon,
      this.canIdentifyOcc,
      this.canIdentifyOf,

      ///
      this.walkingWithoutHelpCon,
      this.walkingWithoutHelpOcc,
      this.walkingWithoutHelpOf,
      this.canClimbCon,
      this.canClimbOcc,
      this.canClimbOf,
      this.makeTowerCon,
      this.makeTowerOcc,
      this.makeTowerOf,
      this.eatHimselfCon,
      this.eatHimselfOcc,
      this.eatHimselfOf,
      this.canTalkTenCon,
      this.canTalkTenOcc,
      this.canTalkTenOf,
      this.lipsShapCon,
      this.lipsShapeOcc,
      this.lipsShapOf,

      ///
      this.runWithoutFallingCon,
      this.runWithoutFallingOcc,
      this.runWithoutFallingOf,
      this.upDownStairCon,
      this.upDownStairOcc,
      this.upDownStairOf,
      this.canCopyCon,
      this.canCopyOcc,
      this.canCopyOf,
      this.canCreateCon,
      this.canCreateOcc,
      this.canCreateOf});

  factory Baby.fromJson(Map<String, dynamic> json) {
    return Baby(

        layingFaceDownOcc:
            json['lie_on_his_hips_and_head_up_age_at_the_time_of_occurence'],
        layingFaceDownCon:
            json['lie_on_his_hips_and_head_up_age_at_the_confirmed'],
        layingFaceDownOf:
            json['lie_on_his_hips_and_head_up_status_of_the_officer'], //lie_on_his_hips_and_head_up_status_of_the_officer
        movingObjectOcc: json[
            'something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence'],
        movingObjectCon: json[
            'something_keeps_moving_from_one_place_to_another_age_at_the_time_of_confrimed'],
        movingObjectOf: json[
            'something_keeps_moving_from_one_place_to_another_status_of_the_time_of_officer'],
        bigSoundOcc: json[
            'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence'],
        bigSoundCon: json[
            'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_confrimed'],
        bigSoundOf: json[
            'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_status_of_the_time_of_officer'],
        ohhOcc: json[
            'sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence'],
        ohhCon: json[
            'sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_confrimed'],
        ohhOf: json[
            'sounds_like_a_e_in_response_to_stimulus_status_of_the_time_of_officer'],
        smileOcc: json[
            'the_mother_recognize_and_smiles_age_at_the_time_of_occurence'],
        smileCon: json[
            'the_mother_recognize_and_smiles_age_at_the_time_of_confrimed'],
        smileOf:
            json['the_mother_recognize_and_smiles_status_of_the_time_of_officer'],


        raiseHeadOcc: json[
            'raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence'],
        raiseHeadCon: json[
            'raise_the_head_chest_while_standing_up_age_at_the_time_of_confrimed'],
        raiseHeadOf: json[
            'raise_the_head_chest_while_standing_up_status_of_the_time_of_officer'],
        playFingersOcc: json['they_play_when_crossing_fingers_age_at_the_time_of_occurence'],
        playFingersCon: json['they_play_when_crossing_fingers_age_at_the_time_of_confrimed'],
        playFingersOf: json['they_play_when_crossing_fingers_status_of_the_time_of_officer'],

        strechHandOcc: json['streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence'],
        strechHandCon: json['streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_confrimed'],
        strechHandOf: json['streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_status_of_the_time_of_officer'],
        soundTurnOcc: json['when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence'],
        soundTurnCon: json['when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_confrimed'],
        soundTurnOf: json['when_heard_a_sound_he_turn_his_head_toward_that_status_of_the_time_of_officer'],
        singleLetterSoundOcc: json['emits_single_letter_sounds_age_at_the_time_of_occurence'],
        singleLetterSoundCon: json['emits_single_letter_sounds_age_at_the_time_of_confrimed'],
        singleLetterSoundOf: json['emits_single_letter_sounds_status_of_the_time_of_officer'],
        laughtLoudOcc: json['smiles_loudely_age_at_the_time_of_occurence'],
        laughtLoudCon: json['smiles_loudely_age_at_the_time_of_confrimed'],
        laughtLoudOf: json['smiles_loudely_status_of_the_time_of_officer'],

        raiseHead2Occ: json['lie_your_hips_and_head_up_age_at_the_time_of_occurence'],
        raiseHead2Con: json['lie_your_hips_and_head_up_age_at_the_time_of_confrimed'],
        raiseHead2Of: json['lie_your_hips_and_head_up_status_of_the_time_of_officer'],
        turnFaceUpDownOcc: json['turn_back_again_and_again_age_at_the_time_of_occurence'],
        turnFaceUpDownCon: json['turn_back_again_and_again_age_at_the_time_of_confrimed'],
        turnFaceUpDownOf: json['turn_back_again_and_again_status_of_the_time_of_officer'],
        swithObjectsOcc: json['change_something_another_hand_to_other_hand_age_at_the_time_of_occurence'],
        swithObjectCon: json['change_something_another_hand_to_other_hand_age_at_the_time_of_confrimed'],
        swithObjectOf: json['change_something_another_hand_to_other_hand_status_of_the_time_of_officer'],
        makeSoundOcc: json['some_sounds_are_repeated_age_at_the_time_of_occurence'],
        makeSoundCon: json['some_sounds_are_repeated_age_at_the_time_of_confrimed'],
        makeSoundOf: json['some_sounds_are_repeated_status_of_the_time_of_officer'],

        sittingOcc: json['siting_without_help_age_at_the_time_of_occurence'],
        sittingCon: json['siting_without_help_age_at_the_time_of_confrimed'],
        sittingOf: json['siting_without_help_status_of_the_time_of_officer'],
        holdingHimSelfOcc: json['holding_himself_alone_age_at_the_time_of_occurence'],
        holdingHimSelfCon: json['holding_himself_alone_age_at_the_time_of_confrimed'],
        holdingHimSelfOf: json['holding_himself_alone_status_of_the_time_of_officer'],
        thumbForeOcc: json['holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence'],
        thumbForeCon: json['holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_confrimed'],
        thumbForeOf: json['holding_small_things_using_thumb_And_forefinger_status_of_the_time_of_officer'],
        followingVoiceOcc: json['following_voice_age_at_the_time_of_occurence'],
        followingVoiceCon: json['following_voice_age_at_the_time_of_confrimed'],
        followingVoiceOf: json['following_voice_status_of_the_time_of_officer'],
        proWordsOcc: json['pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence'],
        proWordsCon: json['pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_confrimed'],
        proWordsOf: json['pronounce_individual_words_makes_sounds_that_make_sense_status_of_the_time_of_officer'],
        understandOcc: json['understand_simple_instructions_age_at_the_time_of_occurence'],
        understandCon: json['understand_simple_instructions_age_at_the_time_of_confrimed'],
        understandOf: json['understand_simple_instructions_status_of_the_time_of_officer'],

        walkingWithHelpOcc: json['walking_with_help_age_at_the_time_of_occurence'],
        walkingWithHelpCon: json['walking_with_help_age_at_the_time_of_confrimed'],
        walkingWithHelpOf: json['walking_with_help_status_of_the_time_of_officer'],
        canSpeakOcc: json['they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence'],
        canSpeakCon: json['they_can_speak_of_least_two_or_three_words_age_at_the_time_of_confrimed'],
        canSpeakOf: json['they_can_speak_At_least_two_or_three_words_status_of_the_time_of_officer'],
        handPointOcc: json['hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence'],
        handPointCon: json['hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_confrimed'],
        handPointOf: json['hand_is_pointed_out_when_hearing_familiar_things_status_of_the_time_of_officer'],
        canRollOcc: json['they_can_roll_a_boll_age_at_the_time_of_occurence'],
        canRollCon: json['they_can_roll_a_boll_age_at_the_time_of_confrimed'],
        canRollOf: json['they_can_roll_a_boll_status_of_the_time_of_officer'],
        canIdentifyOcc: json['can_identify_at_least_one_body_part_age_at_the_time_of_occurence'],
        canIdentifyCon: json['can_identify_at_least_one_body_part_age_at_the_time_of_confrimed'],
        canIdentifyOf: json['can_identify_at_least_one_body_part_status_of_the_time_of_officer'],

        walkingWithoutHelpOcc: json['walking_without_help_age_at_the_time_of_occurence'],
        walkingWithoutHelpCon: json['walking_without_help_age_at_the_time_of_confrimed'],
        walkingWithoutHelpOf: json['walking_without_help_status_of_the_time_of_officer'],
        canClimbOcc: json['can_climb_the_stair_with_help_age_at_the_time_of_occurence'],
        canClimbCon: json['can_climb_the_stair_with_help_age_at_the_time_of_confrimed'],
        canClimbOf: json['can_climb_the_stair_with_help_status_of_the_time_of_officer'],
        makeTowerOcc: json['can_make_a_tower_using_building_blocks_age_at_the_time_of_occurenc'],
        makeTowerCon: json['can_make_a_tower_using_building_blocks_age_at_the_time_of_confrimed'],
        makeTowerOf: json['can_make_a_tower_using_building_blocks_status_of_the_time_of_officer'],
        eatHimselfOcc: json['eat_himself_alone_age_at_the_time_of_occurence'],
        eatHimselfCon: json['eat_himself_alone_age_at_the_time_of_confrimed'],
        eatHimselfOf: json['eat_himself_alone_status_of_the_time_of_officer'],
        canTalkTenOcc: json['can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence'],
        canTalkTenCon: json['can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_confrimed'],
        canTalkTenOf: json['can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_status_of_the_time_of_officer'],
        lipsShapeOcc: json['the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence'],
        lipsShapCon: json['the_lips_are_sharpened_to_kiss_age_at_the_time_of_confrimed'],
        lipsShapOf: json['the_lips_are_sharpened_to_kiss_status_of_the_time_of_officer'],

        runWithoutFallingOcc: json['ability_to_run_without_falling_age_at_the_time_of_occurence'],
        runWithoutFallingCon: json['ability_to_run_without_falling_age_at_the_time_of_confrimed'],
        runWithoutFallingOf: json['ability_to_run_without_falling_status_of_the_time_of_officer'],
        upDownStairOcc: json['ability_to_down_and_up_stair_age_at_the_time_of_occurence'],
        upDownStairCon: json['ability_to_down_and_up_stair_age_at_the_time_of_confrimed'],
        upDownStairOf: json['ability_to_down_and_up_stair_status_of_the_time_of_officer'],
        canCopyOcc: json['can_copy_an_art_with_a_circle_age_at_the_time_of_occurence'],
        canCopyCon: json['can_copy_an_art_with_a_circle_age_at_the_time_of_confrimed'],
        canCopyOf: json['can_copy_an_art_with_a_circle_status_of_the_time_of_officer'],
        canCreateOcc: json['can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence'],
        canCreateCon: json['can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_confrimed'],
        canCreateOf: json['can_create_a_sentence_with_three_or_more_words_status_of_the_time_of_officer'],



        
        
        );
  }
}

Future updateDetails(
    bool lightCheck,
    bool faceCheck,
    bool turnCheck,
    bool theneyesCheck,
    bool lookingCheck,
    bool touchCheck,
    bool squintCheck,
    bool ringCheck,
    bool askCheck,
    bool talkCheck) async {
  //Map query = {'baby_id' : 'A0000101'};
  Map data = {
    'baby_id': 'A0000101',
    'does_child_eyes_toward_the_light': lightCheck.toString(),
    'does_the_child_look_good_on_your_face': faceCheck.toString(),
    'when_you_turn_your_face_to_the_side_do_you_see_the_child_smiling_in_response':
        turnCheck.toString(),
    'then_the_baby_eyes_move': theneyesCheck.toString(),
    'does_the_child_look_arround': lookingCheck.toString(),
    'is_child_streching_out_his_hand_and_trying_to_touch_something':
        touchCheck.toString(),
    'do_you_suspect_that_your_child_has_a_problem': squintCheck.toString(),
    'is_it_possible_for_a_child_to_pickup_small_things_with_a_thumb_and_forefinger':
        ringCheck.toString(),
    'if_the_person_identifies_them_the_child_will_recognize_them_before_they_call_them':
        talkCheck.toString(),
    'have_your_child_strech_out_his_hand_and_touch_them': askCheck.toString()
  };
  //Map data = {'does_the_child_look_good_on_your_face': face.toString()};
  print('***face***');
  print(faceCheck.toString());
  print(lightCheck.toString());
  print(turnCheck.toString());
  var response = await http.put(
      "https://protected-bayou-52277.herokuapp.com/babies/eyetest",
      body: data);
  print("****status");
  print(response.statusCode);

  if (response.statusCode == 200) {
    print("Done");
    return 0;
  }
}