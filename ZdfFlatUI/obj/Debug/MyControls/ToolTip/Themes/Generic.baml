   M S B A M L   `   `   `  ����A  =WPF.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ZdfFlatUI.ConvertersZdfFlatUI.Converters  5      %clr-namespace:ZdfFlatUI	ZdfFlatUI  5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089*    $ZdfFlatUI.Converters.OffsetConverter   OffsetConverter   ZdfFlatUI.ZToolTip  �� 
TargetType �� Property �� Value �� 
TargetType   ZdfFlatUI.AngleBorder  Name   Padding   
Background   BorderBrush   BorderThickness	   CornerRadius
   PlacementEx   	Placement J� SnapsToDevicePixels   
TailHeight   TailHorizontalOffset   	TailWidth � UseLayoutRounding �� Triggers �� Value �� Binding �� RelativeSource �� 
TargetName `� 	Converter `� ConverterParameter �� Path �� Mode�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      1
Converters"clr-namespace:ZdfFlatUI.Converters  5      ZUIclr-namespace:ZdfFlatUI  5      %�  &	        '       7   7   7   7   7   7   7   7      5      6!   �� 5      "   6   .�5	   
   ��  �@^�HorizontalOffset$ 0��6<   �� 5
   
    �@^�VerticalOffset$ 0��6:   �� 5   
    � ��
 �����6'   �� 5   
    � �� �#585D6B6(   �� 5   
    � ��$ 0q�6,   �� 5   
    � �� �#585D6B6'   �� 5   
    � �� 5      �� 5      "  6"   .R�5        $ AngleBorder��6&   $ 10q�6;   $��Center=�6H   # z��5   &   # z��5   &   # z��5   &   $	 4��5   &   # z
 5   &    . $ 6Q�5   A   $ 15Q�6P   $ 12Q�6j    . ._�5      �� 5       5      �� 5      $ TopLeft��6l    6&   �� *PlacementEx+ �� *Self+.a�5      �� $ AngleBorder��6%    �@ 	Placement$ 
BottomLeft=�6S   �� 5       �@_�	Placement$	 Top=�6:   5       �� 5!      $ 	TopCenter��6l    6&   �� *PlacementEx+ �� *Self+.a�5"      �� $ AngleBorder��6%    �@ 	Placement$ BottomCenter=�6S   �� 5#       �@_�	Placement$	 Top=�6:   �� 5$       �@^�HorizontalOffset 5%   "   `� 5&   &   8   $ Center��6`   .1�5'   *   �� $! PlacementTarget.ActualWidth�62    6U   �� $
 Self=��� 5(   *   $ ActualWidth�62    6E   �� $
 Self=�5)   '   5+      5,      �� 5-      $ TopRight��6l    6&   �� *PlacementEx+ �� *Self+.a�5.      �� $ AngleBorder��6%    �@ 	Placement$ BottomRight=�6S   �� 5/       �@_�	Placement$	 Top=�6:   �� 50       �@^�HorizontalOffset 51   "   `� 52   &   8  $ Right��6`   .1�53   *   �� $! PlacementTarget.ActualWidth�62    6U   �� $
 Self=��� 54   *   $ ActualWidth�62    6E   �� $
 Self=�55   '   57      58      �� 59      $ 
BottomLeft��6l    6&   �� *PlacementEx+ �� *Self+.a�5:      �� $ AngleBorder��6%    �@ 	Placement$ TopLeft=�6S   �� 5;       �@_�	Placement$ Bottom=�6:   5<      �� 5=      $ BottomCenter��6l    6&   �� *PlacementEx+ �� *Self+.a�5>      �� $ AngleBorder��6%    �@ 	Placement$ 	TopCenter=�6S   �� 5?       �@_�	Placement$ Bottom=�6:   �� 5@       �@^�HorizontalOffset 5A   "   `� 5B   &   8  $ Center��6`   .1�5C   *   �� $! PlacementTarget.ActualWidth�62    6U   �� $
 Self=��� 5D   *   $ ActualWidth�62    6E   �� $
 Self=�5E   '   5G      5H      �� 5I      $ BottomRight��6l    6&   �� *PlacementEx+ �� *Self+.a�5J      �� $ AngleBorder��6%    �@ 	Placement$ TopRight=�6S   �� 5K       �@_�	Placement$ Bottom=�6:   �� 5L       �@^�HorizontalOffset 5M   "   `� 5N   &   8  $ Right��6`   .1�5O   *   �� $! PlacementTarget.ActualWidth�62    6U   �� $
 Self=��� 5P   *   $ ActualWidth�62    6E   �� $
 Self=�5Q   '   5S      5T      �� 5U      $ LeftTop��6l    6&   �� *PlacementEx+ �� *Self+.a�5V      �� $ AngleBorder��6%    �@ 	Placement$ RightTop=�6S   �� 5W       �@_�	Placement$
 Left=�6:   5X      �� 5Y      $ 
LeftCenter��6l    6&   �� *PlacementEx+ �� *Self+.a�5Z      �� $ AngleBorder��6%    �@ 	Placement$ RightCenter=�6S   �� 5[       �@_�	Placement$
 Left=�6:   �� 5\       �@^�VerticalOffset 5]   "   `� 5^   &   8  $ Center��6`   .1�5_   *   �� $" PlacementTarget.ActualHeight�62    6V   �� $
 Self=��� 5`   *   $ ActualHeight�62    6F   �� $
 Self=�5a   '   5c      5d      �� 5e      $ 
LeftBottom��6l    6&   �� *PlacementEx+ �� *Self+.a�5f      �� $ AngleBorder��6%    �@ 	Placement$ RightBottom=�6S   �� 5g       �@_�	Placement$
 Left=�6:   �� 5h       �@^�VerticalOffset 5i   "   `� 5j   &   8  $ Right��6`   .1�5k   *   �� $" PlacementTarget.ActualHeight�62    6V   �� $
 Self=��� 5l   *   $ ActualHeight�62    6F   �� $
 Self=�5m   '   5o      5p      �� 5q      $ RightTop��6l    6&   �� *PlacementEx+ �� *Self+.a�5r      �� $ AngleBorder��6%    �@ 	Placement$ LeftTop=�6S   �� 5s       �@_�	Placement$ Right=�6:   5t      �� 5u      $ RightCenter��6l    6&   �� *PlacementEx+ �� *Self+.a�5v      �� $ AngleBorder��6%    �@ 	Placement$ 
LeftCenter=�6S   �� 5w       �@_�	Placement$ Right=�6:   �� 5x       �@^�VerticalOffset 5y   "   `� 5z   &   8  $ Center��6`   .1�5{   *   �� $" PlacementTarget.ActualHeight�62    6V   �� $
 Self=��� 5|   *   $ ActualHeight�62    6F   �� $
 Self=�5}   '   5      5�      �� 5�      $ RightBottom��6l    6&   �� *PlacementEx+ �� *Self+.a�5�      �� $ AngleBorder��6%    �@ 	Placement$ 
LeftBottom=�6S   �� 5�       �@_�	Placement$ Right=�6:   �� 5�       �@^�VerticalOffset 5�   "   `� 5�   &   8  $ Right��6`   .1�5�   *   �� $" PlacementTarget.ActualHeight�62    6V   �� $
 Self=��� 5�   *   $ ActualHeight�62    6F   �� $
 Self=�5�   '   5�      5�      5�      5�      5�      5�      