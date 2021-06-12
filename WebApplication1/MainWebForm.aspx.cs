using System;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (ListBoxSubjects.SelectedIndex.Equals(0)) // case where --Code-- is selected
                return; // nothing to do

            if (ListBoxCourses.Items.Count > 4) // case where maximum nb of courses added
                return; // nothing to do


            // in the for loop below, we're checking if the selected subject is already in the list of courses,
            // while preventing the user from choosing the same course with a different credits nb
            ListItem item = new ListItem();
            for(int i = 3; i <= 5; i++)
            {
                item.Text = ListBoxSubjects.SelectedItem.Text + " - " + i;
                item.Value = ListBoxSubjects.SelectedItem.Text + " - " + i;
                if (ListBoxCourses.Items.Contains(item)) // case where selected course is already added
                    return;
            }

            // adding the new nb of credits given from the textbox to the total nb of credits
            int totalCredits = int.Parse(LabelTotalCredits.Text) + int.Parse(TextBoxCredits.Text); 

            if (totalCredits > 15) // case where maximum nb of credits added
                return; // nothing to do

            // printing the calculated value in the label
            LabelTotalCredits.Text = totalCredits.ToString();

            // All conditions satisfied - adding selected subject to ListBoxCourses
            ListBoxCourses.Items.Add(ListBoxSubjects.SelectedItem.Text + " - " + TextBoxCredits.Text);

            // empty the textbox
            TextBoxCredits.Text = " ";
        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            if (ListBoxCourses.SelectedIndex.Equals(0)) // case where --Code-- is selected
                return;

            string tmpCredits = ListBoxCourses.SelectedItem.Text; // getting the string value of the selected course
            int credits = int.Parse(tmpCredits.Substring(8, 1)); // getting the int value (credit nb) of the selected course which will be removed

            int totalCredits = int.Parse(LabelTotalCredits.Text) - credits; // updating the totalCredits nb
            LabelTotalCredits.Text = totalCredits.ToString(); // printing the new value of totalCredits into the label
            
            ListBoxCourses.Items.Remove(ListBoxCourses.SelectedItem); // remove the selected course from ListBoxCourses
        }

        protected void ButtonDeleteAll_Click(object sender, EventArgs e)
        {
            ListBoxCourses.Items.Clear(); // removing all items then adding the initial one (--Code--)
            ListBoxCourses.Items.Add("--Code--");

            LabelTotalCredits.Text = "0"; // totalCredits reset
        }

        protected void ButtonMoveUp_Click(object sender, EventArgs e)
        {
            MoveItem(-1); // the index of the selected item moving up will be reduced by 1
 
        }

        protected void ButtonMoveDown_Click(object sender, EventArgs e)
        {
            MoveItem(+1); // the index of the selected item moving down will be increased by 1
        }

        private void MoveItem(int direction)
        {
            // Checking the selected course
            if (ListBoxCourses.SelectedItem == null || ListBoxCourses.SelectedIndex == 0)
                return; // No selected item || (--Code--) selected

            // Calculating the new index using move direction
            int newIndex = ListBoxCourses.SelectedIndex + direction;

            // Checking the validity of the index bounds
            if (newIndex < 1 || newIndex >= ListBoxCourses.Items.Count)
                return; // Index out of bounds

            // Getting a temp of the selected course item
            ListItem selected = ListBoxCourses.SelectedItem;

            // Removing the selected course
            ListBoxCourses.Items.Remove(selected);

            // Then inserting it in the new position
            ListBoxCourses.Items.Insert(newIndex, selected);
        }
    }
}