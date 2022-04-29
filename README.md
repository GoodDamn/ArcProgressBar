# ArcProgressBar
Progress bar with arc form using Core Graphics

Code: ArcProgressBar.swift

Nib: ArcProgressBar.xib

Example: ViewController.swift

Variant 1:

![Variant 1](https://user-images.githubusercontent.com/76108467/166000775-bd67f480-30d5-4f0b-8450-36fc535fb992.PNG)

![1code](https://user-images.githubusercontent.com/76108467/166001856-d509a917-81ca-47ab-8e67-4706efb1164c.PNG)

Variant 2:

![2](https://user-images.githubusercontent.com/76108467/166002196-499f5920-5e79-459d-9ca5-0ca10c074025.PNG)

![2code](https://user-images.githubusercontent.com/76108467/166002214-ba58159a-c43b-49ac-91b4-83a20187e305.PNG)

Variant 3:

![3](https://user-images.githubusercontent.com/76108467/166002265-1b747d75-eef0-48fe-b187-788063c0b493.PNG)

![3code](https://user-images.githubusercontent.com/76108467/166002279-a118a755-3716-47b9-9cc8-8521a69450ec.PNG)

Variant 4:

![4](https://user-images.githubusercontent.com/76108467/166006015-37882904-f2e5-4062-992d-327a090da5fe.PNG)

![4code](https://user-images.githubusercontent.com/76108467/166006043-235efaa2-6d45-49da-a863-3c0fa2f68520.PNG)

Params:

- arcWidth: CGFloat - the width of arc (small number -> tiny progress bar; bigger number -> bolder progress bar)
- startAngle, endAngle: CGFloat - the beginning/ending angle of progress bar (float number not radian number)
- progress, maxProgress: CGFloat - the progress of arc progress bar ('progress' -> draws with 'tintColor')
- tintColor, arcBackground: UIColor - for assigning colors ('tintColor' for progressing; 'arcBackground' - the background color of progress bar (not UIView!!))
