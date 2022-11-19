[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

#生成菜单框，大小为300x400,在屏幕中央显示
$objForm = New-Object System.Windows.Forms.Form
$objForm.Text = "PowerShell Menu"
$objForm.Size = New-Object System.Drawing.Size(300,400)
$objForm.StartPosition = "CenterScreen"

#下面生成第一个输入框，包括输入提示文本，和输入框。提示用户输入名字，这里设定了一个缺省名为Greg
$objLabel = New-Object System.Windows.Forms.Label
$objLabel.Location = New-Object System.Drawing.Size(10,20)
$objLabel.Size = New-Object System.Drawing.Size(280,20)
$objLabel.Text = "Please enter your First name:"
$objForm.Controls.Add($objLabel)

$objTextBox = New-Object System.Windows.Forms.TextBox
$objTextBox.Location = New-Object System.Drawing.Size(10,40)
$objTextBox.Size = New-Object System.Drawing.Size(260,20)
$objTextBox.text = "Greg"
$objForm.Controls.Add($objTextBox)

#下面生成第二个输入框，包括输入提示文本，和输入框。提示用户输入姓，这里设定了一个缺省值为Wang


$objLabel1 = New-Object System.Windows.Forms.Label
$objLabel1.Location = New-Object System.Drawing.Size(10,60)
$objLabel1.Size = New-Object System.Drawing.Size(280,20)
$objLabel1.Text = "Please enter your surname:"
$objForm.Controls.Add($objLabel1)

$objTextBox1 = New-Object System.Windows.Forms.TextBox
$objTextBox1.Location = New-Object System.Drawing.Size(10,80)
$objTextBox1.Size = New-Object System.Drawing.Size(260,20)
$objTextBox1.text = "Wang"
$objForm.Controls.Add($objTextBox1)

#生成一多选框，要求用户选择最喜欢的数字
$objLabel2 = New-Object System.Windows.Forms.Label
$objLabel2.Location = New-Object System.Drawing.Size(10,100)
$objLabel2.Size = New-Object System.Drawing.Size(280,20)
$objLabel2.Text = "Please enter your favorite number:"
$objForm.Controls.Add($objLabel2)

$number=0..9
$objListbox = New-Object Windows.Forms.CheckedListBox
$objListbox.CheckOnClick = $true
$objListBox.Items.AddRange($number)
$objListBox.Location=New-Object System.Drawing.Size(10,120)
$objListBox.Size = New-Object System.Drawing.Size(260,160)
$objForm.Controls.Add($objListBox)

#生成OK按钮

$OKButton = New-Object System.Windows.Forms.Button
$OKButton.Location = New-Object System.Drawing.Size(110,320)
$OKButton.Size = New-Object System.Drawing.Size(75,23)
$OKButton.Text = "OK"
$OKButton.Add_Click({$objForm.Close()})
$objForm.Controls.Add($OKButton)

#生成结果
$objForm.Add_Shown({$objForm.Activate()})
[void] $objForm.ShowDialog()

"Hi "+$objTextBox.text+" "+$objTextBox1.text+"! Your favorite number is:"
foreach($index in $objListBox.CheckedIndices)
{
$number[$index]
}