   M S B A M L   `   `   `  ����K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  5      &     learning_Spanish.View.StartCards   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7vm(clr-namespace:learning_Spanish.ViewModel     5        N� Title$  
StartCards��5	       � DataContext 5
      2  ,learning_Spanish.ViewModel.AllCardsViewModel  5   
   .��5      � .+�5   
   (�  (� Stretch$
 Fill=�6   $��Center=�6!   $��50,30,50,30q�6<   .��5      � $	��390��6   $	��500��6    .+�5      �� ���	#FFFCF9DA �� RadiusX$ 34.397��6-    �� RadiusY$ 34.397��6>   �� 5      ���	#FFFF6E0E$	��500��6-   $��45��6<   $��	0,251,0,0q�6H   $	��Top=�6[   �� 5      $��	0,251,0,0q�6[   $	��Top=�5      $��45��60   $��20(�6<   $%��Bahnschrift SemiLight Condensed)�6J   $��Center=�5      $��Center=�6:    J� RenderTransformOrigin$ 0.502,0.567&�6^   $��Center=�5   .   $	��500��6K   $��0,6,0,5q�6W    � IsSharedSizeScope$
 True��6i   ��5      �� *LabelContent+��69   �� *
LabelColor+��5      Z� 6i   5      5      (� 5   
   $
��Left=�6   $��100,120,100,186q�6-   $
 Fill=�6F   $	��Top=�6U   $	��250��6m   .��5      � $��135.21333333333337��6   $	��641��6/   .+�5      �� $
��Left=�6C   $��
40,-21,0,0q�6^   $��Center=�6r   $��66��6�   $	��232��6�   $��48(�6�   ���	#FFF46201$��Sensei Medium)�6�   $��Center=�6�   $��Center=�6	  ��6   �� *StartCard.SpanishWord+6	  �� 5      -   5         ��Name$ 	myListBox��5   n   
����������	#FFF3AA27$
��Left=�5   ,   $��Center=�6G   $��	330,0,0,0q�6b   $
��True��6u   $
��Auto=�6�   $��24(�6�   $��Bahnschrift Condensed)�6�   $	��300��6�   $	��130��6
  $	��311��6  $��Center=�6&  $	��150��6J  y�5      �� *IsListBoxVisible+{�6�   �� *IsListEnabled+��6�   �� *StartCard.MaybeTranslate+ �� SelectedItem 6�   �� *SelectedWord+5   J  5      5       �� 5!   
   $2��,Выберите верный перевод��6   $��0,44,0,0q�63   $	��Top=�6E   $��66��6]   $	��486��6i   $��36(�6u   $��Sensei Medium)�6�   $��Center=�6�   $��Center=�6�   $��Center=�6�   $ 0.501,0.538&�6  ��6%  Z� ��5"      �� 5#      	 �� EndPoint$	 0.5,1&�6&   
 �� 
StartPoint$
 0.5,0&�67   .��5$      �  � Color$ 	#FFFF944D��6#   � 5%      $ 	#FFEE6205��6#    � Offset$ 1Q�65   5&      5(      �� 5*   
   $��Bottom=�6    �� Orientation$ 
Horizontal=�60   $��Center=�6I   $��0,0,0,50q�6f    � 	Resources 5+       �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� CornerRadius �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%�  '��       �� 5,      " ��6   .�5-      ��  � ��$ 15(�61   �� 5.       � ��$ 10q�6/   �� 5/       � ��$ 40��6/   �� 50       � ��$	 100��6.   �� 51       � �� �	#FFEF620463   �� 52       � ��
 �����63   �� 53       � �� 54      �� 55      " ��6.   .R�56   "   �� $ border��6)   #��z��69   $ 15��57      ._�58   &   �� #��z��60   $ Center=�59   !   $
��Wrap=�68   $��15(�6L   $��Bahnschrift)�6Z   #��z��5:   !   $��Center=�6K   $��10q�6f   5;   #    5<   "   P� 5=   &    �@��IsDefaulted$
 true��6E   . �5>   *   �� $ border��6H   # � ��6\    � ��5?   '   P� 5@   &    �@J�IsMouseOver$
 true��6E   . �5A   *   �� $ border��6G    � �� �#EAB01E6[   �� 5B   *   $ border��6H    � �� �#EAB01E6\   5C   '   P� 5D   &    � ��$
 true��6C   . �5E   *   �� $ border��6G    � �� �	#FFAF95856[   �� 5F   *   $ border��6H    � �� �	#FFAF95856\   5G   '   P� 5H   &    � {�$ False��6C   . �5I   *   ��  � �� �	#FFC86D416G   �� 5J   *    � �� �	#FFC5BCBC6G   5K   '   5M      5O      5Q      5R      .+�5T      �� $��Начать��66   ��6   �� *StartCommand+{�6G   �� *IsStartEnabled+�� 5U      $��Проверить��66   ��6   �� *CheckCommand+{�6J   �� *IsCheckEnabled+�� 5V      $��
Далее��65   ��6   �� *NextCommand+{�6E   �� *IsNextEnabled+�� 5W      -   5        $��
Выход��5W      ��6?   �� *ExitCommand+5X      ��5Z   
   �� 5[       �� ImageSource$ ../Background.png��6   5^      5_      