using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using desktop014200.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;
using desktop014200.View;

namespace desktop014200.Vm
{
    public partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public ObservableCollection<User> users;
        [ObservableProperty]
        public User selectedUser = null;
        public void closeMainWindow()
        {
            Application.Current.MainWindow.Close();
        }

        [RelayCommand]
        public void messagebox()
        {

            MessageBox.Show($"{SelectedUser.FirstName} GPA must be between 0 and 4.", "Error");
        }

        [RelayCommand]
        public void addUser()
        {
            var vM = new AddUserWindowVM();
            vM.title = "Add user";
            AddUserWindow window = new AddUserWindow(vM);
            window.ShowDialog();

            if (vM.Student != null)
            {
                Users.Add(vM.Student);
            }
            else
                return;
        }

        [RelayCommand]
        public void deleteUser()
        {
            if (SelectedUser != null)
            {
                string name = SelectedUser.FirstName;
                Users.Remove(SelectedUser);
                MessageBox.Show($"{name} is successfully deleted!", "DELETED \a ");

            }
            else
            {
                MessageBox.Show("Select a student first", "Error");


            }
        }
        [RelayCommand]
        public void editUser()
        {
            if (SelectedUser != null)
            {
                var vm = new AddUserWindowVM(SelectedUser);
                vm.title = "Edit user";
                var window = new AddUserWindow(vm);

                window.ShowDialog();


                int index = users.IndexOf(SelectedUser);
                Users.RemoveAt(index);
                Users.Insert(index, vm.Student);



            }
            else
            {
                MessageBox.Show("Select a student first", "Warning!");
            }
        }

        public MainWindowVM()
        {
            users = new ObservableCollection<User>();
            BitmapImage imageMale = new BitmapImage(new Uri("/Model/Images/male.png", UriKind.Relative));
            BitmapImage imageFemale = new BitmapImage(new Uri("/Model/Images/female.png", UriKind.Relative));
            BitmapImage imageOther = new BitmapImage(new Uri("/Model/Images/other.png", UriKind.Relative));

            users.Add(new User("Jeewantha", "Dineth", imageMale, "26/04/2000", 3.7));


            users.Add(new User("Nelaka", "Rupasinghe", imageMale, "03/10/2000", 3.6));


            users.Add(new User("Navindu", "Gunawardena", imageMale, "06/07/2000", 4.0));


            users.Add(new User("Shehani", "Cruze", imageFemale, "10/04/2000", 3.0));


            users.Add(new User("James", "Charles", imageOther, "11/3/2000", 3.0));





        }
    }
}
