   M S B A M L   `   `   `  ����C  ?Pharmacy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Pharmacy.PagesPharmacy.Pages  5      ?-clr-namespace:Pharmacy.Data;assembly=PharmacyPharmacy.Data  5          Pharmacy.Pages.InviteSale   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Pharmacy.Pages     5      >data-clr-namespace:Pharmacy.Data;assembly=Pharmacy     5        N� Title$  
InviteSale��5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $	��260 �6   �� 5      .+�5   
   �� $��0��6   $��Center=�6%   .+�5      �� $��Продукт*��6   $��30��6(   $��50, 20, 5, 0q�64   �� 5      $��Количество*��6   $��30��6+   $��50, 20, 5, 0q�67   �� 5      $��	Цена*��6   $��30��6%   $��50, 20, 5, 0q�61   5      �� 5   
   $��1��6   $��Center=�6%   .+�5      �� -   5         ��Name$ 
cbProducts��5      $��30��6+   $��0, 20, 0, 0q�67    �� DisplayMemberPath$
 Name��6L   �� 5      -   5         ��Name$ 
tbQuantity��5      $��30��6*   $��0, 20, 0, 0q�66   �� 5       -   5        $ tbPrice��5       $��30��6'   $��0, 20, 0, 0q�63   5!      �� 5$   
   -   5         ��Name$ BtnSave��5$      $��2��6"   $��Сохранить��6/   $	��NaN��6Y   $��
80,5,340,5q�6f   $��1��6z   5%      5&      