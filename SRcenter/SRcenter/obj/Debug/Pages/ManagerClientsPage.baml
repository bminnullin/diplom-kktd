   M S B A M L   `   `   `  ����C  ?SRcenter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:SRcenter.PagesSRcenter.Pages  5      '    !SRcenter.Pages.ManagerClientsPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:SRcenter.Pages     5        N� Title$  ManagerClientsPage��5	      .��5      �  � RowDefinitions 5   
   �� 5   
   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ 	DataOrder��5      $��0��6      AutoGenerateColumns .     SelectionMode$ Single=�6m      
IsReadOnly . ��5   
   �� 5       �� Color$ White��6    �� Opacity$
 0.55Q�6,   6=      Columns 5   
   0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 ID клиента��6!   
   FontSize$
 20Q�65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6C   �� *
ClientID+  5      $	 Имя клиента��6!   -   5        TbSname��$
 20Q�5   G      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6U    6_   �� *C_name+  5      $!	 Номер телефона��6!   -   5        TbDateVisit��$
 20Q�5   N   $ * 6\    6f   �� *	C_phone+  5      $	 E-mail��6!   $
 20Q�61   $ * 6?    6I   �� *	C_email+  5      $	 День рождение��6%   $
 20Q�6<   $ * 6J    6T   �� *
C_birthday+ �� StringFormat$ {0:MM.dd.yyyy}��4  .System.Windows.Controls.DataGridTemplateColumn  5      $!	 Список покупок��6%      CellTemplate 5      �� 5      .R�5      ��  ��Name$ ClientBoughts��6!   -   5        $��Center=�5   T   $��6��6o   $)��#Посмотреть покупки��6|   $��Center=�6�   $��18(�5   %   $��5 2 5 2q�63   $	��180��6D   $��40��6P      
ServiceBtn#��[  6\   
�������6�   5      5       5"      5#      5$      