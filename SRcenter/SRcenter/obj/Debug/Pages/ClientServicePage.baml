   M S B A M L   `   `   `  ����C  ?SRcenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SRcenter.PagesSRcenter.Pages  5      &     SRcenter.Pages.ClientServicePage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:SRcenter.Pages     5        N� Title$  ClientServicePage��5	      .��5      �  � RowDefinitions 5   
   �� 5      .+�5   
   �� -   5         ��Name$ ListService��5   !   $��0��6   $��10,10q�66   $��Disabled=�6F   ��5      �� 5       �� Color$ White��6"    �� Opacity$
 0.55Q�60   6A   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value$ 0q�68   �� 5       � ��$ 35q�6/   �� 5       � ��$ 0q�60   5      ��5      �� 5      .R�5      �  � Orientation$ 
Horizontal=�6    6;   5      ��5      �� 5       .R�5!      �� ���	#FF2B8FE2$��1q�65   	 �� Padding$	 10q�6I   
 �� CornerRadius$
 3��6V   ��5"      �� 5#      $ White��6.   $
 0.50Q�6<   6M   ._�5%      � $
��auto��6   $	��620��6-   $	��360��6=   $	��Top=�6I    5&      �� 5'   "   $
��auto �60   �� 5(   "   $
��auto �60   �� 5)   "   $
��auto �60   �� 5*   "   $
��auto �60   �� 5+   "   $
��auto �60   �� 5,   "   $��* �60   .+�5.      �� $��0��6)   $��Center=�67   $��Center=�6T   $
��0,10q�6o   .+�5/   "   �� $	��320��6(   ��64   �� *
GetPhoto+6R   50      �� 51       ��Name$ Sname��6   $��1��6(   $	��Top=�65   $��20(�6N   $
��0,15q�6\   $
��Wrap=�6j   ��6�   �� *S_name+6�   �� 52      $ Sdescription��6X   $��2��6(   $��16(�65   $
��Wrap=�6C   ��6n   �� *S_description+6�   �� 53      $��3��6*   $��0,15,0,0q�68    �� Orientation$ 
Horizontal=�6J   .+�54   "   �� $��18(�6-   $,��&Длительность улуги:  ��6;   6Z   �� 55   "   $ Speriod��6:   $��20(�6,   ��6K   �� *
S_period+ �� StringFormat$ {0:hh}:{0:mm} часа��6�   56      �� 57      $ STprice��6V   $��4��6(   $��24(�65   $��0,15,0,0q�6C   ��6g   �� *	S_price+$ {0} руб.��6�   �� 58       ��Name$ AddServieOrder��6&   -   5        $��Bottom=�58   [   $��6��6v   $#��Оставить заявку��6�   $��Center=�6�   $��18(�59   %   $��	0,60,0,15q�63   $	��170��6F   $��40��6R      
ServiceBtn#��[  6^   
�������6�   5:      5;      5<      5>      5?      5@      