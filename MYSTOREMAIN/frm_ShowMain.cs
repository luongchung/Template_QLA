﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MYSTOREMAIN
{
    public partial class frm_ShowMain : Form
    {
        public frm_ShowMain()
        {
            InitializeComponent();
        }

        private void frm_ShowMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            //e.Cancel = true;
        }
    }
}
