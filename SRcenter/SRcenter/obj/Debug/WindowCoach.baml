   M S B A M L   `   `   `  ����C  ?SRcenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:SRcenterSRcenter  5   	       SRcenter.WindowCoach   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:SRcenter     5   	     � Title$  Dolphin��5   	   $	��450��6   $	��800��6&    � WindowState$ 	Maximized=�62   ��5	      �� 5
   
    �� ImageSource$ MainBackground.png��6   68   .��5      �  � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $��* �6   �� 5      $��15 �6   .+�5   
   � $��0��6   ��5      �� 5       �� Color$ 	#FF68AFF8��6"    �� Opacity$
 0.85Q�64   6E    � ColumnDefinitions 5      �� 5      $
��auto �6#   �� 5      $��* �6#   �� 5      $
��auto �6#   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��0��62   $��20,0,0,0q�6B   .+�5      �� -   5         ��Name$ Backbtn��5         
MainButton#��[  6*   $��34��6N   $��25��6Y   $��0,0,5,0q�6e   $y�	Collapsed=�6�   .��5      �� $��Resources/back.png��6   6:   5      5       �� 5!      $��1��6   $ 
Horizontal=�6)   $��Center=�6C   $��Center=�6`   .+�5"      �� -   5        $ BtnRasp��5"   )   $��0��6     
MainNavBar#��[ 6P   $
��15,0q�6t   .��6�   %#Расписание занятий6�   5#      �� 5$      $��2��6   $ 
Horizontal=�6)   $��Right=�6B   $��0,0,25,0q�6^   .+�5%      �� -   5        	 ��Name$	 TbMainSearch��5%      
�������$��80��6B   $��20��6M   $y�	Collapsed=�6Y   $��0,0,5,0q�6p   
���   �.��6�   
 � 	Resources
 5&       �� 
TargetType �� Property �� Value��%c   '��       �� 5'      " ��6    .�5(      ��  �@��CornerRadius$ 3��6=   6I   5)      5*      .��6)   5+      �� 5,      -   5        $ AccountCoachBtn��5,      #��[  62   $��34��6V   $��25��6a   $y�Visible=�6�   .��5-      �� $��Resources/auth.png��6   6:   5.      �� 5/      -   5        $ ExitAccount��5/      #��[  6.   $��Center=�6T   $��5,0,0,0q�6r   $��34��6�   $��25��6�    � ToolTip$$ Выйти из профиля��6�   .��50      �� $��Resources/exit.png��6   $��25��68   $��Center=�6D   6a   51      52      53      � 54   
   $��1��6   ��55      �� 56      $ 	#FF68AED8��6"   $
 0.55Q�64   6E    58      �� 59      $	��30* �6#   �� 5:      $	��70* �6#    5<      �� 5=      �� 5>      5@      � 5A   
   $��2��6   ���	#FF68AED8 J� Opacity$
 0.85Q�63   5C       � 5D   
   -   5          �Name$ 	MainFrame��5D      $��1��6#     � NavigationUIVisibility$ Hidden=�6\   6�   5F      5G      