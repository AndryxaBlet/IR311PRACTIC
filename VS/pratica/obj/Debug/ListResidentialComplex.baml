   M S B A M L   `   `   `  ����B  >pratica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:praticapratica  5      $    pratica.ListResidentialComplex   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:pratica     5        N� Title$  ListResidentialComplex��5	      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��70 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridResidentialComplex��5   ,   
����+��   AutoGenerateColumns .     
IsReadOnly . $��0��6{      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 40 6H   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *ID+6U     5      $
 Name��6%   $ * 6L    63   �� *Name+6X     5      $
 City��6%   $ * 6L    63   �� *City+6X     5      $ Status��6%   $ * 6P    65   �� *Status+6\     5      $ BuildingCost��6%   $ * 6\    6;   �� *BuildingCost+6h     5      $ ComplexValueAdded��6%   $ * 6f    6@   �� *ComplexValueAdded+6r     5      $ 	IsDeleted��6%   $ * 6V    68   �� *	IsDeleted+6b   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   	   CellTemplate	 5      �� 5      .R�5      �� $
��Edit��6=   $ ��Редактировать��6%   6=   5      5      5!      �� 5"   
   -   5        
 ��Name$	
 Add��5"   :   
�������
����  �$��Добавить��6G   $
��Left=�6Z   $��1��6w   $	��Top=�6�   $	��130��6�   $��53��6�   $��	10,10,0,0q�6�    � 	Resources 5#       �� 
TargetType �� Property �� Value��%_   '��       �� 5$      " ��6   .�5%      ��  �@��CornerRadius$ 12��65   5&      5'      5(      �� 5)   
   -   5        $
 Delete��5)   :   
�������
����  �$��Удалить��6J   $
��Left=�6\   $��1��6y   $	��Top=�6�   $	��130��6�   $��53��6�   $��
660,10,0,0q�6�    5*      ��%_   '��       �� 5+      " ��6   .�5,      ��  �@��CornerRadius$ 12��65   5-      5.      5/      50      51      