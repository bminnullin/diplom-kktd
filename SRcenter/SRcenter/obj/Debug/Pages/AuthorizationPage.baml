   M S B A M L   `   `   `  ����C  ?SRcenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SRcenter.PagesSRcenter.Pages  5      &     SRcenter.Pages.AuthorizationPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:SRcenter.Pages     5        N� Title$  AuthorizationPage��5	       N� 
Background 5
      �� 5   
    �� Color$ White��6    �� Opacity$
 0.55Q�6(   .��5      � .+�5   
   � $��Center=�6    � RowDefinitions 5      �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      �� $	��300��6   $	��180��6!    �� CornerRadius$ 3��6.   $��1q�6?   
���   �$��Center=�6g   ._�5      � $��0��6   ��5      �� 5      $ White��6*   $
 0.55Q�68    5      �� 5      �� 5      .+�5      �� -   5         ��Name$ TbLogin��5      $��1��6/   $��16(�6?   $��4q�6M   $��40��6Y   $	��155��6e   $��Center=�6q      AuthTextBox#��[  6�   6�   G� 5      -   5         G�Name$ TbPass��5   "   $��1��62   $��16(�6?   $��4q�6M   $��1��6Y   $��40��6i   $	��155��6u     AuthPassBox#��[ 6�   $	��Top=�6�   6�   �� 5      -   5        $ PasswordUnmask��5      $y�Hidden=�66   $��4q�6J   $��1��6V   $��16(�6c   $��40��6q   $	��155��6}   $	��Top=�6�   #��[  6�   �� 5       -   5         ��Name$ ShowPassword��5        $#��Показать пароль��66   $��16(�6M   $��Center=�6[   $��1��6x   $��Bottom=�5!      $��0,0,0,15q�6i   5"   I   5#      5$      �� 5%      $��1��6   $��Center=�6&   	 �� Orientation$	 
Horizontal=�6B   $��Center=�6[   $��0,10,0,0q�6x   .+�5&      �� -   5        
 ��Name$
 OKbtn��5&        AuthPage#��[ 6(   $��
Войти��6J   $��90��6Z   $��35��6e   
���   �$��16(�6�   6�   �� 5'      -   5        $
 Regbtn��5'   K   $��1��6   #��[ 6)   $	��160��6[   $��35��6g   $*��$Зарегистрироваться��6s   $��16(�6�   
���   �$��5,0,0,0q�6�   6�   5)      5*      �� 5+   
   -   5        $
 Sotrbtn��5+   6     
SotrButton#��[ 6   $��35��6G   $��35��6R   $��16(�6^    � ToolTip$3 -Авторизацие сотрудников��6�   $��Bottom=�6�   $��Right=�6�   $��	0,0,20,20q�6�   .��5,      �� $,��&/SRcenter;component/Resources/auth.png��6   6F   5-      5.      5/      