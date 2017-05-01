# PechaKucha Shuffler

This is a quick BASH script to take all of the PowerPoint files in the current working directory and "shuffle" them into a sub-directory named "Shuffled". The script has then been (lightly) tweaked to work within an OS X Automator App and wrapped up as an App that is more easily distributable to faculty.

### Use

Drag a folder (containing PowerPoint files) on to the `Shuffle.app` icon. The app will create a subfolder within the dragged folder, containing all of the PowerPoint files in shuffled order.

For example, if the included `Arbitrary Files` directory were dragged on to the app, one possible outcome might be:

```
Arbitrary Files
  ↳ Shuffled
      ↳ 1. Presentation C.ppt
	2. Presentation A.pptx
	3. Presentation D.PPT
	4. Presentation B.PPTX
  text file.txt
  ```
