   M S B A M L   `   `   `  ����C  ?SRcenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SRcenter.PagesSRcenter.Pages  5      &     SRcenter.Pages.AccountClientPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:SRcenter.Pages     5      -   5          N� Title$  AccountClientPage��5	      .��5      � ��5   
   �� 5       �� Color$ White��6    �� Opacity$
 0.55Q�6,   6=    � ColumnDefinitions 5   
   �� 5      $
��0.3* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   ��5      �� 5      $ White��6"   $
 0.50Q�60   6A   ._�5      ��  �� Orientation$ Vertical=�6   $��Center=�60   .+�5      �� $ Vertical=�6   $��	120,0,0,0q�64   .+�5      �� $'��!Имя пользователя: ��6       AccountText#��[  6:   6a   �� 5      -   5         ��Name$ TbName��5       $��	Underline{�6I   #��[  6e   $��10,0,0,0q�6�   ��61   �� *C_name+6�   5      �� 5      $ Vertical=�6   $��
120,15,0,0q�64   .+�5      �� $#��Номер телефона: ��6    #��[  68   6_   �� 5      -   5        $ TbPhone��5       $��	Underline{�6J   #��[  6f   $��10,0,0,0q�6�   ��61   �� *	C_phone+6�   5      �� 5       $ Vertical=�6   $��
120,15,0,0q�64   .+�5!      �� $��Эл.почта: ��6    #��[  62   6Y   �� 5"      -   5        $ TbEmail��5"       $��	Underline{�6K   #��[  6g   $��10,0,0,0q�6�   ��62   �� *	C_email+6�   5#      �� 5$      $ Vertical=�6   $��120,15,0,10q�64   .+�5%      �� $!��День рождения: ��6    #��[  67   6^   �� 5&      -   5        $ TbBirth��5&       $��	Underline{�6n   #��[  6�   $��10,0,0,0q�6�   ��62   �� *
C_birthday+ �� StringFormat$ {0:dd.MM.yyy}��6�   5'      5(      5)      � 5*   
   $��1��6    � RowDefinitions 5+      �� 5,      $
��0.4* �6    �� 5-      $��* �6    �� 5.      $
��0.4* �6     50      �� 51      $��* �6#   �� 52      $
��0.3* �6#   .+�54      �� $��0��6   ��55      �� 56      $ White��6&   $
 0.50Q�64   6E   58      �� 59      $��2��6   ��5:      �� 5;      $ White��6&   $
 0.50Q�64   6E   5=      �� 5>      $��3��6   $��2��6*   ��5?      �� 5@      $ White��6&   $
 0.50Q�64   6E   5B      �� 5C      $��1��6   $��0��6"   $��1��63   
���   �$��1q�6X   ._�5D      �  5E      �� 5F      $��40 �6+   �� 5G      $��* �6+   �� 5H      $��60 �6+    5J      �� 5K      $��* �6(   �� 5L      $��* �6(   �� 5M      $
��auto �6(   .+�5O      �� $��3��6!   $��0��62   ��5P      �� 5Q      $ White��6.   $
 0.50Q�6<   6M   5S      �� 5T      $��0��6    $��Услуги��6-   $��Center=�6;   $��Center=�6V   $��18(�6s    � LayoutTransform 5U      V� 5V      .~�5W   "   �� 	 �� Angle$	 90Q�62   �� 5X   "   
 �� ScaleX$
 -1Q�61    �� ScaleY$ -1Q�6=   5Y      5[      �� 5\      $��1��6    $��Абонементы��6-   $��Center=�6?   $��Center=�6Z   $��18(�6w    5]      V� 5^      .~�5_   "   �� $	 90Q�62   �� 5`   "   $
 -1Q�61   $ -1Q�6=   5a      5c      �� 5d      $��2��6    $��Занятия��6-   $��Center=�6<   $��Center=�6W   $��18(�6t    5e      V� 5f      .~�5g   "   �� $	 90Q�62   �� 5h   "   $
 -1Q�61   $ -1Q�6=   5i      5k      �� 5o      -   5         ��Name$ ListService��5o      $��0��64   $��1��6A   $��2��6Q   $
��10,0q�6e   $
��Auto=�6t   ��5p      �� 5q      $
 0.40Q�6.   6?   ��5s      �� 5t      .R�5u   "   �  � Orientation$ 
Horizontal=�6,   $��Center=�6E   6b   5v      ��5x      �� 5y      .R�5z   "   �� $	��180��6)   $	��160��66   
������� �� CornerRadius$ 8��6U    �� Padding$ 0,10,0,0q�6f   ._�5{   &   �  5|   *   �� 5}   .   $
��auto �6<   �� 5~   .   $��* �6<   .+�5�   *   �� $��0��6T   $��95��6a   ��60   �� *Service.GetPhoto+6o   �� 5�   *   $��1��65   $ Vertical=�6B   $��Center=�6Y   $��10,5,0,0q�6t   .+�5�   .   �� $
��Wrap=�6X   ��68   �� *Service.S_name+6n   �� 5�   .   $
��Wrap=�6r   ��68   �� *	DateVisit+$ {0:dd.MM.yyyy}��6�   5�   +   5�   '   5�   #   5�      5�      �� 5�      -   5        $ ListSeasonTicket��5�      $��1��69   $��1��6F   $��2��6V   $
��10,0q�6k   $
��Auto=�6z   ��5�      �� 5�      $
 0.40Q�6.   6?   ��5�      �� 5�      .R�5�   "   � $ 
Horizontal=�6,   $��Center=�6E   6b   5�      ��5�      �� 5�      .R�5�   "   �� $	��180��6)   $	��160��66   
�������$ 8��6U   $ 0,10,0,0q�6f   ._�5�   &   �  5�   *   �� 5�   .   $��* �6<   �� 5�   .   $��* �6<   .+�5�   *   �� $��0��6Y   $��80��6f   ��60   �� *SeasonTicket.GetPhoto+6t   �� 5�   *   $��1��65   $ Vertical=�6B   $��10,5,0,0q�6Y   .+�5�   .   �� $
��Wrap=�6^   ��68   �� *SeasonTicket.ST_name+6t   �� 5�   .   $
��Wrap=�6t   ��68   �� *	DateStart+$ с {0:dd.MM.yyyy}��6�   �� 5�   .   $
��Wrap=�6s   ��68   �� *	DateEnd+$ до {0:dd.MM.yyyy}��6�   5�   +   5�   '   5�   #   5�      5�      �� 5�      -   5        $ ListTimetable��5�      $��2��66   $��1��6C   $
��10,0q�6S   $
��Auto=�6b   ��5�      �� 5�      $
 0.40Q�6.   6?   ��5�      �� 5�      .R�5�   "   � $ 
Horizontal=�6,   $��Center=�6E   6b   5�      ��5�      �� 5�      .R�5�   "   �� $��80��6)   $
��auto��65   
�������$ 8��6U   $ 
10,10,10,0q�6f   ._�5�   &   � .+�5�   *   �� $ Vertical=�65   .+�5�   .   �� $
��Wrap=�6q   ��68   �� *User.U_name+$ Тренер: {0}��6�   �� 5�   .   $
��Wrap=�6~   ��68   �� *Date+$3 -Время посещения: {0:dd.MM.yyyy}��6�   5�   +   5�   '   5�   #   5�      5�      �� 5�      -	   5         ��Name$ AddTimetable��5�      $��2��63   $��2��6C   $��45��6P   $��45��6\     Plus#��[ 6g   .��5�      �� $,��&/SRcenter;component/Resources/plus.png��6    $��5q�6P   6]   5�      5�      5�      5�      5�      5�      