   M S B A M L   `   `   `  ���� K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  %    learning_Spanish.View.Statistic   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     7vm(clr-namespace:learning_Spanish.ViewModel       N� Title$  	Statistic�� � DataContext 2  ,learning_Spanish.ViewModel.AllCardsViewModel   N� 
Background ��  �� ImageSource$ ../Background.png��.��� .+��� $��Статистика��$��Center=�$��70��$��0,26,0,0q�$	��Top=�$	��346��$��Center=�$��Center=�$��Sensei Medium)�
�������$��48(��� -    ��Name$ 	myListBox�����	#7FFFFFFF
�������$��Center=�$��Center=�$
��True��$
��Auto=�$��22(�$��Bahnschrift Condensed)�$	��300��$	��130��$	��395��$	��226��$	��290��$��Center=����� *PlayerStatistics+���� .R���  �� Orientation$ 
Horizontal=�.+��� $��0,0,10,0q�$��25(�$��Heavy"����� *Name+�� $��20(����� *Score+�� $��Bottom=�$ 
Horizontal=�$��Center=�$��0,0,0,50q� � 	Resources  �� 
TargetType �� Property	 �� Value
 �� 
TargetType ��Name �� CornerRadius �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%�  '��       �� " ��.���  � ��$	 15(���  � ��$	 10q���  � ��$	 40����  � ��$		 100����  � ��
	 �������  � ��	 �	#FF090502��  � ��	 �� "
 ��.R��� $ border��#��z��$ 15��._��� #��z��$ Center=�$
��Wrap=�$��15(�$��Bahnschrift)�#��z��$��Center=�$��10q� P�  �@��IsDefaulted$
 true��. ��� $ border��#	 � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border�� � ��	 �#EAB01E�� $ border�� � ��	 �#EAB01EP�  � ��$
 true��. ��� $ border�� � ��	 �	#FFAF9585�� $ border�� � ��	 �	#FFAF9585P�  � {�$ False��. ���  � ��	 �	#FFC86D41��  � ��	 �	#FFC5BCBC.+��� $��Сохранить������ *SaveSttisticCommand+�� $��Загрузить������ *LoadCommand+�� $��Сбросить������ *CleanCommand+�� -   $��
Выход��