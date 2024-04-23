using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Habilitations.model;

namespace Habilitations.view
{
    public partial class UserDetailsForm : Form
    {
        public UserDetailsForm(User user)
        {
            InitializeComponent();
            lblName.Text = user.Name;
            lblEmail.Text = user.Email;
        }
    }
}
