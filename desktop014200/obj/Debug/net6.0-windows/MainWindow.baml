   M S B A M L   `   `   `  ����H  Ddesktop014200, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:desktop014200.Vmdesktop014200.Vm  5   	       desktop014200.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:desktop014200.Vm     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � DataContext 5	      #   desktop014200.Vm.MainWindowVM  5
   
   .��5      � .+�5   
   �� ���#272537$	��450��5      $	��200��5      $��Right=�5       �� Orientation$ Vertical=�5      �� 5   
   $	��Add��6   ���#5bc3ff$��Right=�5      $��
0 0 10 200q�5         	navbutton#��[  5      ��5      �� *addUserCommand+5      �� 5   
   $
��Edit��6   
��� ���$��Right=�5      $��0 0 10 0q�5      #��[  5      ��5      �� *editUserCommand+5      �� 5   
   $��Delete��6   ���#844eff$��Right=�5       $��0 0 10 -200q�5!      #��[  5#      ��5"      �� *deleteUserCommand+5#      �� 5)   
   $��
 -40 0 0 0q�6   $	��450��5*      $	��650��5+      ���#272537$
��Left=�5-      $ Vertical=�5.      .+�50      �� $��40��51      $	��650��52      $
��Left=�53      
��� ���$ 
Horizontal=�55      .+�57      �� $��
First name��6   $��	110 0 0 0q�58      
�������  ListView#��[ 5:      �� 5;      $��	Last name��6   $��90 0 0 0q�5<      
�������#��[ 5>      �� 5?      $	��DOB��6   $��90 0 0 0q�5@      
�������#��[ 5B      �� 5C      $	��GPA��6   $��50 0 0 0q�5D      
�������#��[ 5F      5H      �� 5J      -   5         ��Name$ Dropview��5J      $��	40 10 0 0q�5K      
������ $	��400��5M      ��5N      �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=� �� SelectedItem 5O      �� *SelectedUser+$ PropertyChanged=���5P      �� 5Q      .R�5R      �� 
������ 
�������$��2q�5U   !    �� Padding$ 15q�5V   !    �� CornerRadius$ 20��5W   !   $	��595��5X   !   $��70��5Y   !   ._�5Z      �� $	��500��6)   
������ $ 
Horizontal=�5\   )   .+�5^   "   �� $��20��6(   $��30��63   ��6?   �� *Image+�� 5_   "   #��[ 5`   ,   ��5_   ,   �� *	FirstName+$ PropertyChanged=�5`   ,   �� 5a   "   #��[ 5b   ,   $��90 0 0 0q�6N   ��5a   ,   �� *
LastName+$ PropertyChanged=�5b   N   �� 5c   "   #��[ 5d   ,   $��85 0 0 0q�6N   ��5c   ,   �� *DateOfBirth+$ PropertyChanged=�5d   N   �� 5e   "   #��[ 5f   ,   $��50 0 0 0q�6N   ��5e   ,   �� *GPA+$ PropertyChanged=�5f   N   5h      5j      5k      5n      5o      5q      5s      