   M S B A M L   `   `   `  ����C  ?SRcenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SRcenter.PagesSRcenter.Pages  5      (    "SRcenter.Pages.AddOrderServicePage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:SRcenter.Pages     5        N� Title$  AddOrderServicePage��5	       N� 
Background 5
      �� 5   
    �� Color$ White��6    �� Opacity$
 0.55Q�6(   .��5      � .+�5   
   � $��Center=�6    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� $��0��6   $��Center=�6'   .+�5      �� -   5         ��Name$ TextBlockOrderNumber��5      $��25(�6:   6J   5      �� 5      $	��800��6   $��1��6!   $	��400��6.    �� CornerRadius$ 3��6;   $��1q�6L   
���   �$��Center=�6t   ._�5      � ��5      �� 5      $ White��6*   $
 0.55Q�68   6I    5      �� 5      �� 5      $
��auto �6(   �� 5       � ColumnDefinitions 5!      �� 5"      $
��0.7* �6+   �� 5#      $��* �6+   .+�5%      �� -   5        $ TblockID��5%       $�� ��62   $��0��6:   $��0��6J   $��Center=�6W   6t   �� 5&      -   5         ��Name$ TboxID��5&      $�� ��6.   $��1��66   $	��150��6F   $��0��6R   $��Center=�6_   $y�Hidden=�6z   6�   �� 5'      $��50,0,0,0q�6    $��0��63   $��0��6@   $��24(�6P   $'��!Название услуги —��6^   $��Center=�6w   $
��Left=�6�   6�   �� 5(      $��50,0,0,0q�6    $��1��63   $��0��6@   $��24(�6P   $,��&День вашего визита —��6^   $��Center=�6z   $
��Left=�6�   6�   �� 5)      -   5        $ TblockSname��5)       $��0��65   $��1��6B   $��24(�6R   $��Center=�6x   $��Center=�6�   ��6`   �� *S_name+6�   &   System.Windows.Controls.Calendar  5*      -   5        	  Name$	 TboxDateVisit��5*      $��1��66   $��1��6C   
   SelectedDate
 6S   �� *	DateVisit+ �� StringFormat$ {0:MM.dd.yyyy}��6�   �� 5+      -   5        $ TblockPrice��5+       $��3��65   $��1��6B   $��24(�6R   $��Center=�6`   $��Center=�6{   6�   5,      5-      �� 5.      $��2��6   $	��Top=�6&    �� Orientation$ 
Horizontal=�6?   $��Center=�6X   $��0,10,0,0q�6u   .+�5/      �� -   5         ��Name$ AddOrder��5/      $%��Отправить заявку��6+   $	��160��6F   $��40��6R   $��16(�6^   $
��10,0q�6�      AuthPage#��[  6�   50      51      52      53      