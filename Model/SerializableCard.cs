using learning_Spanish.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace learning_Spanish.Model
{
    class SerializableCard
    {
        public int id { get; set; }
        public string SpanishWord { get; set; }
        public string Translate { get; set; }
        public List<string> MaybeTranslate { get; set; }
        public string maybeTranslateAsString { get; set; }

        public SerializableCard()
        {
        }

        public SerializableCard(Card card)
        {
            id = card.id;
            SpanishWord = card.SpanishWord;
            Translate = card.Translate;
            MaybeTranslate = card.maybeTranslateAsString.Split(',').ToList();
            maybeTranslateAsString = card.maybeTranslateAsString;
        }
    }
}
