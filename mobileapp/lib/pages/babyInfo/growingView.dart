import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobileapp/services/babyService/childGrowthService.dart';
import 'package:mobileapp/services/globals.dart';
import 'package:mobileapp/widgets/cardDisplay.dart';
import 'package:mobileapp/widgets/growthCard.dart';
import 'package:mobileapp/widgets/sixWToThreeM.dart';
import 'package:toast/toast.dart';
import 'package:mobileapp/services/globals.dart' as globals;
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization_provider.dart';

//Update function no tworking
Logger logger = Logger();

Future<Baby> baby = fetchBaby();
String layingFaceDownOcc,
    movingObjectOcc,
    bigSoundOcc,
    ohhOcc,
    smileOcc,
    raiseHeadOcc,
    playFingersOcc,
    strechHandOcc,
    soundTurnOcc,
    singleLetterSoundOcc,
    laughtLoudOcc,
    raiseHead2Occ,
    turnFaceUpDownOcc,
    switchObjectsOcc,
    makeSoundOcc,
    sittingOcc,
    holdingHimSelfOcc,
    thumbForeOcc,
    followingVoiceOcc,
    proWordsOcc,
    understandOcc,
    walkingWithHelpOcc,
    canSpeakOcc,
    handPointOcc,
    canRollOcc,
    canIdentifyOcc,
    walkingWithoutHelpOcc,
    canClimbOcc,
    makeTowerOcc,
    eatHimselfOcc,
    canTalkTenOcc,
    lipsShapeOcc,
    runWithoutFallingOcc,
    upDownStairOcc,
    canCopyOcc,
    canCreateOcc;

String layingFaceDownCon,
    movingObjectCon,
    bigSoundCon,
    ohhCon,
    smileCon,
    raiseHeadCon,
    playFingersCon,
    strechHandCon,
    soundTurnCon,
    singleLetterSoundCon,
    laughtLoudCon,
    raiseHead2Con,
    turnFaceUpDownCon,
    switchObjectsCon,
    makeSoundCon,
    sittingCon,
    holdingHimSelfCon,
    thumbForeCon,
    followingVoiceCon,
    proWordsCon,
    understandCon,
    walkingWithHelpCon,
    canSpeakCon,
    handPointCon,
    canRollCon,
    canIdentifyCon,
    walkingWithoutHelpCon,
    canClimbCon,
    makeTowerCon,
    eatHimselfCon,
    canTalkTenCon,
    lipsShapeCon,
    runWithoutFallingCon,
    upDownStairCon,
    canCopyCon,
    canCreateCon;

String layingFaceDownOf,
    movingObjectOf,
    bigSoundOf,
    ohhOf,
    smileOf,
    raiseHeadOf,
    playFingersOf,
    strechHandOf,
    soundTurnOf,
    singleLetterSoundOf,
    laughtLoudOf,
    raiseHead2Of,
    turnFaceUpDownOf,
    switchObjectsOf,
    makeSoundOf,
    sittingOf,
    holdingHimSelfOf,
    thumbForeOf,
    followingVoiceOf,
    proWordsOf,
    understandOf,
    walkingWithHelpOf,
    canSpeakOf,
    handPointOf,
    canRollOf,
    canIdentifyOf,
    walkingWithoutHelpOf,
    canClimbOf,
    makeTowerOf,
    eatHimselfOf,
    canTalkTenOf,
    lipsShapeOf,
    runWithoutFallingOf,
    upDownStairOf,
    canCopyOf,
    canCreateOf;

class GrowingView extends StatefulWidget {
  @override
  _GrowingViewState createState() => _GrowingViewState();
}

class _GrowingViewState extends State<GrowingView> {
  
