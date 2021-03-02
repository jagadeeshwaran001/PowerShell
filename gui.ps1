# add-type -AssemblyName System.Windows.Forms
# add-type -AssemblyName System.Drawing

# $LocalPrintVariable = New-Object System.Windows.Forms.Form

# $LocalPrinterVariable.ClientSize         = 500,800
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

function Test-TcpPort ($ComputerName,[int]$port = 80) {
    $socket = new-object Net.Sockets.TcpClient
    $socket.Connect($ComputerName, $port)
    if ($socket.Connected) {
    $status = "Open"
    $socket.Close()
    }
    else {
    $status = "Closed / Filtered"
    }
    $socket = $null
    echo "ComputerName:$ComputerName`nPort:$port`nStatus:$status"
 }
 Test-TcpPort('127.0.0.1')