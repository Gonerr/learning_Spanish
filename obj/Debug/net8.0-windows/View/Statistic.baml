   M S B A M L   `   `   `  ����K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  5      %    learning_Spanish.View.Statistic   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      7vm(clr-namespace:learning_Spanish.ViewModel     5        N� Title$  	Statistic��5	       � DataContext 5
      2  ,learning_Spanish.ViewModel.AllCardsViewModel  5   
    N� 
Background 5      �� 5   
    �� ImageSource$ ../Background.png��6   .��5      � .+�5   
   �� $��Статистика��6   $��Center=�6%   $��70��6B   $��0,26,0,0q�6N   $	��Top=�6`   $	��346��6x   $��Center=�6�   $��Center=�6�   $��Sensei Medium)�6�   
�������$��48(�6�   �� 5   
   -   5         ��Name$ 	myListBox��5      ���	#7FFFFFFF
�������$��Center=�5   &   $��Center=�5      $
��True��6-   $
��Auto=�5      $��22(�6B   $��Bahnschrift Condensed)�6P   $	��300��6s   $	��130��6�   $	��395��6�   $	��226��6�   $	��290��6�   $��Center=�6�   ��5   Q   �� *PlayerStatistics+��5   
   �� 5      .R�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��0,0,10,0q�6:   $��25(�6L   $��Heavy"�6Z   ��6$   �� *Name+6Z   �� 5      $��20(�6;   ��6$   �� *Score+6;   5      5      5      �� 5    
   $��Bottom=�6   $ 
Horizontal=�60   $��Center=�6I   $��0,0,0,50q�6f    � 	Resources 5!       �� 
TargetType �� Property	 �� Value
 �� 
TargetType ��Name �� CornerRadius �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName��%�  '��       �� 5"      " ��6   .�5#      ��  � ��$	 15(�61   �� 5$       � ��$	 10q�6/   �� 5%       � ��$	 40��6/   �� 5&       � ��$		 100��6.   �� 5'       � ��
	 �����63   �� 5(       � ��	 �	#FF09050263   �� 5)       � ��	 5*      �� 5+      "
 ��6.   .R�5,   "   �� $ border��6)   #��z��69   $ 15��5-      ._�5.   &   �� #��z��60   $ Center=�5/      $
��Wrap=�61   $��15(�6E   $��Bahnschrift)�6S   #��z��50      $��Center=�6D   $��10q�6_   51   #    52   "   P� 53   &    �@��IsDefaulted$
 true��6E   . �54   *   �� $ border��6H   #	 � ��6\    � ��55   '   P� 56   &    �@J�IsMouseOver$
 true��6E   . �57   *   �� $ border��6G    � ��	 �#EAB01E6[   �� 58   *   $ border��6H    � ��	 �#EAB01E6\   59   '   P� 5:   &    � ��$
 true��6C   . �5;   *   �� $ border��6G    � ��	 �	#FFAF95856[   �� 5<   *   $ border��6H    � ��	 �	#FFAF95856\   5=   '   P� 5>   &    � {�$ False��6C   . �5?   *   ��  � ��	 �	#FFC86D416G   �� 5@   *    � ��	 �	#FFC5BCBC6G   5A   '   5C      5E      5G      5H      .+�5I      �� $��Сохранить��6>   ��6   �� *SaveSttisticCommand+6>   �� 5J      $��Загрузить��65   ��6   �� *LoadCommand+65   �� 5K      $��Сбросить��66   ��6   �� *CleanCommand+66   �� 5L      -   5        $��
Выход��5L      6%   5M      5N      5O      