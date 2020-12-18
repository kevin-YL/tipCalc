# Pre-work - CodePath tip calculator

tip.me is a tip calculator application for iOS.

Submitted by: Kevin Sekuj

Time spent: 15-20 hours spent in total over 3-4 days

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [x] UI animation (launch screen)
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Implemented custom keypad on screen at all times instead of default built-in iOS keyboard 
- [x] Custom decimal, character delete, and reset button
- [x] Party size uistepper for splitting tip and bill among parties of size 1 through 8
- [x] Low intensity/brightness color scheme to reduce eye-strain

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/2qCKYDvVBf.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [Rerecordit](https://recordit.co/).

## Notes

  The greatest challenge in building this application was getting a hang of Swift's syntax as well as figuring out how to navigate Xcode.  
  As such, I spent the first day of development attempting to build the skeleton of the application according to the CodePath tutorial just 
  to get acquainted with the iOS development tools. After building it successfully, I thought it might be rather interesting and novel to get
  rid of the built in iOS keyboard completely and build a custom keypad which is on screen at all times, akin to a calculator or phone keypad.
	
  Implementing the custom keypad was quite a bit more difficult than I thought, especially for someone with no experience in Swift, and a novice
  programmer in general. Implementing the actual  keypad with numbers 0-9 was straightforward enough, but the backspace and decimal buttons were
  a bit more complex. In the process, however, I learned a good deal of Swift functionality including how arrays and their indices are represented,
  as well as various built-in functions. In retrospect, it may have been more efficient to read the Swift documentation before attempting to build the app,
  and I certainly spent a significant amount of time googling the language’s syntax or Xcode’s functionality. Even still, I decided it’d be a better and more 
  interesting learning experience to just jump in head first and start coding.


## License

    Copyright [2020] [Kevin Sekuj]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