  initState() {
    logger.i('in initState');
    super.initState();
    baby.then((it) {
      layingFaceDownOcc = it.layingFaceDownOcc;
    //  logger.e(layingFaceDownOcc, 'layingFaceDownOcc');
      movingObjectOcc =it.movingObjectOcc;
      bigSoundOcc =it.bigSoundOcc;
      ohhOcc =it.ohhOcc;
      smileOcc =it.smileOcc;
      raiseHeadOcc =it.raiseHeadOcc;
      playFingersOcc =it.playFingersOcc;
      strechHandOcc =it.strechHandOcc;
      soundTurnOcc =it.soundTurnOcc;
      singleLetterSoundOcc =it.singleLetterSoundOcc;
      laughtLoudOcc =it.laughtLoudOcc;
      raiseHead2Occ =it.raiseHead2Occ;
      turnFaceUpDownOcc =it.turnFaceUpDownOcc;
      //it.switchObjectsOcc =it.switchObjectsOcc;
      makeSoundOcc =it.makeSoundOcc;
      sittingOcc =it.sittingOcc;
      holdingHimSelfOcc =it.holdingHimSelfOcc;
      thumbForeOcc =it.thumbForeOcc;
      followingVoiceOcc =it.followingVoiceOcc;
      proWordsOcc =it.proWordsOcc;
      understandOcc =it.understandOcc;
      walkingWithHelpOcc =it.walkingWithHelpOcc;
      canSpeakOcc =it.canSpeakOcc;
      handPointOcc =it.handPointOcc;
      canRollOcc =it.canRollOcc;
      canIdentifyOcc =it.canIdentifyOcc;
      walkingWithoutHelpOcc =it.walkingWithoutHelpOcc;
      canClimbOcc =it.canClimbOcc;
      makeTowerOcc =it.makeTowerOcc;
      eatHimselfOcc =it.eatHimselfOcc;
      canTalkTenOcc =it.canTalkTenOcc;
      lipsShapeOcc =it.lipsShapeOcc;
      runWithoutFallingOcc =it.runWithoutFallingOcc;
      upDownStairOcc =it.upDownStairOcc;
      canCopyOcc =it.canCopyOcc;
      canCreateOcc =it.canCreateOcc;

      layingFaceDownCon =it.layingFaceDownCon;
      movingObjectCon =it.movingObjectCon;
      bigSoundCon =it.bigSoundCon;
      ohhCon =it.ohhCon;
      smileCon =it.smileCon;
      raiseHeadCon =it.raiseHeadCon;
      playFingersCon =it.playFingersCon;
      strechHandCon =it.strechHandCon;
      soundTurnCon =it.soundTurnCon;
      singleLetterSoundCon =it.singleLetterSoundCon;
      laughtLoudCon =it.laughtLoudCon;
      raiseHead2Con =it.raiseHead2Con;
      turnFaceUpDownCon =it.turnFaceUpDownCon;
      //it.switchObjectsCon =it.switchObjectsCon;
      makeSoundCon =it.makeSoundCon;
      sittingCon =it.sittingCon;
      holdingHimSelfCon =it.holdingHimSelfCon;
      thumbForeCon =it.thumbForeCon;
      followingVoiceCon =it.followingVoiceCon;
      proWordsCon =it.proWordsCon;
      understandCon =it.understandCon;
      walkingWithHelpCon =it.walkingWithHelpCon;
      canSpeakCon =it.canSpeakCon;
      handPointCon =it.handPointCon;
      canRollCon =it.canRollCon;
      canIdentifyCon =it.canIdentifyCon;
      walkingWithoutHelpCon =it.walkingWithoutHelpCon;
      canClimbCon =it.canClimbCon;
      makeTowerCon =it.makeTowerCon;
      eatHimselfCon =it.eatHimselfCon;
      canTalkTenCon =it.canTalkTenCon;
      lipsShapeCon =it.lipsShapeCon;
      runWithoutFallingCon =it.runWithoutFallingCon;
      upDownStairCon =it.upDownStairCon;
      canCopyCon =it.canCopyCon;
      canCreateCon =it.canCreateCon;

      layingFaceDownOf =it.layingFaceDownOf;
      movingObjectOf =it.movingObjectOf;
      bigSoundOf =it.bigSoundOf;
      ohhOf =it.ohhOf;
      smileOf =it.smileOf;
      raiseHeadOf =it.raiseHeadOf;
      playFingersOf =it.playFingersOf;
      strechHandOf =it.strechHandOf;
      soundTurnOf =it.soundTurnOf;
      singleLetterSoundOf =it.singleLetterSoundOf;
      laughtLoudOf =it.laughtLoudOf;
      raiseHead2Of =it.raiseHead2Of;
      turnFaceUpDownOf =it.turnFaceUpDownOf;
      //it.switchObjectsOf =it.switchObjectsOf;
      makeSoundOf =it.makeSoundOf;
      sittingOf =it.sittingOf;
      holdingHimSelfOf =it.holdingHimSelfOf;
      thumbForeOf =it.thumbForeOf;
      followingVoiceOf =it.followingVoiceOf;
      proWordsOf =it.proWordsOf;
      understandOf =it.understandOf;
      walkingWithHelpOf =it.walkingWithHelpOf;
      canSpeakOf =it.canSpeakOf;
      handPointOf =it.handPointOf;
      canRollOf =it.canRollOf;
      canIdentifyOf =it.canIdentifyOf;
      walkingWithoutHelpOf =it.walkingWithoutHelpOf;
      canClimbOf =it.canClimbOf;
      makeTowerOf =it.makeTowerOf;
      eatHimselfOf =it.eatHimselfOf;
      canTalkTenOf =it.canTalkTenOf;
      lipsShapeOf =it.lipsShapeOf;
      runWithoutFallingOf =it.runWithoutFallingOf;
      upDownStairOf =it.upDownStairOf;
      canCopyOf =it.canCopyOf;
      canCreateOf =it.canCreateOf;

      logger.d(it.layingFaceDownOcc,'it.layingFaceDownOcc in init');
    });
  }

  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    Choice index;
    var data = EasyLocalizationProvider.of(context).data;

