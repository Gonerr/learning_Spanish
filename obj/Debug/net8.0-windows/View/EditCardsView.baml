   M S B A M L   `   `   `  ����K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  5   	   )    #learning_Spanish.View.EditCardsView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7vm(clr-namespace:learning_Spanish.ViewModel     5   	     N� Title$  EditCardsView��5
   	    � UseLayoutRounding$ False��6    N� 
Background
 �   � � DataContext 5      2  ,learning_Spanish.ViewModel.AllCardsViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      ��5   
   �� 5       �� ImageSource$ ../Background.png��6    � RowDefinitions 5   
   �� 5      $��0* �6   �� 5      .+�5   
   �� $��30,30,30,30q�6   ���	#FFFCF9DA �� RadiusX$ 34.397��6:    �� RadiusY$ 34.397��6K   $��2��6]   �� 5   
   $��Right=�6   $��1��61   $��Center=�6>   $��	0,0,100,0q�6Y   	 � 	Resources	 5      
 �� 
TargetType �� Property �� Value �� EndPoint �� 
StartPoint � Color � Offset �� 
TargetType ��Name �� CornerRadius �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%�  '��       �� 5      "
 ��6   .�5      ��  � ��$ 15(�61   �� 5       � ��$ 10q�6/   �� 5       � ��$ 40��6/   �� 5        � �� 5!      �� 5"      $ 0.5,1&�62   $ 0.5,0&�6C   .��5#   "   � $ 	#FFE7C98F��6/   $ 0Q�6A   � 5$   "   $ 	#67F4C81A��6/   $ 0.987Q�6A   � 5%   "   $ 	#9AF3AA27��6/   $
 0.84Q�6A   � 5&   "   $ 	#FFF4730A��6/   $ 0Q�6A   5'      5)      �� 5*       � ��
 �����63   �� 5+       � �� 5,      �� 5-      " ��6.   .R�5.   "   �� $ border��6)   #��z��69   $ 15��5/   '   ._�50   &   �� #��z��60   $ Center=�51   )   $
��Wrap=�6@   $��15(�6T   $��Bahnschrift)�6b   #��z��52   )   $��Center=�6S   $��10q�6n   53   #    54   "   P� 55   &    �@��IsDefaulted$
 true��6E   . �56   *   �� $ border��6H   # � ��6\    � ��57   '   P� 58   &    �@J�IsMouseOver$
 true��6E   . �59   *   �� $ border��6G    � �� �#EAB01E6[   �� 5:   *   $ border��6H    � �� �#EAB01E6\   5;   '   P� 5<   &    � ��$
 true��6C   . �5=   *   �� $ border��6G    � �� �	#FFAF95856[   �� 5>   *   $ border��6H    � �� �	#FFAF95856\   5?   '   P� 5@   &    � {�$ False��6C   . �5A   *   ��  � �� �	#FFAF88796G   �� 5B   *    � �� �	#FFFDFAFA6G   5C   '   5E      5G      5I      5J      .+�5L      �� -   5        $1��+Редактировать карточки��5L   _   ��6   �� *EditCommand+��65   �� *SelectedCard+6�   �� 5M      $8��2Удалить выбранную карточку��6^   ��6   �� *
DelCommand+��64   �� *SelectedCard+6^   �� 5N      $'��!Добавить карточку��64   ��6   �� *
AddCommand+64   �� 5O      $��Сохранить��65   ��6   �� *SaveCommand+65   �� 5P      $)��#Загрузить карточки��6:   ��6   �� *LoadCardsCommand+6:   �� 5Q      -   5        $+��%Выйти в главное меню��5Q   /   5R      �� 5T   
   ���	#FFF3AA27$��36(�5U   )   $
��Left=�6b   $	��Top=�5V      $	��276��6*   $��414,110,0,0q�66   $
��True��6K   $
��Auto=�5W      $��2��6B   $y�Hidden=�6S   ��5T      �� *Cards+ �� SelectedItem 60   �� *SelectedCard+��6V   Z� ��5X      �� 5Y      .R�5Z      �� .+�5[      �� $��16(�6A   $��Heavy"�6O   ��6$   �� *SpanishWord+6O   �� 5\      $��12(�6?   $��Italic$�6N   ��6$   �� *	Translate+6N   5]      5^      ��5`      �� 5a      "
 ��6   .�5b      -   5        5c      5k      &   System.Windows.Controls.DataGrid  5m   
   $
��Left=�6   $��55,0,0,0q�6.   $��Center=�6@   $��1��5n   1      AutoGenerateColumns$ False��5o      ���	#FFAF7568���	#FFFFEFEF$��Bahnschrift)�5p      $��18(�6$   ���	#FFF46201   MaxColumnWidth$	 300Q�6I      MinColumnWidth$ 30Q�5q         HorizontalGridLinesBrush �	#FFB1B1B1   VerticalGridLinesBrush �	#FFA59D9D J� RenderTransformOrigin$ 0.5,0.5&�5s      ��5m   �   �� *Cards+ 5n      �� *SelectedCard+z�5t      V� 5u      .~�5v      �� �� 5w        �� AngleY$  0.263Q�6$   �� 5x      T� 5y      ! T� Y$! 0.995Q�6)   5z      "   Columns" 5|      0  *System.Windows.Controls.DataGridTextColumn  5}      ,  &System.Windows.Controls.DataGridColumn#   Header$	# №��6%   $   
Foreground$ �	#FFF46201%   MaxWidth$% 40Q�6^   1  +System.Windows.Controls.DataGridBoundColumn&   Binding& 60   �� *id+6^     5~      $(# "Слово на испанском��6%   & 6A   �� *SpanishWord+  5      $# Перевод��6%   & 66   �� *	Translate+  5�      $# Ответы��6%   & 65   �� *maybeTranslateAsString+5�      5�      5�      