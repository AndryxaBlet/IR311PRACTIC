   M S B A M L   `   `   `  ����B  >pratica, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:praticapratica  5          pratica.ListHouse   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:pratica     5        N� Title$  	ListHouse��5	      .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $��70 �6    .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
DGridHouse��5   ,   
����+��   AutoGenerateColumns .     
IsReadOnly . $��0��6n      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ 40 6L   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *ID+6Y     5      $ ResidentialComplexID��6%   $ * 6l    6C   �� *ResidentialComplexID+6x     5      $ Street��6%   $ * 6P    65   �� *Street+6\     5      $ Number��6%   $ * 6P    65   �� *Number+6\     5      $ BuildingCost��6)   $ * 6`    6?   �� *BuildingCost+6l     5      $ HouseValueAdded��6%   $ * 6b    6>   �� *HouseValueAdded+6n     5      $ 	IsDeleted��6)   $ * 6Z    6<   �� *	IsDeleted+6f   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6-   	   CellTemplate	 5      �� 5      .R�5   "   �� $
��Edit��6A   $ ��Редактировать��6)   6A   5      5      5!      �� 5"   
   -   5        
 ��Name$	
 Add��5"   :   
�������
����  �$��Добавить��6G   $
��Left=�6Z   $��1��6w   $	��Top=�6�   $	��130��6�   $��53��6�   $��	10,10,0,0q�6�    � 	Resources 5#       �� 
TargetType �� Property �� Value��%_   '��       �� 5$      " ��6   .�5%      ��  �@��CornerRadius$ 12��65   5&      5'      5(      �� 5)   
   -   5        $
 Delete��5)   ;   
�������
����  �$��Удалить��6K   $
��Left=�6]   $��1��6z   $	��Top=�6�   $	��130��6�   $��53��6�   $��
660,10,0,0q�6�    5*      ��%_   '��       �� 5+      " ��6   .�5,      ��  �@��CornerRadius$ 12��65   5-      5.      5/      50      51      