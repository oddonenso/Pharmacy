   M S B A M L   `   `   `  ����C  ?Pharmacy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Pharmacy.PagesPharmacy.Pages  5          Pharmacy.Pages.Employee   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Pharmacy.Pages     5        N� Title$  Employee��5	       � 	Resources 5         ProductImageTemplate��%}   &	        �� 5   
   .R�5      �� -   5        $��50��5   C   $��50��6N   ��6   �� *Photo+6N   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ 	cmbTables��5      $��0��6&    �� SelectedIndex$ 0��63   $��Center=�6E   $��5q�6`   .@�5      �� .��6   	Product6$   �� 5      .��6   Sale6!   �� 5      .��6   QualityControl6+   �� 5      .��6   
Delivery6%   �� 5      .��6   	Warehouse6&   �� 5      .��6   
Supplier6%   5      �� 5!   
   -   5         ��Name$ ListViewData��5!      $��1��6)   $��5q�66    5"       �� 
TargetType �� Property �� Value��%T   '��       �� 5#      " ��6   .�5$      ��  � ��$
 Left=�6C   5%      5&      	 �� View	 5'      �� 5(      -   5        GridViewColumns��.P�5*      �� $��Photo��6%   
 �� CellTemplate#
 [  64   5,      5.      �� 50   
   -   5         ��Name$ btnAdd��50      $��Добавить��6!   $��1��64   $��Right=�6A   $��Bottom=�6]   $��5q�6x   6�   �� 52   
   -   5        $ btnOrderDelivery��52      $7��1Оформить заказ на доставку��6+   $��1��6P   $
��Left=�6]   $��Bottom=�6x   $��5q�6�   6�   53      54      