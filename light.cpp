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

#include "Arduino.h"
#include "light.hpp"

light::light(int pin, bool invert)
{
  //initialize
  this->pin = pin;
  this->mode = NONE;
  this->previousMillis = 0;
  this->interval = 0;
  this->invert = invert;
  this->pinState = LOW;

  //setup pin
  pinMode(this->pin, OUTPUT);
  this->Off();
}

void light::On(BLINK_MODE mode)
{
  //turn on the light, in case blink is NONE
  pin_on();

  //save the mode
  this->mode = mode;
  this->pinState = HIGH;

  //set the interval for the blink mode
  switch (mode)
  {
    case FAST:
    {
      this->interval = 100; //ms
      break;
    }

    case MEDIUM:
    {
      this->interval = 500; //ms
      break;
    }

    case SLOW:
    {
      this->interval = 1000; //ms
      break;
    }

    case NONE:
    {
      this->interval = 0; //don't care
      break;
    }

    default:
    {
      break;
    }
  }
}

void light::Blink()
{
  //if we are blinking
  if (this->mode != NONE)
  {
    //grab the current time
    unsigned long currentMillis = millis();

    //if we have been waiting longer than our interval
    if ((currentMillis - this->previousMillis) >= this->interval)
    {
      //save the time for the next period
      this->previousMillis = currentMillis;
  
      //toggle the pin
      if (this->pinState == LOW)
      {
        this->pinState = HIGH;
        pin_on();
      }
      else
      {
        this->pinState = LOW;
        pin_off();
      }
    }
  }
}

void light::Off()
{
  pin_off();
  this->mode = NONE;
  this->pinState = LOW;
}

void light::pin_on()
{
  if (this->invert == false)
  {
    digitalWrite(this->pin, HIGH);
  }
  else
  {
    digitalWrite(this->pin, LOW);
  }
}

void light::pin_off()
{
  if (this->invert == false)
  {
    digitalWrite(this->pin, LOW);
  }
  else
  {
    digitalWrite(this->pin, HIGH);
  }
}

light::~light()
{
  //make the pin safe
  this->Off();
  pinMode(this->pin, INPUT);
}
