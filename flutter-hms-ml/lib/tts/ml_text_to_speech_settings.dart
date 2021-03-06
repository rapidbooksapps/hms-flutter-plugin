/*
    Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

import 'dart:convert';
import 'package:huawei_ml/helpers/tts_helpers.dart';

class MlTextToSpeechSettings {
  String text;
  String language;
  String person;
  double speed;
  double volume;
  int queuingMode;

  MlTextToSpeechSettings() {
    text = null;
    speed = 1.0;
    volume = 1.0;
    queuingMode = MlTtsQueuingMode.QUEUE_APPEND;
    person = MlTtsPerson.TTS_SPEAKER_FEMALE_EN;
    language = MlTtsLanguage.TTS_EN_US;
  }

  Map<String, dynamic> toMap() {
    return {
      "settings": {
        "text": json.encode(text),
        "language": json.encode(language),
        "person": json.encode(person),
        "speed": speed,
        "volume": volume,
        "queuingMode": queuingMode
      }
    };
  }
}
