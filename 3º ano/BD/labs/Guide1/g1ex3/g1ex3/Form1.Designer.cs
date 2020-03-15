namespace g1ex3
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.serverlb = new System.Windows.Forms.Label();
            this.userlb = new System.Windows.Forms.Label();
            this.passlb = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.connectionbt = new System.Windows.Forms.Button();
            this.tablebt = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // serverlb
            // 
            this.serverlb.AutoSize = true;
            this.serverlb.Location = new System.Drawing.Point(104, 65);
            this.serverlb.Name = "serverlb";
            this.serverlb.Size = new System.Drawing.Size(50, 17);
            this.serverlb.TabIndex = 0;
            this.serverlb.Text = "Server";
            // 
            // userlb
            // 
            this.userlb.AutoSize = true;
            this.userlb.Location = new System.Drawing.Point(104, 169);
            this.userlb.Name = "userlb";
            this.userlb.Size = new System.Drawing.Size(38, 17);
            this.userlb.TabIndex = 1;
            this.userlb.Text = "User";
            // 
            // passlb
            // 
            this.passlb.AutoSize = true;
            this.passlb.Location = new System.Drawing.Point(104, 273);
            this.passlb.Name = "passlb";
            this.passlb.Size = new System.Drawing.Size(69, 17);
            this.passlb.TabIndex = 2;
            this.passlb.Text = "Password";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(239, 65);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(371, 22);
            this.textBox1.TabIndex = 3;
            this.textBox1.Text = "tcp:mednat.ieeta.pt\\SQLSERVER,8101";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(239, 163);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(371, 22);
            this.textBox2.TabIndex = 4;
            this.textBox2.Text = "p1g3";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(239, 273);
            this.textBox3.Name = "textBox3";
            this.textBox3.PasswordChar = '*';
            this.textBox3.Size = new System.Drawing.Size(371, 22);
            this.textBox3.TabIndex = 5;
            this.textBox3.Text = "Facil3Facil";
            // 
            // connectionbt
            // 
            this.connectionbt.Location = new System.Drawing.Point(239, 345);
            this.connectionbt.Name = "connectionbt";
            this.connectionbt.Size = new System.Drawing.Size(125, 42);
            this.connectionbt.TabIndex = 6;
            this.connectionbt.Text = "Connection test";
            this.connectionbt.UseVisualStyleBackColor = true;
            this.connectionbt.Click += new System.EventHandler(this.connectionbt_Click);
            // 
            // tablebt
            // 
            this.tablebt.Location = new System.Drawing.Point(483, 345);
            this.tablebt.Name = "tablebt";
            this.tablebt.Size = new System.Drawing.Size(127, 42);
            this.tablebt.TabIndex = 7;
            this.tablebt.Text = "Hello table";
            this.tablebt.UseVisualStyleBackColor = true;
            this.tablebt.Click += new System.EventHandler(this.tablebt_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tablebt);
            this.Controls.Add(this.connectionbt);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.passlb);
            this.Controls.Add(this.userlb);
            this.Controls.Add(this.serverlb);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label serverlb;
        private System.Windows.Forms.Label userlb;
        private System.Windows.Forms.Label passlb;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Button connectionbt;
        private System.Windows.Forms.Button tablebt;
    }
}

