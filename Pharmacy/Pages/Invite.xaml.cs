using Pharmacy.Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Pharmacy.Pages
{
    /// <summary>
    /// Логика взаимодействия для Invite.xaml
    /// </summary>
    public partial class Invite : Page
    {
        private User currentUser;
        public Invite()
        {
            InitializeComponent();
            currentUser = new User();

        }
        private void InitializeUI()
        {
            tbFam.Text = currentUser.Surname;
            tbName.Text = currentUser.Name;
            tbOtch.Text = currentUser.Patronymic;
            tbPhone.Text = currentUser.Phone;

            tbRole.SelectedIndex = currentUser.RoleID - 1;

            tbLogin.Text = currentUser.Login;
            tbPass.Text = currentUser.Password;

            if (currentUser.Photo != null && currentUser.Photo.Length > 0)
            {
                ImageUser.Source = LoadImageFromBytes(currentUser.Photo);
            }
        }
        private BitmapImage LoadImageFromBytes(byte[] imageData)
        {
            BitmapImage image = new BitmapImage();

            try
            {
                using (MemoryStream stream = new MemoryStream(imageData))
                {
                    image.BeginInit();
                    image.CacheOption = BitmapCacheOption.OnLoad;
                    image.StreamSource = stream;
                    image.EndInit();
                    image.Freeze();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error loading image: " + ex.Message);
            }

            return image;
        }
        private void AddImage_Click(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog openFileDialog = new Microsoft.Win32.OpenFileDialog();
            openFileDialog.Filter = "Image Files (*.jpg, *.jpeg, *.png, *.bmp)|*.jpg;*.jpeg;*.png;*.bmp";

            if (openFileDialog.ShowDialog() == true)
            {
                try
                {
                    currentUser.Photo = File.ReadAllBytes(openFileDialog.FileName);

                    ImageUser.Source = LoadImageFromBytes(currentUser.Photo);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error loading image: " + ex.Message);
                }
            }
        }


        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {

            User newUser = new User
            {
                Name = tbName.Text,
                Surname = tbFam.Text,
                Patronymic = tbOtch.Text,
                Phone = tbPhone.Text,
                Email = "",
                Login = tbLogin.Text,
                Password = tbPass.Text,
                RoleID = GetRoleIdFromComboBox(),
                GenderId = GetGenderIdFromComboBox(),
            };

            // Save the user to the database
            using (var dbContext = new Connection())
            {
                dbContext.Users.Add(newUser);
                dbContext.SaveChanges();
            }

            MessageBox.Show("User saved to the database.");
        }

        private int GetRoleIdFromComboBox()
        {

            switch (tbRole.SelectedItem.ToString())
            {
                case "Client":
                    return 1;
                case "Employee":
                    return 2;
                case "Admin":
                    return 3;
                default:
                    return 1;
            }
        }

        private int GetGenderIdFromComboBox()
        {

            switch (tbGender.SelectedItem.ToString())
            {
                case "Мужской":
                    return 1;
                case "Женский":
                    return 2;
                default:
                    return 1;
            }
        }

        private void BtnSaveImage_Click(object sender, RoutedEventArgs e)
        {
            if (currentUser.Photo != null && currentUser.Photo.Length > 0)
            {
                using (var imageContext = new Connection())
                {
                    var userWithImage = imageContext.Users.FirstOrDefault(u => u.UserID == currentUser.UserID);

                    if (userWithImage != null)
                    {
                        using (MemoryStream stream = new MemoryStream(currentUser.Photo))
                        {
                            userWithImage.Photo = stream.ToArray();
                        }

                        imageContext.SaveChanges();
                    }
                }
            }
        }
    }
}
