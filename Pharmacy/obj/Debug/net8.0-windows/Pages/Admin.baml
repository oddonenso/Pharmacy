   M S B A M L   `   `   `  ����C  ?Pharmacy, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Pharmacy.PagesPharmacy.Pages  5          Pharmacy.Pages.Admin   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Pharmacy.Pages     5        N� Title$  Admin��5	      $	��500��6   $	��800��6"    N� 
Background
 �����.��5
      �  � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��56 �6   �� 5      �� 5      $��30 �6   .+�5   
   �� -   5        $��	txtSearch��5      $��0��6#   $��0��60   $��Center=�6@   $��
5, 0, 5, 0q�6[   6o   �� 5   
   -   5        $��
cmbSorting��5      ���#a01c1b$��0��6:   $��1��6G    �� SelectedIndex$ 0��6W   $��Center=�6i   $��
5, 0, 5, 0q�6�   .@�5      �� ���#a01c1b
�������По возрастанию6P   �� 5      ���#a01c1b
�������По убыванию6M   5      �� 5   
   -   5        $��	cmbFilter��5      ���#a01c1b���#83050b$��2q�6O   $��0��6c   $��2��6p   $ 0��6�   $��
5, 0, 5, 0q�6�   $��Center=�6�   .@�5      �� ���#a01c1b
�������Должность6K   �� 5      ���#a01c1b
�������Фамилия6I   �� 5      ���#a01c1b
�������Имя6E   �� 5       ���#a01c1b
�������Отчество6J   5!      �� 5"   
   -   5        $/��)Добавить пользователя��5"      $��0��6J   $��3��6W   $��
5, 0, 5, 0q�6g   $��Center=�6{   �� 5$   
   -   5         ��Name$ LViewPpl��5$      $��5q�6   $��0��61   $��4��6A   $��
2,44,27,22q�6U   $��Disabled=�5%      $��2��6a   ��6I   ��  �� View 5'      �� 5(      .P�5)      �� $��Photo��6%    �� CellTemplate 5*      �� 5+      .R�5,   "   �� $��50��6(   $��50��63   ��6?   �� *Photo+5-      5/      �� 50      $
��Name��6%    �� DisplayMemberBinding 63   �� *Name+�� 51      $��Surname��6%    66   �� *	Surname+�� 52      $��
Patronymic��6%    69   �� *
Patronymic+53      55      56      57      