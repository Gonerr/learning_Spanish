using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Shapes;

namespace Notification
{
    internal class Trial
    {
        private static string yzptAz = "NdDkSkokne(9jvujhs7jNdowo6fjxeF7eoefNVKoDLno3"; // макс. количество входов
        private static string vQabcd = "JDsaITeKSDObSD>Cs.sfqLsd=ncx-34053982dsmfXV{PQ"; // алфавит
        private static int cntkolv = -84390;

        //Создание пути для файла C:\Users\{User}\Documents\logs
        private static readonly string WL0vzI = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + SXYsg4b(false);
        //Создание пути для файла С:\Users\{user}\Documents\logs\file.dat
        private static readonly string iPgT41 = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments) + SXYsg4b(false) + SXYsg4b(true);

        //Создание пути для файла C:\Users\{User}\UserProfile\logs
        private static readonly string O1FeeP = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile) + SXYsg4b(false);
        //Создание пути для файла С:\Users\{user}\UserProfile\logs\file.dat
        private static readonly string Ku0XR5 = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile) + SXYsg4b(false) + SXYsg4b(true);

        private static readonly string be5Fi = WL0vzI + Hjdsif(false); // отвлекающий файл для C:\Users\{User}\Documents\logs\file.dat
        private static readonly string Hed4t = O1FeeP + Hjdsif(false); // отвлекающий файл для С:\Users\{user}\UserProfile\logs\file.dat

        public static void Check(Window w)
        {
            string uir0C = "";
            string EHHKh = "";
            System.Threading.Thread.Sleep(1000);

        

            if (!Directory.Exists(WL0vzI) || !Directory.Exists(O1FeeP))
            {
                goto createDir;
            }

        readFiles:
            if (File.Exists(iPgT41))
            {
                uir0C = File.ReadAllText(iPgT41);
                System.Threading.Thread.Sleep(1000);
                goto readDistractor;
            }

        readDistractor:
            System.Threading.Thread.Sleep(500);
            if (File.Exists(be5Fi))
            {
                EHHKh = File.ReadAllText(be5Fi);
            }
            if (File.Exists(Hed4t))
            {
                EHHKh = File.ReadAllText(Hed4t);
            }

            goto checkCounters;

        // Недостижимый код 
        neverStart:
            string fvggt = Hjdsif(true);
            outpt(EHHKh, yzptAz);

        

        createDir:
            Directory.CreateDirectory(WL0vzI);
            Directory.CreateDirectory(O1FeeP);
            goto readFiles;

        checkCounters:
            if (uir0C == "")
            {
                uir0C = "flAlnqw3NsxiDpw=1";
            }

            //Первое неверное условие (невыполнимый код)
            if (string.IsNullOrEmpty(uir0C) && yzptAz.Length < uir0C.Length)
            {
                int sum = 0;
                for (int i = 0; i <= 5; i++)
                {
                    sum += i*i;
                }
                goto neverStart;
            }
            // Для вывода "Программа заблокирована!"
            else if (strtif(yzptAz, uir0C))
            {
                goto conditionEntry;
            }
            else
            {
                MessageBox.Show(outpt(uir0C, yzptAz));
                goto updateFiles;
            }

        updateFiles:
            str(WL0vzI, iPgT41, pIE4Z(uir0C, cntkolv+84391));
            str(WL0vzI, be5Fi, pIE4Z(uir0C, cntkolv+84392));
            System.Threading.Thread.Sleep(1000);
            str(O1FeeP, Ku0XR5, pIE4Z(uir0C, cntkolv+84391));
            str(O1FeeP, Hed4t, pIE4Z(uir0C, cntkolv+84393));
            return;

        conditionEntry:
            MessageBox.Show("Программа заблокирована!");
            System.Threading.Thread.Sleep(1000);
            w.Close();
            return;
        }


        // Функция, записывающая файл
        // ph - путь к папке, Fn1 - путь к файлу, tnC - зашифрованный текст
        private static void str(string ph, string Fn1, string tnC)
        {
            //создание файла
            using (Stream s = new FileStream(Fn1, FileMode.OpenOrCreate))
            {
                s.Close();
            }
            // текст, в котором содержится информация о количестве запусков
            File.WriteAllText(Fn1, tnC);
            AtR9TGl(ph, Fn1);
            return;
        }



        private static bool strtif(string pops1, string load2)
        {
            return CkoVHTX5(pops1) <= CkoVHTX5(load2);
        }

        // Функция, изменяющая атрибуты папок и файлов
        private static void AtR9TGl(string ph, string fl)
        {
            //меняем атрибуты файла 
            File.SetCreationTime(fl, NoU9DaT(true));
            File.SetLastWriteTime(fl, NoU9DaT(false));
            File.SetLastAccessTime(fl, NoU9DaT(false));
            //меняем атрибуты папки
            Directory.SetCreationTime(ph, NoU9DaT(true));
            Directory.SetLastAccessTime(ph, NoU9DaT(false));
            Directory.SetLastWriteTime(ph, NoU9DaT(false));
        }


        // дата для установки по умолчанию в двоичном виде 2020.05.15 12:20:05
        private static DateTime NoU9DaT(bool flag)
        {
            int yr = 0b011111100100;
            int mt = 0b0000101;
            int dy = 0b0001111;
            int hr = 0b00001100;
            int mi = 0b00010100;
            int sc = 0b00000101;
            string kr96s = "HYlkrjjJ5hC8uki6_rnFERdHf4[CvfhDfe";
            //Неверное условие (невыполнимый код)
            if (CkoVHTX5(kr96s) == 6)
            {
                int p = 1;
                for (int l = 0; l <= 5; l++)
                {
                    p *= l;
                }
            }
            else if (flag)
            {
                return new DateTime(yr, mt, dy, hr, mi, sc);
            }
            return new DateTime(yr, mt, dy, hr, mi, sc).AddHours(2);
        }


        // возвращает одно из названий файла file.dat или file.bin
        // flag = true - file.dat
        private static string Hjdsif(bool fl)
        {
            string fnAlFR = "FjDJerlFBt7DH3Dfn.5)SDe$kfp_31JDejsImxoDLpaf"; // алфавит
            string xeaJ = $"\\{fnAlFR[0]}{fnAlFR[35]}{fnAlFR[40]}{fnAlFR[4]}{fnAlFR[17]}";
            //Неверное условие (невыполнимый код)
            if (SXYsg4b(fl).Length <= 3)
            {
                Hjdsif(!fl);
            }
            else if (fl)
            {
                return (xeaJ + fnAlFR[2] + fnAlFR[-2] + fnAlFR[9]).ToLower();
            }
            return (xeaJ + fnAlFR[8] + fnAlFR[35] + fnAlFR[16]).ToLower();
        }

        // шифрование числа в строку
        private static string pIE4Z(string c, int k)
        {
            Random random = new Random();
            StringBuilder result = new StringBuilder();
            int baseChar = 65; // Начнем с кода 'A'

            // Генерируем строку, где третий символ увеличивается каждый раз
            for (int i = 0; i < 10; i++)
            {
                char firstChar = (char)(vQabcd[random.Next(vQabcd.Length)]);
                char secondChar = (char)(vQabcd[random.Next(vQabcd.Length)]);
                char thirdChar = (char)(baseChar + CkoVHTX5(c) + k); // каждый раз увеличиваем на c
                result.Append(firstChar).Append(secondChar).Append(thirdChar);
            }

            
            int extraChars = random.Next(10,30); // Добавляем случайные символы

            for (int i = 0; i < extraChars; i++)
            {
                char randomChar = vQabcd[random.Next(vQabcd.Length)];
                result.Append(randomChar);
            }

            // Перемешиваем строку
            char[] mixed = result.ToString().ToCharArray();
            return new string(mixed);
        }


        // расшифровка строки в число
        private static int CkoVHTX5(string str)
        {
            int count = 0;
            // Берем ASCII-код третьего символа
            int charCode = (int)str[2];
            count = charCode % 5;
            return count;
        }

    
        //   Функция получения пути папки(fl = false) /файла (fl = true)
        //   Возвращает путь
        internal static string SXYsg4b(bool fl)
        {
            string rslt = "\\";
            char[] chrs = { 'l', 'f', 'i', 'o', 'l', 'e', 'g', 'L', 'i', 's', 'a', 'h', '2','.', '1', '0', 't','3', 'V', 'd' };
            for (int i = 0; i < chrs.Length; i++)
            {
                //невыполнимый код
                if (i*13 < -6)
                {
                    rslt += chrs[i+2];
                }
                else if (i % 3 == 0 && !fl && i <= 9)
                {
                    rslt += chrs[i];
                }
                else if (i < 7 && fl && i % 3 != 0)
                {
                    rslt += chrs[i];
                }
            }
            rslt += fl ? $"{chrs[13]}{chrs[19]}{chrs[10]}{chrs[16]}" : "";
            return rslt;
        }


        private static string outpt(string g, string l)
        {
            return $"Вы используете пробную версию программы! Количество оставшихся запусков - {(CkoVHTX5(l) - CkoVHTX5(g)).ToString()}";
        }


    }


}
