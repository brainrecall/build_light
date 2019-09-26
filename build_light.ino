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

#include "light.hpp"

//Enable a simple test with the interface.
//#define HARDWARE_TEST

//The buzzer on my unit proved too difficult to control without a relay, so its disabled.
//#define USE_BUZZER

//the lights we have available
typedef enum
{
  RED = 0,
  YELLOW,
  GREEN,
#ifdef USE_BUZZER
  BUZZER,
#endif
  NUM_LIGHTS
} BUILD_INDICATORS;

//light objects will have the blink logic
light * indicators[NUM_LIGHTS];

//the global blink mode
BLINK_MODE mode = NONE;

void setup()
{
  //setup lights (set their pin connections)
  indicators[RED] = new light(6);
  indicators[YELLOW] = new light(5);
  indicators[GREEN] = new light(4);
#ifdef USE_BUZZER
  indicators[BUZZER] = new light(3); //connecting it here in case in the future I want to PWM it
#endif

#ifdef HARDWARE_TEST
  for(;;)
  {
    indicators[GREEN]->Off();
    indicators[RED]->On(NONE);
    delay(1000);
    indicators[RED]->Off();
    indicators[YELLOW]->On(NONE);
    delay(1000);
    indicators[YELLOW]->Off();
    indicators[GREEN]->On(NONE);
    delay(1000);
  }
#endif

  Serial.begin(115200);
}

void loop()
{
  char command = 0;

  //process something from the user
  if (Serial.available() > 0)
  {
    //read one command at a time
    command = Serial.read();

    //echo back what we have if we care
    //Serial.write(command);

    switch (command)
    {
      case 'R':
      {
        //turn the light on with the commanded mode
        indicators[RED]->On(mode);
        break;
      }

      case 'r':
      {
        indicators[RED]->Off();
        break;
      }

      case 'Y':
      {
        indicators[YELLOW]->On(mode);
        break;
      }

      case 'y':
      {
        indicators[YELLOW]->Off();
        break;
      }

      case 'G':
      {
        indicators[GREEN]->On(mode);
        break;
      }

      case 'g':
      {
        indicators[GREEN]->Off();
        break;
      }

#ifdef USE_BUZZER
      case 'B':
      {
        indicators[BUZZER]->On(mode);
        break;
      }

      case 'b':
      {
        indicators[BUZZER]->Off();
        break;
      }
#endif

      case 'A':
      {
        //turn on all lights with their mode
        for (int i = 0; i < NUM_LIGHTS; i++)
        {
          indicators[i]->On(mode);
        }
        break;
      }

      case 'a':
      {
        for (int i = 0; i < NUM_LIGHTS; i++)
        {
          indicators[i]->Off();
        }
        break;
      }

      case 'f':
      {
        //set the mode to fast for future On() commands
        mode = FAST;
        break;
      }

      case 'm':
      {
        mode = MEDIUM;
        break;
      }

      case 's':
      {
        mode = SLOW;
        break;
      }

      case 'n':
      {
        mode = NONE;
        break;
      }

      default:
      {
        break;
      }
    }
  }

  //call all the lights to blink
  for (int i = 0; i < NUM_LIGHTS; i++)
  {
    indicators[i]->Blink();
  }
}
