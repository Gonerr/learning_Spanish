   M S B A M L   `   `   `  ���� K  Glearning_Spanish, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:learning_Spanish.ViewModellearning_Spanish.ViewModel  3clr-namespace:learning_Spanishlearning_Spanish  !    learning_Spanish.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     7vm(clr-namespace:learning_Spanish.ViewModel     0localclr-namespace:learning_Spanish       N� Title$  
MainWindow�� � DataContext 2  ,learning_Spanish.ViewModel.AllCardsViewModel   � 	Resources    FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 RoundedButtonStyle �� 
TargetType	 �� 
TargetType
 ��Name �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	 R     &	 g     &	 |     &	 �     &	 �     &	 �     &	 �     &	 �     &		 �     &	
     7   7  7  7  7  7 	 �� .���  � �� �� .R��� $��2q�$	 1 2R�#��� ��$
 true��$��1���� $ 	#FFDDDDDD���� $ 	#FF707070���� $ 	#FFBEE6FD���� $ 	#FF3C7FB1���� $ 	#FFC4E5F6���� $ 	#FF2C628B���� $ 	#FFF4F4F4���� $ 	#FFADB2B5���� $ 	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� "	 ��.R��� $
 border��$ 20��#��z��#��z��#��z��$
 true��._��� $ contentPresenter��$|�False��#��z��#��z��$
��True��# z #��z�� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border�� � �� �#EAB01E�� $ border�� � �� �#EAB01EP�  � ��$
 true��. ��� $ border�� � �� �	#FFAF9585�� $ border�� � �� �	#FFAF9585P�  � {�$ false��. ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8   � �� N� 
Background ��  �� ImageSource$ ../Background.png��.��� $��
0,0,0,0   q� � RowDefinitions ��  � ColumnDefinitions �� .+��� $��50,50,50,50q����	#FFFCF9DA �� RadiusX$ 24�� �� RadiusY$ 24��(� -    (�Name$ Layer1��$��Center=�$	��246�� (� Stretch$
 Fill=�$	��Top=�$	��542��$��0,75,0,0q�.��� $��246.20727272727277��$	��542��.+�(� $��Center=�$
 Fill=�$	��Top=�$��	0,197,0,0q�.��� $��60��$	��552��   CommonButtonStyle �� EndPoint �� 
StartPoint � Color � Offset �� TextAlignment��%2  &	       �� " ��.���  � �� �� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFE7C98F��$ 0Q�� $ 	#FFE5620B��$
 0.97Q�� $ 	#FFFF6E0E��$
 0.49Q�� $ 	#FFF4730A��$ 0Q���  � ��
 �������  � ��$ 60����  � ��$	 150����  �@J�RenderTransformOrigin$ 0.495,0.528&���  �@�UseLayoutRounding$
 True����  � �� �� "	 ��.R��� $
 border��#��z��$ 20��._��� #��z��$ Center=�$
��Wrap=�$��17(�$��Bahnschrift)�#��z��$��Center=� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border�� � �� �#EAB01E�� $ border�� � �� �#EAB01EP�  � ��$
 true��. ��� $ border�� � �� �	#FFAF9585�� $ border�� � �� �	#FFAF9585.+��� -   #��[ $+��%Начать тестирование��$
��Left=����� *StartGameCommand+���� *Text+ �� ElementName$ NameTextBox���� -    ��Name$ EditCards_button��#��[ $'��!Просмотр карточек���� -   #��[ $��Статистика��$��Right=�(� -   $ 	TitleView��$��Center=�$	��185��$
 Fill=�$	��Top=�$	��542��.��� $	��153��$��459.63000000000011��.+��� -     ��Name$  Title��$
��Wrap=�$	��Top=�$ Center=����	#FFF3961D$��72(�$��Center=�$��sensei_medium.otf#sensei)�! �� 
LineHeight$! 90���� $�У���� $�роки���� $� ���� -   $  Title1��$
��Wrap=�$	��Top=�$ Center=�$��90(�$��Center=�$��sensei_medium.otf#sensei)�$! 90��$��0,45,0,0q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FFF3AA27��� $ 	#FFF46201��$ 1Q��� " � Language$" ru-ru�$�Испанского��� -   # �Name$# MainContentGrid���� -	   $ ��Name$$ NameTextBox��$��Center=�$��33��$$��Введите своё имя��$��Bottom=�$	��260��% �� SelectionBrush% �	#FFE5620B$��Bahnschrift Light)�$��18(�& �� TextAlignment$& Center=����	#FF797979$��0,0,0,70q