    bool layingFaceDownVis,
        movingObjectVis,
        ohhVis,
        bigSoundVis,
        smileVis,
        raiseHeadVis,
        playFingersVis,
        strechHandVis,
        soundTurnVis,
        singleLetterSoundVis,
        laughtLoudVis,
        raiseHead2Vis,
        turnFaceUpDownVis,
        switchObjectVis,
        makeSoundVis,
        sittingVis,
        holdingHimSelfVis,
        thumbForeVis,
        followingVoiceVis,
        proWordsVis,
        understandVis,
        walkingWithHelpVis,
        canSpeakVis,
        handPointVis,
        canRollVis,
        canIdentifyVis,
        walkingWithoutHelpVis,
        canClimbVis,
        makeTowerVis,
        eatHimselfVis,
        canTalkTenVis,
        lipsShapeVis,
        runWithoutFallingVis,
        upDownStairVis,
        canCopyVis,
        canCreateVis = true;

    return FutureBuilder<Baby>(
      future: fetchBaby(),
      builder: (context, snapshot) {
        logger.w(layingFaceDownOcc, 'layingFaceDownOcc');
        if (snapshot.connectionState == ConnectionState.waiting) {
          logger.i(layingFaceDownOcc,'layingFaceDownOcc');
          if (layingFaceDownOcc ==  null || layingFaceDownOcc == '0') {
            layingFaceDownVis = true;
            layingFaceDownOcc = "No Data";
            layingFaceDownCon = "No Data";
            layingFaceDownOf = "No Data";
          } else {
            layingFaceDownVis = false;

            // layingFaceDownOcc = snapshot.data.layingFaceDownOcc;
            // layingFaceDownCon = snapshot.data.layingFaceDownCon;
            // layingFaceDownOf = snapshot.data.layingFaceDownOf;
          }
          if (movingObjectOcc ==  null || movingObjectOcc == '0') {
            movingObjectVis = true;
            movingObjectCon = "No Data";
            movingObjectOcc = "No Data";
            movingObjectOf = "No Data";
          } else {
            movingObjectVis = false;
            // movingObjectCon = snapshot.data.movingObjectCon;
            // movingObjectOcc = snapshot.data.movingObjectOcc;
            // movingObjectOf = snapshot.data.movingObjectOf;
          }
          if (bigSoundOcc ==  null || bigSoundOcc == '0') {
            bigSoundVis = true;
            bigSoundCon = "No Data";
            bigSoundOcc = "No Data";
            bigSoundOf = "No Data";
          } else {
            bigSoundVis = false;
            // bigSoundCon = snapshot.data.bigSoundCon;
            // bigSoundOcc = snapshot.data.bigSoundOcc;
            // bigSoundOf = snapshot.data.bigSoundOf;
          }
          if (ohhOcc ==  null || ohhOcc == '0') {
            ohhVis = true;
            ohhCon = "No Data";
            ohhOcc = "No Data";
            ohhOf = "No Data";
          } else {
            ohhVis = false;
            // ohhCon = snapshot.data.ohhCon;
            // ohhOcc = snapshot.data.ohhOcc;
            // ohhOf = snapshot.data.ohhOf;
          }
          if (smileOcc ==  null || smileOcc == '0') {
            smileVis = true;
            smileCon = "No Data";
            smileOcc = "No Data";
            smileOf = "No Data";
          } else {
            smileVis = false;
            // smileCon = snapshot.data.smileCon;
            // smileOcc = snapshot.data.smileOcc;
            // smileOf = snapshot.data.smileOf;
          }
          if (raiseHeadOcc ==  null || raiseHeadOcc == '0') {
            raiseHeadVis = true;
            raiseHeadCon = "No Data";
            raiseHeadOcc = "No Data";
            raiseHeadOf = "No Data";
          } else {
            raiseHeadVis = false;
            // raiseHeadCon = snapshot.data.raiseHeadCon;
            // raiseHeadOcc = snapshot.data.raiseHeadOcc;
            // raiseHeadOf = snapshot.data.raiseHeadOf;
          }
          if (playFingersOcc ==  null || playFingersOcc == '0') {
            playFingersVis = true;
            playFingersCon = "No Data";
            playFingersOcc = "No Data";
            playFingersOf = "No Data";
          } else {
            playFingersVis = false;
            // playFingersCon = snapshot.data.playFingersCon;
            // playFingersOcc = snapshot.data.playFingersOcc;
            // playFingersOf = snapshot.data.playFingersOf;
          }
          if (strechHandOcc ==  null || strechHandOcc == '0') {
            strechHandVis = true;
            strechHandCon = "No Data";
            strechHandOcc = "No Data";
            strechHandOf = "No Data";
          } else {
            strechHandVis = false;
            // strechHandCon = snapshot.data.strechHandCon;
            // strechHandOcc = snapshot.data.strechHandOcc;
            // strechHandOf = snapshot.data.strechHandOf;
          }
          if (soundTurnOcc ==  null || soundTurnOcc == '0') {
            soundTurnVis = true;
            soundTurnCon = "No Data";
            soundTurnOcc = "No Data";
            soundTurnOf = "No Data";
          } else {
            soundTurnVis = false;
            // soundTurnCon = snapshot.data.soundTurnCon;
            // soundTurnOcc = snapshot.data.soundTurnOcc;
            // soundTurnOf = snapshot.data.soundTurnOf;
          }
          if (singleLetterSoundOcc ==  null || singleLetterSoundOcc == '0') {
            singleLetterSoundVis = true;
            singleLetterSoundCon = "No Data";
            singleLetterSoundOcc = "No Data";
            singleLetterSoundOf = "No Data";
          } else {
            singleLetterSoundVis = false;
            // singleLetterSoundCon = snapshot.data.singleLetterSoundCon;
            // singleLetterSoundOcc = snapshot.data.singleLetterSoundOcc;
            // singleLetterSoundOf = snapshot.data.singleLetterSoundOf;
          }
          if (laughtLoudOcc ==  null || laughtLoudOcc == '0') {
            laughtLoudVis = true;
            laughtLoudCon = "No Data";
            laughtLoudOcc = "No Data";
            laughtLoudOf = "No Data";
          } else {
            laughtLoudVis = false;
            // laughtLoudCon = snapshot.data.laughtLoudCon;
            // laughtLoudOcc = snapshot.data.laughtLoudOcc;
            // laughtLoudOf = snapshot.data.laughtLoudOf;
          }
          if (raiseHead2Occ ==  null || raiseHead2Occ == '0') {
            raiseHead2Vis = true;
            raiseHead2Con = "No Data";
            raiseHead2Occ = "No Data";
            raiseHead2Of = "No Data";
          } else {
            raiseHead2Vis = false;
            // raiseHead2Con = snapshot.data.raiseHead2Con;
            // raiseHead2Occ = snapshot.data.raiseHead2Occ;
            // raiseHead2Of = snapshot.data.raiseHead2Of;
          }
          if (turnFaceUpDownOcc ==  null || turnFaceUpDownOcc == '0') {
            turnFaceUpDownVis = true;
            turnFaceUpDownCon = "No Data";
            turnFaceUpDownOcc = "No Data";
            turnFaceUpDownOf = "No Data";
          } else {
            turnFaceUpDownVis = false;
            // turnFaceUpDownCon = snapshot.data.turnFaceUpDownCon;
            // turnFaceUpDownOcc = snapshot.data.turnFaceUpDownOcc;
            // turnFaceUpDownOf = snapshot.data.turnFaceUpDownOf;
          }
          if (switchObjectsOcc ==  null || switchObjectOcc == '0') {
            switchObjectVis = true;
            switchObjectsCon = "No Data";
            switchObjectsOcc = "No Data";
            switchObjectsOf = "No Data";
          } else {
            switchObjectVis = false;
            // switchObjectsCon = snapshot.data.switchObjectCon;
            // switchObjectsOcc = snapshot.data.switchObjectsOcc;
            // switchObjectsOf = snapshot.data.switchObjectOf;
          }
          if (makeSoundOcc ==  null || makeSoundOcc == '0') {
            makeSoundVis = true;
            makeSoundCon = "No Data";
            makeSoundOcc = "No Data";
            makeSoundOf = "No Data";
          } else {
            makeSoundVis = false;
            // makeSoundCon = snapshot.data.makeSoundCon;
            // makeSoundOcc = snapshot.data.makeSoundOcc;
            // makeSoundOf = snapshot.data.makeSoundOf;
          }
          if (sittingOcc ==  null || sittingOcc == '0') {
            sittingVis = true;
            sittingCon = "No Data";
            sittingOcc = "No Data";
            sittingOf = "No Data";
          } else {
            sittingVis = false;
            // sittingCon = snapshot.data.sittingCon;
            // sittingOcc = snapshot.data.sittingOcc;
            // sittingOf = snapshot.data.sittingOf;
          }
          if (holdingHimSelfOcc ==  null || holdingHimSelfOcc == '0') {
            holdingHimSelfVis = true;
            holdingHimSelfCon = "No Data";
            holdingHimSelfOcc = "No Data";
            holdingHimSelfOf = "No Data";
          } else {
            holdingHimSelfVis = false;
            // holdingHimSelfCon = snapshot.data.holdingHimSelfCon;
            // holdingHimSelfOcc = snapshot.data.holdingHimSelfOcc;
            // holdingHimSelfOf = snapshot.data.holdingHimSelfOf;
          }
          if (thumbForeOcc ==  null || thumbForeOcc == '0') {
            thumbForeVis = true;
            thumbForeCon = "No Data";
            thumbForeOcc = "No Data";
            thumbForeOf = "No Data";
          } else {
            thumbForeVis = false;
            // thumbForeCon = snapshot.data.thumbForeCon;
            // thumbForeOcc = snapshot.data.thumbForeOcc;
            // thumbForeOf = snapshot.data.thumbForeOf;
          }
          if (followingVoiceOcc ==  null || followingVoiceOcc == '0') {
            followingVoiceVis = true;
            followingVoiceCon = "No Data";
            followingVoiceOcc = "No Data";
            followingVoiceOf = "No Data";
          } else {
            followingVoiceVis = false;
            // followingVoiceCon = snapshot.data.followingVoiceCon;
            // followingVoiceOcc = snapshot.data.followingVoiceOcc;
            // followingVoiceOf = snapshot.data.followingVoiceOf;
          }
          if (proWordsOcc ==  null || proWordsOcc == '0') {
            proWordsVis = true;
            proWordsCon = "No Data";
            proWordsOcc = "No Data";
            proWordsOf = "No Data";
          } else {
            proWordsVis = false;
            // proWordsCon = snapshot.data.proWordsCon;
            // proWordsOcc = snapshot.data.proWordsOcc;
            // proWordsOf = snapshot.data.proWordsOf;
          }
          if (understandOcc ==  null || understandOcc == '0') {
            understandVis = true;
            understandCon = "No Data";
            understandOcc = "No Data";
            understandOf = "No Data";
          } else {
            understandVis = false;
            // understandCon = snapshot.data.understandCon;
            // understandOcc = snapshot.data.understandOcc;
            // understandOf = snapshot.data.understandOf;
          }
          if (walkingWithHelpOcc ==  null || walkingWithHelpOcc == '0') {
            walkingWithHelpVis = true;
            walkingWithHelpCon = "No Data";
            walkingWithHelpOcc = "No Data";
            walkingWithHelpOf = "No Data";
          } else {
            walkingWithHelpVis = false;
            // walkingWithHelpCon = snapshot.data.walkingWithHelpCon;
            // walkingWithHelpOcc = snapshot.data.walkingWithHelpOcc;
            // walkingWithHelpOf = snapshot.data.walkingWithHelpOf;
          }
          if (canSpeakOcc ==  null || canSpeakOcc == '0') {
            canSpeakVis = true;
            canSpeakCon = "No Data";
            canSpeakOcc = "No Data";
            canSpeakOf = "No Data";
          } else {
            canSpeakVis = false;
            // canSpeakCon = snapshot.data.canSpeakCon;
            // canSpeakOcc = snapshot.data.canSpeakOcc;
            // canSpeakOf = snapshot.data.canSpeakOf;
          }
          if (handPointOcc ==  null || handPointOcc == '0') {
            handPointVis = true;
            handPointCon = "No Data";
            handPointOcc = "No Data";
            handPointOf = "No Data";
          } else {
            handPointVis = false;
            // handPointCon = snapshot.data.handPointCon;
            // handPointOcc = snapshot.data.handPointOcc;
            // handPointOf = snapshot.data.handPointOf;
          }
          if (canRollOcc ==  null || canRollOcc == '0') {
            canRollVis = true;
            canRollCon = "No Data";
            canRollOcc = "No Data";
            canRollOf = "No Data";
          } else {
            canRollVis = false;
            // canRollCon = snapshot.data.canRollCon;
            // canRollOcc = snapshot.data.canRollOcc;
            // canRollOf = snapshot.data.canRollOf;
          }
          if (canIdentifyOcc ==  null || canIdentifyOcc == '0') {
            canIdentifyVis = true;
            canIdentifyCon = "No Data";
            canIdentifyOcc = "No Data";
            canIdentifyOf = "No Data";
          } else {
            canIdentifyVis = false;
            // canIdentifyCon = snapshot.data.canIdentifyCon;
            // canIdentifyOcc = snapshot.data.canIdentifyOcc;
            // canIdentifyOf = snapshot.data.canIdentifyOf;
          }
          if (walkingWithoutHelpOcc ==  null || walkingWithoutHelpOcc == '0') {
            walkingWithoutHelpVis = true;
            walkingWithoutHelpCon = "No Data";
            walkingWithoutHelpOcc = "No Data";
            walkingWithoutHelpOf = "No Data";
          } else {
            walkingWithoutHelpVis = false;
            // walkingWithoutHelpCon = snapshot.data.walkingWithoutHelpCon;
            // walkingWithoutHelpOcc = snapshot.data.walkingWithoutHelpOcc;
            // walkingWithoutHelpOf = snapshot.data.walkingWithoutHelpOf;
          }
          if (canClimbOcc ==  null || canClimbOcc == '0') {
            canClimbVis = true;
            canClimbCon = "No Data";
            canClimbOcc = "No Data";
            canClimbOf = "No Data";
          } else {
            canClimbVis = false;
            // canClimbCon = snapshot.data.canClimbCon;
            // canClimbOcc = snapshot.data.canClimbOcc;
            // canClimbOf = snapshot.data.canClimbOf;
          }
          if (makeTowerOcc ==  null || makeTowerOcc == '0') {
            makeTowerVis = true;
            makeTowerCon = "No Data";
            makeTowerOcc = "No Data";
            makeTowerOf = "No Data";
          } else {
            makeTowerVis = false;
            // makeTowerCon = snapshot.data.makeTowerCon;
            // makeTowerOcc = snapshot.data.makeTowerOcc;
            // makeTowerOf = snapshot.data.makeTowerOf;
          }
          if (eatHimselfOcc ==  null || eatHimselfOcc == '0') {
            eatHimselfVis = true;
            eatHimselfCon = "No Data";
            eatHimselfOcc = "No Data";
            eatHimselfOf = "No Data";
          } else {
            eatHimselfVis = false;
            // eatHimselfCon = snapshot.data.eatHimselfCon;
            // eatHimselfOcc = snapshot.data.eatHimselfOcc;
            // eatHimselfOf = snapshot.data.eatHimselfOf;
          }
          if (canTalkTenOcc ==  null || canTalkTenOcc == '0') {
            canTalkTenVis = true;
            canTalkTenCon = "No Data";
            canTalkTenOcc = "No Data";
            canTalkTenOf = "No Data";
          } else {
            canTalkTenVis = false;
            // canTalkTenCon = snapshot.data.canTalkTenCon;
            // canTalkTenOcc = snapshot.data.canTalkTenCon;
            // canTalkTenOf = snapshot.data.canTalkTenOf;
          }
          if (lipsShapeOcc ==  null || lipsShapeOcc == '0') {
            lipsShapeVis = true;
            lipsShapeCon = "No Data";
            lipsShapeOcc = "No Data";
            lipsShapeOf = "No Data";
          } else {
            lipsShapeVis = false;
            // lipsShapeCon = snapshot.data.lipsShapeCon;
            // lipsShapeOcc = snapshot.data.lipsShapeOcc;
            // lipsShapeOf = snapshot.data.lipsShapeOf;
          }
          if (runWithoutFallingOcc ==  null || runWithoutFallingOcc == '0') {
            runWithoutFallingVis = true;
            runWithoutFallingCon = "No Data";
            runWithoutFallingOcc = "No Data";
            runWithoutFallingOf = "No Data";
          } else {
            runWithoutFallingVis = false;
            // runWithoutFallingCon = snapshot.data.runWithoutFallingCon;
            // runWithoutFallingOcc = snapshot.data.runWithoutFallingOcc;
            // runWithoutFallingOf = snapshot.data.runWithoutFallingOf;
          }
          if (upDownStairOcc ==  null || upDownStairOcc == '0') {
            upDownStairVis = true;
            upDownStairCon = "No Data";
            upDownStairOcc = "No Data";
            upDownStairOf = "No Data";
          } else {
            upDownStairVis = false;
            // upDownStairCon = snapshot.data.understandCon;
            // upDownStairOcc = snapshot.data.upDownStairOcc;
            // upDownStairOf = snapshot.data.upDownStairOf;
          }
          if (canCopyOcc ==  null || canCopyOcc == '0') {
            canCopyVis = true;
            canCopyCon = "No Data";
            canCopyOcc = "No Data";
            canCopyOf = "No Data";
          } else {
            canCopyVis = false;
            // canCopyCon = snapshot.data.canCopyCon;
            // canCopyOcc = snapshot.data.canCopyOcc;
            // canCopyOf = snapshot.data.canCopyOf;
          }
          if (canCreateOcc ==  null || canCreateOcc == '0') {
            canCreateVis = true;
            canCreateCon = "No Data";
            canCreateOcc = "No Data";
            canCreateOf = "No Data";
          } else {
            canCreateVis = false;
            // canCreateCon = snapshot.data.canCreateCon;
            // canCreateOcc = snapshot.data.canCreateOcc;
            // canCreateOf = snapshot.data.canCreateOf;
          }
          return EasyLocalizationProvider(
            data: data,
            child: Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context).tr('babygrowth')),
              ),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          logger.i(layingFaceDownOcc, 'layingFaceDownOcc');
          List<Choice> choices = <Choice>[
            Choice(
                '01',
                Icons.book,
                AppLocalizations.of(context).tr('fromsixweeks'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt1'),
                    layingFaceDownOcc.toString(),
                    layingFaceDownCon.toString(),
                    layingFaceDownOf.toString(),
                    layingFaceDownVis,
                    'lie_your_hips_and_head_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt2'),
                    movingObjectOcc.toString(),
                    movingObjectCon.toString(),
                    movingObjectOf.toString(),
                    movingObjectVis,
                    'something_keeps_moving_from_one_place_to_another_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt3'),
                    bigSoundOcc.toString(),
                    bigSoundCon.toString(),
                    bigSoundOf.toString(),
                    bigSoundVis,
                    'stopping_or_increasing_action_responds_to_a_sudden_loud_noise_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt4'),
                    ohhOcc.toString(),
                    ohhCon.toString(),
                    ohhOf.toString(),
                    ohhVis,
                    'sounds_like_a_e_in_response_to_stimulus_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromsixweekstxt5'),
                    smileOcc.toString(),
                    smileCon.toString(),
                    smileOf.toString(),
                    smileVis,
                    'the_mother_recognize_and_smiles_age_at_the_time_of_occurence'),
                5),
            Choice.six(
                '02',
                Icons.book,
                AppLocalizations.of(context).tr('fromthreesixmonths'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths1'),
                    raiseHeadOcc.toString(),
                    raiseHeadCon.toString(),
                    raiseHeadOf.toString(),
                    raiseHeadVis,
                    'raise_the_head_chest_while_standing_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths2'),
                    playFingersOcc.toString(),
                    playFingersCon.toString(),
                    playFingersOf.toString(),
                    playFingersVis,
                    'they_play_when_crossing_fingers_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths3'),
                    strechHandOcc.toString(),
                    strechHandCon.toString(),
                    strechHandOf.toString(),
                    strechHandVis,
                    'streching_his_hands_toward_something_he_hold_it_with_his_whole_hand_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths4'),
                    soundTurnOcc.toString(),
                    soundTurnCon.toString(),
                    soundTurnOf.toString(),
                    soundTurnVis,
                    'when_heard_a_sound_he_turn_his_head_toward_that_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths5'),
                    singleLetterSoundOcc.toString(),
                    singleLetterSoundCon.toString(),
                    singleLetterSoundOf.toString(),
                    singleLetterSoundVis,
                    'emits_single_letter_sounds_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromthreesixmonths6'),
                    laughtLoudOcc.toString(),
                    laughtLoudCon.toString(),
                    laughtLoudOf.toString(),
                    laughtLoudVis,
                    'smiles_loudely_age_at_the_time_of_occurence'),
                6),
            Choice.four(
                '03',
                Icons.book,
                AppLocalizations.of(context).tr('formsixtoninemonths'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt1'),
                    raiseHead2Occ.toString(),
                    raiseHead2Con.toString(),
                    raiseHead2Of.toString(),
                    raiseHead2Vis,
                    'lie_your_hips_and_head_up_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt2'),
                    turnFaceUpDownOcc.toString(),
                    turnFaceUpDownCon.toString(),
                    turnFaceUpDownOf.toString(),
                    turnFaceUpDownVis,
                    'turn_back_again_and_again_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt3'),
                    switchObjectsOcc.toString(),
                    switchObjectsCon.toString(),
                    switchObjectsOf.toString(),
                    switchObjectVis,
                    'change_something_another_hand_to_other_hand_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('formsixtoninemonthstxt4'),
                    makeSoundOcc.toString(),
                    makeSoundCon.toString(),
                    makeSoundOf.toString(),
                    makeSoundVis,
                    'some_sounds_are_repeated_age_at_the_time_of_occurence'),
                4),
            Choice.six(
                '04',
                Icons.book,
                AppLocalizations.of(context).tr('fromninetotwelvemonths'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt1'),
                    sittingOcc.toString(),
                    sittingCon.toString(),
                    sittingOf.toString(),
                    sittingVis,
                    'siting_without_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt2'),
                    holdingHimSelfOcc.toString(),
                    holdingHimSelfCon.toString(),
                    holdingHimSelfOf.toString(),
                    holdingHimSelfVis,
                    'holding_himself_alone_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt3'),
                    thumbForeOcc.toString(),
                    thumbForeCon.toString(),
                    thumbForeOf.toString(),
                    thumbForeVis,
                    'holding_small_things_using_thumb_And_forefinger_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt4'),
                    followingVoiceOcc.toString(),
                    followingVoiceCon.toString(),
                    followingVoiceOf.toString(),
                    followingVoiceVis,
                    'following_voice_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt5'),
                    proWordsOcc.toString(),
                    proWordsCon.toString(),
                    proWordsOf.toString(),
                    proWordsVis,
                    'pronounce_individual_words_makes_sounds_that_make_sense_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromninetotwelvemonthstxt6'),
                    understandOcc.toString(),
                    understandCon.toString(),
                    understandOf.toString(),
                    understandVis,
                    'understand_simple_instructions_age_at_the_time_of_occurence'),
                6),
            Choice(
                '05',
                Icons.book,
                AppLocalizations.of(context)
                    .tr('formtwelvemonthstoeighteenmonths'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt1'),
                    walkingWithHelpOcc.toString(),
                    walkingWithHelpCon.toString(),
                    walkingWithHelpOf.toString(),
                    walkingWithHelpVis,
                    'walking_with_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt2'),
                    canSpeakOcc.toString(),
                    canSpeakCon.toString(),
                    canSpeakOf.toString(),
                    canSpeakVis,
                    'they_can_speak_At_least_two_or_three_words_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt3'),
                    handPointOcc.toString(),
                    handPointCon.toString(),
                    handPointOf.toString(),
                    handPointVis,
                    'hand_is_pointed_out_when_hearing_familiar_things_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt4'),
                    canRollOcc.toString(),
                    canRollCon.toString(),
                    canRollOf.toString(),
                    canRollVis,
                    'they_can_roll_a_boll_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('formtwelvemonthstoeighteenmonthstxt5'),
                    canIdentifyOcc.toString(),
                    canIdentifyCon.toString(),
                    canIdentifyOf.toString(),
                    canIdentifyVis,
                    'can_identify_at_least_one_body_part_age_at_the_time_of_occurence'),
                5),
            Choice.six(
                '06',
                Icons.book,
                AppLocalizations.of(context).tr('fromeighteenmonthstotwoyears'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt1'),
                    walkingWithHelpOcc.toString(),
                    walkingWithHelpCon.toString(),
                    walkingWithHelpOf.toString(),
                    walkingWithoutHelpVis,
                    'walking_without_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt2'),
                    canClimbOcc.toString(),
                    canClimbCon.toString(),
                    canClimbOf.toString(),
                    canClimbVis,
                    'can_climb_the_stair_with_help_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt3'),
                    makeTowerOcc.toString(),
                    makeTowerCon.toString(),
                    makeTowerOf.toString(),
                    makeTowerVis,
                    'can_make_a_tower_using_building_blocks_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt4'),
                    eatHimselfOcc.toString(),
                    eatHimselfCon.toString(),
                    eatHimselfOf.toString(),
                    eatHimselfVis,
                    'eat_himself_alone_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt5'),
                    canTalkTenOcc.toString(),
                    canTalkTenCon.toString(),
                    canTalkTenOf.toString(),
                    canTalkTenVis,
                    'can_talk_about_ten_words_can_talk_at_least_one_sentence_with_two_words_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context)
                        .tr('fromeighteenmonthstotwoyearstxt6'),
                    lipsShapeOcc.toString(),
                    lipsShapeCon.toString(),
                    lipsShapeOf.toString(),
                    lipsShapeVis,
                    'the_lips_are_sharpened_to_kiss_age_at_the_time_of_occurence'),
                6),
            Choice.four(
                '07',
                Icons.book,
                AppLocalizations.of(context).tr('fromtwotothreeyears'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt1'),
                    runWithoutFallingOcc.toString(),
                    runWithoutFallingCon.toString(),
                    runWithoutFallingOf.toString(),
                    runWithoutFallingVis,
                    'ability_to_run_without_falling_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt2'),
                    upDownStairOcc.toString(),
                    upDownStairCon.toString(),
                    upDownStairOf.toString(),
                    upDownStairVis,
                    'ability_to_down_and_up_stair_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt3'),
                    canCopyOcc.toString(),
                    canCopyCon.toString(),
                    canCopyOf.toString(),
                    canCopyVis,
                    'can_copy_an_art_with_a_circle_age_at_the_time_of_occurence'),
                GrowthCard(
                    AppLocalizations.of(context).tr('fromtwotothreeyearstxt4'),
                    canCreateOcc.toString(),
                    canCreateCon.toString(),
                    canCreateOf.toString(),
                    canCreateVis,
                    'can_create_a_sentence_with_three_or_more_words_age_at_the_time_of_occurence'),
                4),
          ];
          return EasyLocalizationProvider(
            child: DefaultTabController(
              length: choices.length,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(AppLocalizations.of(context)
                      .tr('babygrowth')), //babygrowth
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: choices.map((Choice choice) {
                      index = choice;
                      return Tab(
                        text: choice.title,
                        icon: Icon(choice.icon),
                      );
                    }).toList(),
                  ),
                ),
                body: SizedBox(
                  child: TabBarView(
                    children: choices.map((Choice choice) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Display(
                          choice: choice,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

class Choice {
  Choice(this.title, this.icon, this.chipTitle, this.card1, this.card2,
      this.card3, this.card4, this.card5, this.cards);
  Choice.six(this.title, this.icon, this.chipTitle, this.card1, this.card2,
      this.card3, this.card4, this.card5, this.card6, this.cards);
  Choice.four(this.title, this.icon, this.chipTitle, this.card1, this.card2,
      this.card3, this.card4, this.cards);
  IconData icon;
  int cards;
  String title, chipTitle;
  GrowthCard card1, card2, card3, card4, card5, card6;
}

//
