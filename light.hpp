/*
build_light
Copyright (C) 2019  Joseph Auman (joseph.auman@gmail.com)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#pragma once

typedef enum
{
  FAST,
  MEDIUM,
  SLOW,
  NONE
} BLINK_MODE;

class light
{
  public:
  //Takes the digital pin the light is connected to
  light(int pin, bool invert=false);

  //turns on the light with the requested blink mode
  void On(BLINK_MODE mode);

  //must be called as often as possible. this routine
  //will blink the light at the requsted rate
  void Blink();

  //turns off the light completely
  void Off();

  ~light();

  private:
  void pin_on(); //turn on the light with inversion checks
  void pin_off(); //turn off the light with inversion checks
  
  int pin; //arduino pin the light is connected to
  bool invert; //invert the HIGH and LOW logic on the pin, just in case
  BLINK_MODE mode; //current blink mode
  unsigned long previousMillis; //arduino milliseconds since last blink change
  unsigned long interval; //blink duration in milliseconds
  int pinState; //current pin state
};
