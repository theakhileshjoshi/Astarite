   M S B A M L   `   `   `  ����I  EAstariteEditor, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:AstariteEditor.GameProjectAstariteEditor.GameProject  5      /    )AstariteEditor.GameProject.NewProjectView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :local(clr-namespace:AstariteEditor.GameProject     5      $	��800��5        � DataContext  5      +  %AstariteEditor.GameProject.NewProject  5   
   .��5      �� 
�������.+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��Center=�6.   .+�5      �� -   5         ��Name$ templateListBox��5   Y   $	��195��6   $	��250��6"    �� SelectedIndex$ 0��6r   ��6/   �� *ProjectTemplates+��5      �� 5      .R�5      �� $ 
Horizontal=�6%   .+�5      �� $��0,0,10,0q�6<   $��30��6N   $��30��6Y   ��6$   �� *Icon+6Y   �� 5      $��0,7,0,0q�6E   ��6(   �� *ProjectType+6E   5      5      5      �� 5      $	��400��6   $	��250��6!   $��5,0,0,0q�6.   ��5      �� 5       �� ImageSource 6!   ��  �� Path$ SelectedItem.ScreenShot� �� ElementName$ templateListBox��5       5!      �� 5#   
   $ 
Horizontal=�5$      $��Center=�5%      $��0,30,0,0q�5&      .+�5'      �� $
��Name��6   $��50��6$   �� 5(      $	��550��6   ��6"   �� *ProjectName+5)      �� 5+   
   $ 
Horizontal=�5,      $��Center=�5-      $��0,5,0,0q�5.      .+�5/      �� $
��Path��6   $��50��6$   �� 50      $	��500��6   ��6"   �� *ProjectPath+�� 51      $��Browse��6   $��45��6&   $��5,0,0,0q�61   52      �� 54   
   $ 
Horizontal=�55      $��Center=�56      $��0,30,0,0q�57      .+�58      �� $��Create��6   $��96��6&    �� 	IsDefault$
 True��61   �� 59      $
��Exit��6   $��96��6$   $��30,0,0,0q�6/    �� IsCancel$
 True��6A   5:      5<      5=      