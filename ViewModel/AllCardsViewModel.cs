using learning_Spanish.Data;
using learning_Spanish.Model;
using learning_Spanish.View;
using Microsoft.Win32;
using Newtonsoft.Json;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Shapes;
using System.Xml.Linq;
using System.Xml.Serialization;
using static learning_Spanish.ViewModel.AllCardsViewModel;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace learning_Spanish.ViewModel
{
    internal class AllCardsViewModel : INotifyPropertyChanged
    {

        public event PropertyChangedEventHandler PropertyChanged;

        private ObservableCollection<playerStatistics> _playerStatistics;
        public ObservableCollection<playerStatistics> PlayerStatistics
        {
            get { return _playerStatistics; }
            set
            {
                _playerStatistics = value;
                OnPropertyChanged(nameof(PlayerStatistics));
            }
        }

        private string _name;
        public string Name
        {
            get { return _name; }
            set
            {
                _name = value;
                OnPropertyChanged(nameof(Name));
            }
        }

        private int _score = 0;
        public int Score
        {
            get { return _score; }
            set
            {
                _score = value;
                OnPropertyChanged(nameof(Score));
            }
        }

        private ObservableCollection<Card> _cards;
        public ObservableCollection<Card> Cards
        {
            get { return _cards; }
            set
            {
                _cards = value;
                OnPropertyChanged();
            }
        }

        private Card _selectedCard;
        public Card SelectedCard
        {
            get { return _selectedCard; }
            set
            {
                _selectedCard = value;
                OnPropertyChanged();
            }
        }

        private string _selectedWord;
        public string SelectedWord
        {
            get { return _selectedWord; }
            set
            {
                _selectedWord = value;
                if (_selectedWord != null)
                {
                    IsCheckEnabled = true;
                }
                else IsCheckEnabled = false;
                OnPropertyChanged();
            }
        }
        private Card _StartCard;
        public Card StartCard
        {
            get { return _StartCard; }
            set
            {
                _StartCard = value;
                OnPropertyChanged(nameof(StartCard));
            }
        }


        private bool _isStartEnabled = true;
        public bool IsStartEnabled
        {
            get { return _isStartEnabled; }
            set
            {
                _isStartEnabled = value;
                OnPropertyChanged(nameof(IsStartEnabled));
            }
        }

        private bool _isNewCardRowVisible = false;
        public bool IsNewCardRowVisible
        {
            get { return _isNewCardRowVisible; }
            set
            {
                _isNewCardRowVisible = value;
                OnPropertyChanged(nameof(IsNewCardRowVisible));
            }
        }

        private bool _isEditingEnabled = false;

        public bool IsEditingEnabled
        {
            get { return _isEditingEnabled; }
            set
            {
                _isEditingEnabled = value;
                OnPropertyChanged(nameof(IsEditingEnabled));
            }
        }


        private Brush _labelColor;
        public Brush LabelColor
        {
            get { return _labelColor; }
            set
            {
                _labelColor = value;
                OnPropertyChanged(nameof(LabelColor));
            }
        }

        private string _labelContent;
        public string LabelContent
        {
            get { return _labelContent; }
            set
            {
                _labelContent = value;
                OnPropertyChanged(nameof(LabelContent));
            }
        }

        private bool _IsNextEnabled = false;
        public bool IsNextEnabled
        {
            get { return _IsNextEnabled; }
            set
            {
                _IsNextEnabled = value;
                OnPropertyChanged(nameof(IsNextEnabled));
            }
        }


        private bool _IsListEnabled = true;
        public bool IsListEnabled
        {
            get { return _IsListEnabled; }
            set
            {
                _IsListEnabled = value;
                OnPropertyChanged(nameof(IsListEnabled));
            }
        }

        private bool _IsCheckEnabled = false;
        public bool IsCheckEnabled
        {
            get { return _IsCheckEnabled; }
            set
            {
                _IsCheckEnabled = value;
                OnPropertyChanged(nameof(IsCheckEnabled));
            }
        }
        public int index = 0;

        private Visibility _isListBoxVisible = Visibility.Collapsed;
        public Visibility IsListBoxVisible
        {
            get { return _isListBoxVisible; }
            set
            {
                _isListBoxVisible = value;
                OnPropertyChanged(nameof(IsListBoxVisible));
            }
        }

        public AllCardsViewModel() {
            if (Cards == null)
            {
                Cards = new ObservableCollection<Card>();
                PlayerStatistics = new ObservableCollection<playerStatistics>();
                // Загрузка карточек из метода GetCards() класса Card
                if (!File.Exists("AllCards.json"))
                    LoadCards();
                else
                {
                    LoadData("AllCards.json");
                }
                if (File.Exists("Statistics.json"))
                {
                    LoadStatistic("Statistics.json");
                }
            }

            OnPropertyChanged(nameof(DelCommand));
        }

        // Загрузка статистики по умолчанию
        private void LoadStatistic(string path)
        {
            string jsonData = File.ReadAllText(path);
            var playerStats = JsonConvert.DeserializeObject<ObservableCollection<playerStatistics>>(jsonData);

            // Очищаем текущие данные
            PlayerStatistics.Clear();
            foreach (var stat in playerStats)
            {
                PlayerStatistics.Add(stat);
            }

            PropertyInfo[] properties = typeof(playerStatistics).GetProperties();
            foreach (var player in PlayerStatistics)
            {
                foreach (PropertyInfo property in properties)
                {
                    var propertyValue = property.GetValue(player);
                    if (propertyValue == null || string.IsNullOrWhiteSpace(propertyValue.ToString()))
                    {
                        property.SetValue(player, "Failed");
                    }
                }
            }
        }

        //Загрузка карточек по умолчанию (если нет файла)
        private void LoadCards()
        {
            Card[] cards = Card.GetCards();
            foreach (var card in cards)
            {
                Cards.Add(card);
            }
        }

        private BaseCommand _editCommand;
        public BaseCommand EditCommand
        {
            get
            {
                if (_editCommand != null)
                    return _editCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        //CardView cardWindow = new CardView(o);
                        //cardWindow.Show();




                    };
                    Func<object, bool> CanExecute = o => SelectedCard != null && SelectedCard.SpanishWord != null;
                    _editCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(EditCommand));
                    return _editCommand;
                }
            }
        }


        //Загрузка Статистики при нажатии на нужную кнопку (из определенного файла)
        private BaseCommand _loadCommand;
        public BaseCommand LoadCommand
        {
            get
            {
                if (_loadCommand != null)
                    return _loadCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        string path = "";
                        OpenFileDialog openFileDialog = new OpenFileDialog();
                        openFileDialog.Filter = "JSON files (*.json)|*.json";

                        if (openFileDialog.ShowDialog() == true)
                        {
                            path = openFileDialog.FileName;
                            LoadStatistic(path);
                        }
                    };
                    Func<object, bool> CanExecute = o => Cards.Count > 0;
                    _loadCommand = new BaseCommand(Execute, CanExecute);
                    return _loadCommand;
                }
            }
        }

        //public void LoadPlayersAndScore()
        //{
        //    OpenFileDialog openFileDialog = new OpenFileDialog();
        //    openFileDialog.Filter = "JSON files (*.json)|*.json";

        //    if (openFileDialog.ShowDialog() == true)
        //    {
        //        string filePath = openFileDialog.FileName;

        //            try
        //            {
        //                string jsonData = File.ReadAllText(filePath);
        //                var playerStats = JsonConvert.DeserializeObject<ObservableCollection<playerStatistics>>(jsonData);

        //                // Очищаем текущие данные
        //                PlayerStatistics.Clear();

        //                // Добавляем загруженные данные в коллекцию
        //                foreach (var stat in playerStats)
        //                {
        //                    PlayerStatistics.Add(stat);
        //                }

        //            PropertyInfo[] properties = typeof(playerStatistics).GetProperties();
        //                foreach (var player in PlayerStatistics)
        //                {
        //                    foreach (PropertyInfo property in properties)
        //                    {
        //                        var propertyValue = property.GetValue(player);
        //                        if (propertyValue == null || string.IsNullOrWhiteSpace(propertyValue.ToString()))
        //                        {
        //                            property.SetValue(player, "Failed");
        //                        }
        //                    }
        //                }
        //            }
        //            catch (Exception ex)
        //            {
        //                MessageBox.Show("Ошибка при загрузке файла JSON: " + ex.Message);
        //                return;
        //            }
        //        }
        //}

        //Сохранение статистики в нужный файл
        private BaseCommand _saveStatisticCommand;
        public BaseCommand SaveSttisticCommand
        {
            get
            {
                if (_saveStatisticCommand != null)
                    return _saveStatisticCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        SavePlayersAndScore();
                    };
                    Func<object, bool> CanExecute = o => Cards.Count > 0;
                    _saveStatisticCommand = new BaseCommand(Execute, CanExecute);
                    return _saveStatisticCommand;
                }
            }
        }

        public void SavePlayersAndScore()
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "JSON files (*.json)|*.json";

            if (saveFileDialog.ShowDialog() == true)
            {
                string filePath = saveFileDialog.FileName;

                // Сериализуем данные в формат JSON
                string jsonData = JsonConvert.SerializeObject(PlayerStatistics);
                File.WriteAllText(filePath, jsonData);
            }
        }

        // При нажатии на кнопку Начать
        private BaseCommand _startGameCommand;
        public BaseCommand StartGameCommand
        {
            get
            {
                if (_startCommand != null)
                    return _startGameCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        string newName = o as string;
                        Name = !string.IsNullOrEmpty(newName) && newName != "Введите своё имя" ? newName : "None";
                    };
                    Func<object, bool> CanExecute = o => true;
                    _startGameCommand = new BaseCommand(Execute, CanExecute);
                    return _startGameCommand;
                }
            }
        }

        // При старте в окне StartCards
        private BaseCommand _startCommand;
        public BaseCommand StartCommand
        {
            get
            {
                if (_startCommand != null)
                    return _startCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        ShuffleCards();
                        StartCard = Cards[index];
                        IsStartEnabled = false;
                        IsCheckEnabled = false;
                        IsListBoxVisible = Visibility.Visible;
                    }; 

                    Func<object, bool> CanExecute = o => true;
                    _startCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(StartCommand));
                    return _startCommand;
                }
            }
        }

        public void ShuffleCards()
        {
            Random rnd = new Random();
            for (int i = Cards.Count - 1; i > 0; i--)
            {
                int j = rnd.Next(0, i + 1);
                var temp = Cards[i];
                Cards[i] = Cards[j];
                Cards[j] = temp;
            }
            foreach (var card in Cards)
            {
                ShuffleMaybeTranslate(card.MaybeTranslate, rnd);
            }
        }
        //перемешиваем возможные переводы
        private void ShuffleMaybeTranslate(List<string> maybeTranslate, Random rnd)
        {
            for (int i = maybeTranslate.Count - 1; i > 0; i--)
            {
                int j = rnd.Next(0, i + 1);
                var temp = maybeTranslate[i];
                maybeTranslate[i] = maybeTranslate[j];
                maybeTranslate[j] = temp;
            }
        }

        // Удаление карточек
        private BaseCommand _delCommand;
        public BaseCommand DelCommand
        {
            get
            {
                if (_delCommand != null)
                    return _delCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        Card c = (Card)o;
                        Cards.Remove(c);
                    };
                    Func<object, bool> CanExecute = o => Cards.Count > 0 && o!=null;
                    _delCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(DelCommand));
                    return _delCommand;
                }
            }
        }


        // Добавление новых карточек
        private BaseCommand _addCommand;
        public BaseCommand AddCommand
        {
            get
            {
                if (_addCommand != null)
                    return _addCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        // Создание новой пустой карточки
                        Card newCard = new Card();
                        Cards.Add(newCard);
                        SelectedCard = newCard;
                        IsNewCardRowVisible = true; // Показать пустую строку
                    };
                    Func<object, bool> CanExecute = o => true; 
                    _addCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(AddCommand));
                    return _addCommand;
                }
            }
        }

        

        // Вызываем OnPropertyChanged для обновления интерфейса после сохранения данных
        private BaseCommand _saveCommand;
        public BaseCommand SaveCommand
        {
            get
            {
                if (_saveCommand != null)
                    return _saveCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        SaveData();
                        SaveInFile();
                        OnPropertyChanged(nameof(Cards));
                        IsEditingEnabled = false;
                    };
                    Func<object, bool> CanExecute = o => true; // Всегда разрешено
                    _saveCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(SaveCommand));
                    return _saveCommand;
                }
            }
        }

        // Кнопка "Проверить"
        private BaseCommand _CheckCommand;
        public BaseCommand CheckCommand
        {
            get
            {
                if (_CheckCommand != null)
                    return _CheckCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        string selectedTranslate = SelectedWord;
                        if (selectedTranslate == StartCard.Translate)
                        {
                            LabelColor = Brushes.Green; // Зеленый цвет
                            LabelContent = "Это правильный ответ!";
                            Score += 15;
                        }
                        else
                        {
                            LabelColor = new SolidColorBrush(Color.FromArgb(0xFF, 0x90, 0x0A, 0x0A)); // Красный цвет, если ответ неправильный
                            LabelContent = "Неправильный ответ";
                        }
                        IsNextEnabled = true;
                        IsListEnabled = false;
                        IsCheckEnabled = false;
                    };
                    Func<object, bool> CanExecute = o => true; // Всегда разрешено
                    _CheckCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(CheckCommand));
                    return _CheckCommand;
                }
            }
        }
        
        // Кнопка "Следующая карточка"
        private BaseCommand _NextCommand;
        public BaseCommand NextCommand
        {
            get
            {
                if (_NextCommand != null)
                    return _NextCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        index++;
                        IsNextEnabled = false;
                        IsListEnabled = true;
                        if (index < Cards.Count)
                        {
                            StartCard = Cards[index];
                            LabelColor = null;
                            LabelContent = "";
                            IsCheckEnabled = false;
                        }
                        else //если карточки закончились
                        {
                            LabelColor = Brushes.Black;
                            LabelContent = "Вы прошли весь тест! Ваши очки: "+Score;
                        }
                        
                    };
                    Func<object, bool> CanExecute = o => index < Cards.Count;
                    _NextCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(NextCommand));
                    return _NextCommand;
                }
            }
        }

        // Кнопка "Выход"
        private BaseCommand _ExitCommand;
        public BaseCommand ExitCommand
        {
            get
            {
                if (_ExitCommand != null)
                    return _ExitCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        // чтобы в статистике не были лишние данные
                        if (Name != "None" && Score != 0)
                        {
                            playerStatistics newPlayer = new playerStatistics(Name, Score);
                            PlayerStatistics.Add(newPlayer);
                            OnPropertyChanged(nameof(PlayerStatistics));

                            string jsonData = JsonConvert.SerializeObject(PlayerStatistics);
                            File.WriteAllText("Statistics.json", jsonData);
                        }
                    };
                    Func<object, bool> CanExecute = o => true; // Всегда разрешено
                    _ExitCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(ExitCommand));
                    return _ExitCommand;
                }
            }
        }


        // Сохранение карточек в файле 
        public void SaveInFile()
        {
            string filePath = "AllCards.json";
            List<SerializableCard> serializableCards = Cards.Select(card => new SerializableCard(card)).ToList();

            string jsonData = JsonConvert.SerializeObject(serializableCards);
            File.WriteAllText(filePath, jsonData);
        }
       

        // Кнопка загрузки для карточек
        private BaseCommand _LoadCardsCommand;
        public BaseCommand LoadCardsCommand
        {
            get
            {
                if (_LoadCardsCommand != null)
                    return _LoadCardsCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        OpenFileDialog openFileDialog = new OpenFileDialog();
                        openFileDialog.Filter = "JSON files (*.json)|*.json";
                        string path = "AllCards.json";
                        if (openFileDialog.ShowDialog() == true)
                        {
                            path = openFileDialog.FileName;
                            LoadData(path);
                        }
                        
                    };
                    Func<object, bool> CanExecute = o => true; // Всегда разрешено
                    _LoadCardsCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(LoadCardsCommand));
                    return _LoadCardsCommand;
                }
            }
        }

        // Кнопка "Очистить" для удаления всей статистики
        private BaseCommand _CleanCommand;
        public BaseCommand CleanCommand
        {
            get
            {
                if (_CleanCommand != null)
                    return _CleanCommand;
                else
                {
                    Action<object> Execute = o =>
                    {
                        PlayerStatistics.Clear();
                        OnPropertyChanged(nameof(PlayerStatistics));

                        string jsonData = JsonConvert.SerializeObject(PlayerStatistics);
                        File.WriteAllText("Statistics.json", jsonData);
                    };
                    Func<object, bool> CanExecute = o => true; // Всегда разрешено
                    _CleanCommand = new BaseCommand(Execute, CanExecute);
                    OnPropertyChanged(nameof(CleanCommand));
                    return _CleanCommand;
                }
            }
        }


        // Загрузка своих данных для карточек
        private void LoadData(string path)
        {
             string filePath = path;

           
            string jsonData = File.ReadAllText(filePath);
            List<SerializableCard> serializableCards = JsonConvert.DeserializeObject<List<SerializableCard>>(jsonData);

            serializableCards = serializableCards.OrderBy(card => card.id).ToList();

            PropertyInfo[] properties = typeof(SerializableCard).GetProperties();
            foreach (var serializableCard in serializableCards)
            {
                bool flag = true;
                foreach (PropertyInfo property in properties)
                {
                    var propertyValue = property.GetValue(serializableCard);
                    if (propertyValue == null || string.IsNullOrWhiteSpace(propertyValue.ToString()))
                    {
                        property.SetValue(serializableCard, "Failed");
                        flag = false;
                    }
                }
                if (flag)
                {
                    if (!Cards.Any(card => card.SpanishWord == serializableCard.SpanishWord))
                    {
                        Card new_card = new Card(serializableCard.id, serializableCard.SpanishWord, serializableCard.Translate, serializableCard.MaybeTranslate)
                        {
                            id = serializableCard.id,
                            SpanishWord = serializableCard.SpanishWord,
                            Translate = serializableCard.Translate,
                            MaybeTranslate = serializableCard.MaybeTranslate
                        };

                        Cards.Add(new_card);
                    }
                }

            }
        }

        //Сохранение карточек
        public void SaveData()
        {
            var validCards = GetValidCards();
            Cards = new ObservableCollection<Card>(validCards); // Обновляем список Cards только с прошедшими проверку объектами
        }

        //проверка на то, что все карточки корректны
        private List<Card> GetValidCards()
        {
            // Фильтрация списка Cards по условию корректности данных
            var validCards = Cards.Where(card => !string.IsNullOrEmpty(card.SpanishWord) && !string.IsNullOrEmpty(card.Translate)).ToList();
            return validCards;
        }

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
