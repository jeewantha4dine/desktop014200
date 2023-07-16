using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace desktop014200.Model
{
    public class User
    {

        public string FirstName { get; set; }
        public string LastName { get; set; }

        public BitmapImage Image { get; set; }

        public string DateOfBirth { get; set; }
        public double GPA { get; set; }

        public String ImagePath
        {
            get { return $"/Model/Images/{Image}"; }
        }

        public User(string firstName, string lastName, string dateOfBirth, BitmapImage image)
        {

            FirstName = firstName;
            LastName = lastName;
            DateOfBirth = dateOfBirth;
            Image = image;
        }

        public User()
        {
        }

        public User(string firstName, string lastName, BitmapImage image, string dateOfBirth, double gPa)
        {
            FirstName = firstName;
            LastName = lastName;
            Image = image;
            DateOfBirth = dateOfBirth;
            GPA = gPa;
        }
    }
}
