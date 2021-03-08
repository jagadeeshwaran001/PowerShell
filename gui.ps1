# add-type -AssemblyName System.Windows.Forms
# add-type -AssemblyName System.Drawing

# $LocalPrintVariable = New-Object System.Windows.Forms.Form

# $LocalPrinterVariable.ClientSize         = New-Object System.Drawing.Point(2122,591)
# $LocalPrintVariable.text = "hii this is jagadeeshwaran's first gui"
# $LocalPrintVariable.BackColor = "#ffffff"
# #---------------------------------------
# $title = New-Object System.Windows.Forms.Label

# $title.AutoSize = $true
# $title.Text = "adding new printer"
# $title.Location = New-Object System.Drawing.Point(20,20)

# $title.Font = "Microsoft sans serif,13"

# #-----------------------------------

# $description = New-Object System.Windows.Forms.Label

# $description.Text = "Add a new construction site printer to your computer. Make sure you are connected to the network of the construction site."
# $description.AutoSize = $false
# $description.Width = 450
# $description.Height = 50
# $description.Location = New-Object System.Drawing.Point(20,50)
# $description.Font  = "Microsoft sans serif,10"
# #-----------------------------------------
# $DropDownBox = New-Object System.Windows.Forms.ComboBox

# $DropDownBox.text = 'select any one'
# $DropDownBox.width = 170
# $DropDownBox.AutoSize = $true

# @('jagan','yogesh','shylu') | ForEach-Object {[void] $DropDownBox.Items.Add($_)}

# $DropDownBox.SelectedIndex = 1
# $DropDownBox.location            = New-Object System.Drawing.Point(20,210)
# $DropDownBox.Font                = 'Microsoft Sans Serif,10'

# $LocalPrintVariable.Controls.AddRange(@($title,$description,$DropDownBox))




# [void]$LocalPrintVariable.ShowDialog()


Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(1080,720)
$Form.text                       = "Admin Tool by Jagadeeshewaran.V"
$Form.TopMost                    = $false
$FormScrollBars                  = "Vertical"    
$Form.FormBorderStyle            = "Fixed3D" 
$form.StartPosition              = "centerScreen" 
$form.ShowInTaskbar              = $true 

$StatusBar = New-Object System.Windows.Forms.StatusBar
$StatusBar.Text = "Ready"
$StatusBar.Height = 22
$StatusBar.Width = 200
$StatusBar.Location = New-Object System.Drawing.Point( 0, 250 )

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $true
$TextBox1.width                  = 358
$TextBox1.height                 = 100
$TextBox1.ScrollBars             = "Vertical"        
$TextBox1.location               = new-object system.drawing.point(40,63) 
$TextBox1.Font                   = 'Microsoft Sans Serif,10,style=Bold'

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $true
$TextBox2.width                  = 372
$TextBox2.height                 = 50
$TextBox2.location               = New-Object System.Drawing.Point(40,230)
$TextBox2.Font                   = 'Microsoft Sans Serif,10,style=Bold'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Server list"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(40,31)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Filters"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(40,200)
$Label6.Font                     = 'Microsoft Sans Serif,10'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Automatic Services Running"
$Button2.width                   = 75
$Button2.height                  = 40
$Button2.location                = New-Object System.Drawing.Point(608,63)
$Button2.Font                    = 'Microsoft Sans Serif,10'
$Button2.Font = "Microsoft Sans Serif,8" 
$Button2.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(255, 255, 36)
$Button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Button2.Cursor = [System.Windows.Forms.Cursors]::Hand
$Button2.Add_Click({ser}) 
$Form.controls.Add($Button2) 