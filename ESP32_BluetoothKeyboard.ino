#include <BleKeyboard.h>

BleKeyboard bleKeyboard;

#define N 6
#define OVERLAP_TIME 30

// スイッチ：ハードウェア上のキースイッチをさす(6このうちどれか)
// キー：一般的なキーボードでのキー役割を指す


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
                    ' ', 'd', ' ', KEY_RETURN, ' ', ' ', ' ', ' ',
                    ' ', ' ', ' ', ' ', ' ', ' ', ' ', 'h',
                    ' ', 'b', ' ', ' ', ' ', ' ', ' ', 'w',
                    KEY_F20, KEY_F21, KEY_F22, KEY_F23, KEY_F24, KEY_F18, KEY_F12
                    };

void setup() {
  bleKeyboard.begin();
  for(int i = 0; i < N; i++){
    pinMode(SW[i], INPUT_PULLUP);
  }
   Serial.begin( 9600 );
}
// bleKeyboard.isConnected()
void loop() {
  while(true){
    char key = getKey();
    if(key > 0){
      if(key < 128)
        bleKeyboard.print(key);
      else
        bleKeyboard.write(key);
    }

    // Serial.println(key);
    delay(5);
  }
}


char getKey(){
  static int  pre_sw_state = 0;
  static bool is_using_layer = false;
  char key = 0;

  int sw_state = getSwitchState();

  if(sw_state >= 8 && sw_state % 8 != 0)
    is_using_layer = true;

  if(is_using_layer){
    if(sw_state < 8 && pre_sw_state >= 8){
        key =  KEY_MAP[pre_sw_state];
        pre_sw_state = sw_state;
    }
  }
  else{
    if(sw_state == 0 && pre_sw_state > 0){
      key =  KEY_MAP[pre_sw_state];
      pre_sw_state = sw_state;
    }
  }

  if(is_using_layer && sw_state == 0){
    is_using_layer = false;
    pre_sw_state = 0;
    key = 0;
  }

  if(pre_sw_state < sw_state)
    pre_sw_state = sw_state;
  Serial.print(key);
  Serial.print(' ');
  Serial.print(sw_state);
  Serial.print(' ');
  Serial.println(is_using_layer);
  return key;
}
int getSwitchState(){
  int num = 0;
  for(int i = 0; i < N; i++){
      if(digitalRead(SW[i]) == LOW){ num += int(pow(2, i)+0.1); } //0.1足さないとintキャストが暴れる
  }
  return num;
}
