   M S B A M L   `   `   `  ����  Pharmacy"    Pharmacy.Pages.OrderDelivery   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5        N� Title$  OrderDelivery��5      .��5
      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $"��Выберите склад:��6   $��0��6*   �� 5   
   -   5         ��Name$ cmbWarehouses��5      $��1��6*    �� DisplayMemberPath$ WarehouseName��67   $	��200��6Y   $��5q�6e   6p   �� 5   
   $&�� Выберите продукт:��6   $��2��6,   �� 5   
   -   5        $ cmbProducts��5      $��3��6(   $
 Name��65   $	��200��6O   $��5q�6[   �� 5   
   $��Количество:��6   $��4��6&   �� 5   
   -   5         ��Name$ txtQuantity��5      $��5��6'   $	��200��64   $��5q�6@   �� 5   
   -   5         ��Name$ 	btnSubmit��5      $#��Отправить заказ��6$   $��6��6>   $	��150��6K   $
��Left=�6W   $��5q�6r   6}   �� 5   
   -   5        $ 	btnCancel��5      $��Отмена��6$   $��6��65   $	��150��6B   $��Right=�6N   $��5q�6j   6u   5       5!      