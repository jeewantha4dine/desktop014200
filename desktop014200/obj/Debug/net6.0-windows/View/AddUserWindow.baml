   M S B A M L   `   `   `  ����H  Ddesktop014200, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:desktop014200.Vmdesktop014200.Vm  5   	   &     desktop014200.View.AddUserWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:desktop014200.Vm     5   	   $	��450��5   F   $	��800��6S     � Title  6
   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5	      &    desktop014200.Vm.AddUserWindowVM  5
   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� $	��800��5      $	��450��6   ���#272537$��Center=�6;   $	��Top=�5       �� Orientation$ Vertical=�6%   .+�5      �� $��5q�6   $	��100��6#   
�������$
��Bold"�6B    �� TextAlignment$
 Left=�6T   $
��Left=�5      ��5      �� *Title+$ PropertyChanged=�5      �� 5      $��
First Name��6   
�������$
��Bold"�6=   $��5q�6P   �� 5       $��5q�6V   $��1��5!      ��5       �� *	Firstname+$ PropertyChanged=�5!      �� 5"      $��	Last Name��6   
�������$
��Bold"�6<   $��5q�6O   $��1��6Z   �� 5#      $��5q�6U   $��1��5$      ��5#      �� *
Lastname+$ PropertyChanged=�5$      �� 5%      $��Date of birth��6   
�������$
��Bold"�6@   $��5q�6S   $��1��6^   �� 5&      $��5q�6X   $��1��5'      $��1��6#   ��5&      �� *Dateofbirth+$ PropertyChanged=�5'   #   �� 5(      $	��GPA��6   
�������$
��Bold"�66   $��5q�6I   $��1��6T   �� 5)      $��5q�6+   $��1��66   $��1��6C   ��6   �� *Gpa+6C   �� 5+      $��Insert picture��6   $��20��6.   $	��100��6:   $��Center=�6F   $��	5,0,5,-30q�5,   <   $��3��6O   $��Bottom=�5-      $��2��60   ��5,      �� *UploadPhotoCommand+5-   0   �� 5/      $��30��6   $	��100��6    $��Center=�6-   $	��Top=�50      $��
0 60 100 0q�6,   ��51      �� *SelectedImage+$ PropertyChanged=��� 53      $��	Save user��6   $��20��6)   $	��100��65   $��Bottom=�6A   $��0 30 0 0q�54      $��3��6'   $��2��55      ��53   \   �� *SaveCommand+55      58      5:      5;      