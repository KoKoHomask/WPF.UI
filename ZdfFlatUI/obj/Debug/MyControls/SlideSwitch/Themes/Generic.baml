   M S B A M L   `   `   `  ����A  =WPF.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ZdfFlatUI	ZdfFlatUI  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   ButtonStyle �� 
TargetType    ZdfFlatUI.PathIconButton �� Property �� Value   ZdfFlatUI.Carousel � RowDefinitions �� CornerRadius J� SnapsToDevicePixels � UseLayoutRounding    ZdfFlatUI.SlideSwitchPanel	  Name
 ��Name �� Orientation   Name  	Icon_Left    PathData  
Icon_Right'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� 
TargetName �� TargetProperty W� From	 W� To g� Duration�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      ZUIclr-namespace:ZdfFlatUI  5        5      �� 5   
   $3 -/WPF.UI;component/Resources/PathGeometry.xaml?�6   %		  &	        '  D    7  7   7  7   �� 5	      "   6    .�5
   
   ��  � ��$ Center=�6.   �� 5   
    � ��$ 35��6"   �� 5   
    � ��$ 35��6#   �� 5   
    � �� �	#220000006'   �� 5   
    �@  MouseOverBackground �	#4400000060   �� 5   
    �@  PressedBackground �	#550000006.   �� 5   
    �@  CornerRadius$	 100��6)   �� 5   
    �@  	PathWidth$ 10Q�6&   �� 5   
    �@  NormalPathColor
 �����6,   �� 5   
    �@  MouseOverPathColor
 �����6/   �� 5   
    �@  PressedPathColor
 �����6-   5      �� 5      "  6   .�5   
   ��  � ��
 ���� 6'   �� 5   
    � �� �#D7DDE46(   �� 5   
    � ��$ 0q�6,   �� 5   
    �@J�SnapsToDevicePixels . 60   �� 5   
    �@�UseLayoutRounding . 6.   �� 5   
    � �� 5      �� 5      .R�5       � 
������  5!      �� 5"      $��* �6,   �� 5#      $
��auto �6,   .+�5%      �� #��z��6!   #��z��5&   !   $��Center=�6U   $��Center=�5'   !   }�. $ 0��6P   # z 5(   !   # z 5)   !   ._�5*        $	 PART_SlideSwitchPanel��63   #��z��5+   3   #��z��5,   3   # z 5-   3   # z 5.   3   5/      �� 50      $
 PART_IndexPanel��6%   $��1��6>   $��0,10,0,0q�51   %   $ 
Horizontal=�52   %   $��Center=�6>   $��Center=�6[      54      $ PART_LastButton��6-   $
��Left=�6F   8   $��20,0,0,0q�6�   8�� 55   -      56      $ PART_NextButton��6-   $��Right=�6F   8  $��0,0,20,0q�6�   8�� 57   -    59        5:      CommonStates��. 5;   "     
Normal��. 5<   &   �� .��5=   *   W� $ PART_LastButton��6:   $ (UIElement.Opacity)�6b   $ 1X�5>   :   $ 0X�6C   $ 0:0:0.25D�6J   W� 5?   *   $ PART_NextButton��6:   $ (UIElement.Opacity)�6b   $ 1X�5@   :   $ 0X�6C   $ 0:0:0.25D�6J   5A   '   5B   #     5C   "   	MouseOver��. 5D   &   �� .��5E   *   W� $ PART_LastButton��6:   $ (UIElement.Opacity)�6b   $ 0X�5F   :   $ 1X�6C   $ 0:0:0.25D�6J   W� 5G   *   $ PART_NextButton��6:   $ (UIElement.Opacity)�6b   $ 0X�5H   :   $ 1X�6C   $ 0:0:0.25D�6J   5I   '   5J   #   5K      5M      5N      5P      5Q      5R      