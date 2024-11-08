using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace learning_Spanish.Model
{
    class playerStatistics
    {
        public string Name { get; set; }
        public int Score { get; set; }

        public playerStatistics(string name, int score)
        {
            Name = name;
            Score = score;
        }
    }
}

