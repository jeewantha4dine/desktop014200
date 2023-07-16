using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using desktop014200.Model;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace desktop014200.Vm
{
    public partial class AddUserWindowVM : ObservableObject

    {


        [ObservableProperty]
        public string firstname;


        [ObservableProperty]
        public string lastname;


        [ObservableProperty]
        public string dateofbirth;

        [ObservableProperty]
        public double gpa;



        //Change title



        [ObservableProperty]
        public string title;

        [ObservableProperty]
        public BitmapImage selectedImage;



        public AddUserWindowVM(User u)
        {
            Student = u;

            firstname = Student.FirstName;
            lastname = Student.LastName;
            gpa = Student.GPA;
            dateofbirth = Student.DateOfBirth;
            selectedImage = Student.Image;

        }
        public AddUserWindowVM()
        {

        }


        //Getting an image 
        [RelayCommand]
        public void UploadPhoto()
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image files | *.jpg; *.png; *.bmp";
            dialog.FilterIndex = 1;
            if (dialog.ShowDialog() == true)
            {
                selectedImage = new BitmapImage(new Uri(dialog.FileName));

                MessageBox.Show("Image is successfully uploaded!", "Successfull");
            }
        }






        public User Student { get; private set; }
        public Action CloseAction { get; internal set; }

        [RelayCommand]
        public void Save()
        {



            if (gpa < 0 || gpa > 4)
            {
                MessageBox.Show("GPA must be between 0 and 4.", "Error");
                return;
            }
            if (Student == null)
            {

                Student = new User()
                {
                    Image = selectedImage,
                    FirstName = firstname,
                    LastName = lastname,
                    DateOfBirth = dateofbirth,
                    GPA = gpa

                };


            }
            else
            {
                Student.Image = selectedImage;
                Student.FirstName = firstname;
                Student.LastName = lastname;
                Student.DateOfBirth = dateofbirth;
                Student.GPA = gpa;




            }

            if (Student.FirstName != null)
            {

                CloseAction();
            }
            Application.Current.MainWindow.Show();


        }
    }
}
