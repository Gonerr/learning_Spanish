   M S B A M L   `   `   `  ���� K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:learning_Spanish.Viewlearning_Spanish.View  G(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  $    learning_Spanish.View.CardView   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5local#clr-namespace:learning_Spanish.View     >	viewmodel(clr-namespace:learning_Spanish.ViewModel       � Title$)  #Изменение карточки��$	��340��$	��567��.��� $��0,0,0,-6q�
�������.+��� $��Right=� �� Orientation$ Vertical=�$��Center=�$��
0,-50,50,0q� � 	Resources  �� 
TargetType �� Property �� Value��%  '��       �� " ��.���  � ��$ 20(���  � ��$ 0,0,0,20q���  � ��$ 35����  � ��$	 220����  � ��
 �   ���  � ��$ Center=���  � ��$ Center=���  � �� �	#FFF54F00��  �@��TextWrapping$ NoWrap=���  � ��$
 True��.+��� ���� *SelectedCard.SpanishWord+ �� Mode$ TwoWay=��� ���� *SelectedCard.Translate+$ TwoWay=��� ���� *%#SelectedCard.maybeTranslateAsString+$ TwoWay=��� $
��Left=�$ Vertical=�$��Center=�$��
50,-50,0,0q� ��%�   '��       �� " ��.���  � ��$ 20(���  � ��$ 0,0,0,20q���  � ��$ 35����  � ��$	 220����  � �� �	#FFF54F00��  � ��
 �   ���  � ��$ Center=�.+��� $$��Испанское слово:���� $��Перевод:���� $$��Варианты ответа:���� $��Center=�$��Bottom=�$��0,0,0,50q�  �� 
TargetType ��Name	 �� CornerRadius
 �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%�  '��       �� " ��.���  � ��$ 15(���  � ��$ 10q���  � ��$ 40����  � �� �	#FFF98737��  � ��
 �������  � �� �� " ��.R��� $ border��#��z��$	 15��._��� #��z��$
 Center=�$
��Wrap=�$��15(�$��Bahnschrift)�#��z��$��Center=�$��10q� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border�� � �� �#EAB01E�� $ border�� � �� �#EAB01EP�  � ��$
 true��. ��� $ border�� � �� �	#FFAF9585�� $ border�� � �� �	#FFAF9585P�  � {�$ False��. ���  � �� �	#FFAF8879��  � �� �	#FFFDFAFA.+��� -   $&�� Сохранить и выйти��