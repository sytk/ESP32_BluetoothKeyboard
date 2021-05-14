#include <BleKeyboard.h>

BleKeyboard bleKeyboard;

#define N 6
#define OVERLAP_TIME 30

int SW[N]= {16, 4, 15, 23, 22, 32};
// char KEY_MAP[64] = {0,
//                     'a', 'i', 'b', 'e', 'k', 'k', 'l', KEY_BACKSPACE,
//                     'c', 'i', 'f', ' ', 'm', 's', 'p', KEY_CAPS_LOCK,
//                     'e', ' ', 'h', ' ', 'o', ' ', 'r', ' ',
//                     'd', 'j', 'g', ' ', 'n', 't', 'q', KEY_RETURN,
//                     ' ', ' ', ' ', ' ', 'u', ' ', 'v', ' ',
//                     ' ', ' ', ' ', ' ', 'x', ' ', ' ', ' ',
//                     ' ', ' ', ' ', ' ', 'z', '　', ' ', ' ',
//                     ' ', 'w', ' ', ' ', 'y', '　', ' '
//                     };
char KEY_MAP[64] = {0,
                    'a', 'i', 'e', 'u', ' ', 'o', ' ', 'k',
                    'm', 'g', ' ', KEY_BACKSPACE, ' ', ' ', ' ', 's',
                    'y', 'z', ' ', KEY_CAPS_LOCK, ' ', ' ', ' ', 'n',
                    'r', 'p', ' ', ' ', ' ', ' ', ' ', 't',
                    ' ', ' ', ' ', KEY_RETURN, ' ', ' ', ' ', ' ',
                    ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'h',
                    ' ', 'b', ' ', ' ', ' ', ' ', ' ', 'w',
                    ' ', ' ', ' ', ' ', ' ', '　', ' '
                    };

void setup() {
  bleKeyboard.begin();
  for(int i = 0; i < N; i++){
    pinMode(SW[i], INPUT_PULLUP);
  }
   Serial.begin( 9600 );
}

int pre_num = 0;
void loop() {
  if(bleKeyboard.isConnected()) {
    int num = getSwitchState();
    if(num != 0 && pre_num == 0){
      if(KEY_MAP[num] < 128)
        bleKeyboard.print(KEY_MAP[num]);
      else
        bleKeyboard.write(KEY_MAP[num]);
    }
    Serial.println(num);

    pre_num = num;
    delay(10);
  }
}

int getSwitchState(){
  int num = 0;
  static bool first_flag = true;

  for(int i = 0; i < N; i++){
      if(digitalRead(SW[i]) == LOW){ num += int(pow(2, i)+0.1); } //0.1足さないとintキャストが暴れる
  }
  if(num != 0 && first_flag){
    first_flag = false;
    unsigned long start_time = millis();
    while(true){
      num = getSwitchState();
      if(millis() - start_time > OVERLAP_TIME) break;
    }
    first_flag = true;
  }
  return num;
}
