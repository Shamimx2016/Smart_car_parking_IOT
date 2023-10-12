#include <ESP8266WiFi.h>
#include <FirebaseESP8266.h>
#define WIFI_SSID "Groot"
#define WIFI_PASSWORD "grootgroot"
#define FIREBASE_HOST "smart-car-parking-iot-c531f-default-rtdb.firebaseio.com"
#define FIREBASE_AUTH "uzoWR1m2fOnZrPZLARgRKrFPRvzYYQZ1nK3Ru37I"

FirebaseData firebaseData;
#define slot1KEY "-NRdY57houxuL83j7cok";
#define slot2KEY "-NRdYRojJXhw3_aixhnM";
#define slot3KEY "-NRdYTO7yp_MbMxjhic3";
#define slot4KEY "-NRdYWXOcd8oWymDLroj";
#define A1 D4
#define A2 D1
#define A3 D3
#define A4 D0
#define slot1Light D8
#define slot2Light D5
#define slot3Light D6
#define slot4Light D7

int slot1 = 2;
int slot2 = 2;
int slot3 = 2;
int slot4 = 2;

void setup() {
  Serial.begin(9600);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.println("-----------------");
  Serial.print("Connecting to WiFi  ");
  Serial.println(WIFI_SSID);
  Serial.println("");
  Serial.print(" Loading  ");
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.print(" 👉 ");
  }
  Serial.println("");
  Serial.print(" Wifi Connected !😊 With ");
  Serial.println(WIFI_SSID);
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  Serial.println("Firebase Connected !😊 ");
  Serial.println("-----------------");
  delay(1000);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
  pinMode(A4, INPUT);
  pinMode(slot1Light, OUTPUT);
  pinMode(slot2Light, OUTPUT);
  pinMode(slot3Light, OUTPUT);
  pinMode(slot4Light, OUTPUT);
  digitalWrite(slot1Light, LOW);
  digitalWrite(slot2Light, LOW);
  digitalWrite(slot3Light, LOW);
  digitalWrite(slot4Light, LOW);
}

void loop() {
  slot1 = digitalRead(A1);
  slot2 = digitalRead(A2);
  slot3 = digitalRead(A3);
  slot4 = digitalRead(A4);
  if (slot1 == 0) {
    Serial.println("Slot : A-1 - Car parked 😍");
    digitalWrite(slot1Light, HIGH);
    Firebase.setBool(firebaseData, "-NRdY57houxuL83j7cok/isParked", true);
  } else {
    Firebase.setBool(firebaseData, "-NRdY57houxuL83j7cok/isParked", false);
    digitalWrite(slot1Light, LOW);
    Serial.println("Slot : A-1 - Avalible 👌");
  }
  if (slot2 == 0) {
    Serial.println("Slot : A-2 - Car parked 😍");
    digitalWrite(slot2Light, HIGH);
    Firebase.setBool(firebaseData, "-NRdYRojJXhw3_aixhnM/isParked", true);
  } else {
    Serial.println("Slot : A-2 - Avalible 👌");
    digitalWrite(slot2Light, LOW);
    Firebase.setBool(firebaseData, "-NRdYRojJXhw3_aixhnM/isParked", false);
  }
  if (slot3 == 0) {
    Serial.println("Slot : A-3 - Car parked 😍");
    digitalWrite(slot3Light, HIGH);
    Firebase.setBool(firebaseData, "-NRdYTO7yp_MbMxjhic3/isParked", true);
  } else {
    Serial.println("Slot : A-3 - Avalible 👌");
    digitalWrite(slot3Light, LOW);
    Firebase.setBool(firebaseData, "-NRdYTO7yp_MbMxjhic3/isParked", false);
  }
  if (slot4 == 0) {
    Serial.println("Slot : A-4 - Car parked 😍");
    digitalWrite(slot4Light, HIGH);
    Firebase.setBool(firebaseData, "-NRdYWXOcd8oWymDLroj/isParked", true);
  } else {
    Serial.println("Slot : A-4 - Avalible 👌");
    digitalWrite(slot4Light, LOW);
    Firebase.setBool(firebaseData, "-NRdYWXOcd8oWymDLroj/isParked", false);
  }
  Serial.println("-------------------------------");
  delay(500);
}
