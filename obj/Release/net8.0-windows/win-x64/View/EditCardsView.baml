   M S B A M L   `   `   `  ���� K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  )    #learning_Spanish.View.EditCardsView   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     7vm(clr-namespace:learning_Spanish.ViewModel       N� Title$  EditCardsView�� � UseLayoutRounding$ False�� N� 
Background
 �   � � DataContext 2  ,learning_Spanish.ViewModel.AllCardsViewModel  .���  � ColumnDefinitions �� ����  �� ImageSource$ ../Background.png�� � RowDefinitions �� $��0* ��� .+��� $��30,30,30,30q����	#FFFCF9DA �� RadiusX$ 34.397�� �� RadiusY$ 34.397��$��2���� $��Right=�$��1��$��Center=�$��	0,0,100,0q�	 � 	Resources	 
 �� 
TargetType �� Property �� Value �� EndPoint �� 
StartPoint � Color � Offset �� 
TargetType ��Name �� CornerRadius �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%J  '��       �� "
 ��.���  � ��$ 15(���  � ��$ 10q���  � ��$ 40����  � �� �� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFE7C98F��$ 0Q�� $ 	#67F4C81A��$ 0.987Q�� $ 	#9AF3AA27��$
 0.84Q�� $ 	#FFF4730A��$ 0Q���  � ��
 �������  � �� �� " ��.R��� $ border��#��z��$ 15��._��� #��z��$ Center=�$
��Wrap=�$��15(�$��Bahnschrift)�#��z��$��Center=�$��10q� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border�� � �� �#EAB01E�� $ border�� � �� �#EAB01EP�  � ��$
 true��. ��� $ border�� � �� �	#FFAF9585�� $ border�� � �� �	#FFAF9585P�  � {�$ False��. ���  � �� �	#FFAF8879��  � �� �	#FFFDFAFA.+��� -   $1��+Редактировать карточки������ *EditCommand+���� *SelectedCard+�� $8��2Удалить выбранную карточку������ *
DelCommand+���� *SelectedCard+�� $'��!Добавить карточку������ *
AddCommand+�� $��Сохранить������ *SaveCommand+�� $)��#Загрузить карточки������ *LoadCardsCommand+�� -   $+��%Выйти в главное меню���� ���	#FFF3AA27$��36(�$
��Left=�$	��Top=�$	��276��$��414,110,0,0q�$
��True��$
��Auto=�$��2��$y�Hidden=����� *Cards+ �� SelectedItem �� *SelectedCard+��Z� ���� .R��� .+��� $��16(�$��Heavy"����� *SpanishWord+�� $��12(�$��Italic$����� *	Translate+���� "
 ��.�-   &   System.Windows.Controls.DataGrid  $
��Left=�$��55,0,0,0q�$��Center=�$��1��   AutoGenerateColumns$ False�����	#FFAF7568���	#FFFFEFEF$��Bahnschrift)�$��18(����	#FFF46201   MaxColumnWidth$	 300Q�   MinColumnWidth$ 30Q�   HorizontalGridLinesBrush �	#FFB1B1B1   VerticalGridLinesBrush �	#FFA59D9D J� RenderTransformOrigin$ 0.5,0.5&����� *Cards+ �� *SelectedCard+z�V� .~��� ��   �� AngleY$  0.263Q��� T� ! T� Y$! 0.995Q�"   Columns" 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn#   Header$	# №��$   
Foreground$ �	#FFF46201%   MaxWidth$% 40Q�1  +System.Windows.Controls.DataGridBoundColumn&   Binding& �� *id+  $(# "Слово на испанском��& �� *SpanishWord+  $# Перевод��& �� *	Translate+  $# Ответы��& �� *maybeTranslateAsString+