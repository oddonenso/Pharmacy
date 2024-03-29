using Microsoft.Win32;
using Npgsql.Internal;
using Pharmacy.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection.Metadata;
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
    /// Логика взаимодействия для Admin.xaml
    /// </summary>
    public partial class Admin : Page
    {
        private User currentUser;
        private Connection context = new Connection();

        public Admin(User currentUser)
        {
            InitializeComponent();
            this.currentUser = currentUser;
            var ppl = context.Users.ToList();
            LViewPpl.ItemsSource = ppl;
        }


        









        private void Selector_OnSelectionChanged(object sender, RoutedEventArgs e)
        {
            var selectedUser = (User)LViewPpl.SelectedItem;

            if (selectedUser != null)
            {
               // NavigationService.Navigate(new Redact(selectedUser));
            }
            else
            {
                MessageBox.Show("Please select a user to edit.");
            }
        }

        private void txtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            string searchText = txtSearch.Text;

            if (searchText.Length == 0)
            {
                var ppl = context.Users.ToList();
                LViewPpl.ItemsSource = ppl;
            }
            else
            {
                if (cmbSorting.SelectedIndex == 0) //по возр
                {
                    switch (cmbFilter.SelectedIndex)
                    {
                        case 0: // Должность
                            var filteredAndSortedPpl = context.Users
                                .Where(u => u.Role.RoleName.Contains(searchText))
                                .OrderBy(u => u.Role.RoleName)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl;
                            break;

                        case 1: // Фамилия
                            var filteredAndSortedPpl1 = context.Users
                                .Where(u => u.Surname.Contains(searchText))
                                .OrderBy(u => u.Surname)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl1;
                            break;

                        case 2: // Имя
                            var filteredAndSortedPpl2 = context.Users
                                .Where(u => u.Name.Contains(searchText))
                                .OrderBy(u => u.Name)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl2;
                            break;

                        case 3: // Отчество
                            var filteredAndSortedPpl3 = context.Users
                                .Where(u => u.Patronymic.Contains(searchText))
                                .OrderBy(u => u.Patronymic)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl3;
                            break;
                    }
                }

                if (cmbSorting.SelectedIndex == 1) //по убыв
                {
                    switch (cmbFilter.SelectedIndex)
                    {
                        case 0: // Должность
                            var filteredAndSortedPpl = context.Users
                                .Where(u => u.Role.RoleName.Contains(searchText))
                                .OrderByDescending(u => u.Role.RoleName)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl;
                            break;

                        case 1: // Фамилия
                            var filteredAndSortedPpl1 = context.Users
                                .Where(u => u.Surname.Contains(searchText))
                                .OrderByDescending(u => u.Surname)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl1;
                            break;

                        case 2: // Имя
                            var filteredAndSortedPpl2 = context.Users
                                .Where(u => u.Name.Contains(searchText))
                                .OrderByDescending(u => u.Name)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl2;
                            break;

                        case 3: // Отчество
                            var filteredAndSortedPpl3 = context.Users
                                .Where(u => u.Patronymic.Contains(searchText))
                                .OrderByDescending(u => u.Patronymic)
                                .ToList();
                            LViewPpl.ItemsSource = filteredAndSortedPpl3;
                            break;
                    }
                }
            }
        }

        private void btnAddUser_Click(object sender, RoutedEventArgs e)
        {
            Invite invite = new Invite();
            NavigationService.Navigate(invite);
        }


        private void cmbFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void LViewPpl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
