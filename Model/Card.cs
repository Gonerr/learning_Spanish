using learning_Spanish.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace learning_Spanish.Data
{
    internal class Card
    {

        public int id { get; set; }
        public string SpanishWord { get; set; }
        public string Translate { get; set; }
        public List<string> MaybeTranslate { get; set; }
        public string maybeTranslateAsString { get; set; }

        public Card()
        {

        }
        public Card(int Id, string spanishWord, string translate, List<string> maybeTranslate)
        {
            id = Id;
            SpanishWord = spanishWord;
            Translate = translate;
            MaybeTranslate = maybeTranslate;
            maybeTranslateAsString = string.Join(",", maybeTranslate);
        }

        public static Card[] GetCards()
        {
            var result = new Card[]
            {
                new Card(1, "Niño", "Мальчик",["Девочка","Мальчик","Кот","Работа" ]),
                new Card(2, "Niña", "Девочка", ["Девочка","Мальчик","Собака","Школа" ]),
                new Card(3, "Leche", "Молоко", ["Кот","Фрукт","Молоко","Соус"]),
                new Card(4, "Agua", "Вода", ["Вода","Яблоко","Груша","Молоко"])
            };
            return result;
        }
    }

}
