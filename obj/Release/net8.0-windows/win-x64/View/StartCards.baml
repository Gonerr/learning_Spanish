   M S B A M L   `   `   `  ���� K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  &     learning_Spanish.View.StartCards   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     7vm(clr-namespace:learning_Spanish.ViewModel       N� Title$  
StartCards�� � DataContext 2  ,learning_Spanish.ViewModel.AllCardsViewModel  .��� .+�(�  (� Stretch$
 Fill=�$��Center=�$��50,30,50,30q�.��� $	��390��$	��500��.+��� ���	#FFFCF9DA �� RadiusX$ 34.397�� �� RadiusY$ 34.397���� ���	#FFFF6E0E$	��500��$��45��$��	0,251,0,0q�$	��Top=��� $��	0,251,0,0q�$	��Top=�$��45��$��20(�$%��Bahnschrift SemiLight Condensed)�$��Center=�$��Center=� J� RenderTransformOrigin$ 0.502,0.567&�$��Center=�$	��500��$��0,6,0,5q� � IsSharedSizeScope$
 True������ *LabelContent+���� *
LabelColor+��Z� (� $
��Left=�$��100,120,100,186q�$
 Fill=�$	��Top=�$	��250��.��� $��135.21333333333337��$	��641��.+��� $
��Left=�$��
40,-21,0,0q�$��Center=�$��66��$	��232��$��48(����	#FFF46201$��Sensei Medium)�$��Center=�$��Center=����� *StartCard.SpanishWord+�� -    ��Name$ 	myListBox��
����������	#FFF3AA27$
��Left=�$��Center=�$��	330,0,0,0q�$
��True��$
��Auto=�$��24(�$��Bahnschrift Condensed)�$	��300��$	��130��$	��311��$��Center=�$	��150��y��� *IsListBoxVisible+{��� *IsListEnabled+���� *StartCard.MaybeTranslate+ �� SelectedItem �� *SelectedWord+�� $2��,Выберите верный перевод��$��0,44,0,0q�$	��Top=�$��66��$	��486��$��36(�$��Sensei Medium)�$��Center=�$��Center=�$��Center=�$ 0.501,0.538&���Z� ���� 	 �� EndPoint$	 0.5,1&�
 �� 
StartPoint$
 0.5,0&�.���  � Color$ 	#FFFF944D��� $ 	#FFEE6205�� � Offset$ 1Q��� $��Bottom=� �� Orientation$ 
Horizontal=�$��Center=�$��0,0,0,50q� � 	Resources  �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� CornerRadius �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%�  '��       �� " ��.���  � ��$ 15(���  � ��$ 10q���  � ��$ 40����  � ��$	 100����  � �� �	#FFEF6204��  � ��
 �������  � �� �� " ��.R��� $ border��#��z��$ 15��._��� #��z��$ Center=�$
��Wrap=�$��15(�$��Bahnschrift)�#��z��$��Center=�$��10q� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border�� � �� �#EAB01E�� $ border�� � �� �#EAB01EP�  � ��$
 true��. ��� $ border�� � �� �	#FFAF9585�� $ border�� � �� �	#FFAF9585P�  � {�$ False��. ���  � �� �	#FFC86D41��  � �� �	#FFC5BCBC.+��� $��Начать������ *StartCommand+{��� *IsStartEnabled+�� $��Проверить������ *CheckCommand+{��� *IsCheckEnabled+�� $��
Далее������ *NextCommand+{��� *IsNextEnabled+�� -   $��
Выход������ *ExitCommand+����  �� ImageSource$ ../Background.png��