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
$Form.controls.Add($StatusBar)

$TextBox1                        = New-Object system.Windows.Forms.TextBox
$TextBox1.multiline              = $true
$TextBox1.width                  = 358
$TextBox1.height                 = 100
$TextBox1.ScrollBars             = "Vertical"        
$TextBox1.location               = new-object system.drawing.point(40,63) 
$TextBox1.Font                   = 'Microsoft Sans Serif,10,style=Bold'
$Form.controls.Add($TextBox1)

$TextBox2                        = New-Object system.Windows.Forms.TextBox
$TextBox2.multiline              = $true
$TextBox2.width                  = 372
$TextBox2.height                 = 50
$TextBox2.location               = New-Object System.Drawing.Point(40,230)
$TextBox2.Font                   = 'Microsoft Sans Serif,10,style=Bold'
$Form.controls.Add($TextBox2)

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Server list"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(40,31)
$Label1.Font                     = 'Microsoft Sans Serif,10'
$Form.controls.Add($Label1)

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Filters"
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(40,200)
$Label6.Font                     = 'Microsoft Sans Serif,10'
$Form.controls.Add($Label6)

# $PingButton                         = New-Object system.Windows.Forms.Button
# $PingButton.text                    = "PingButton"
# $PingButton.width                   = 60
# $PingButton.height                  = 30
# $PingButton.location                = New-Object System.Drawing.Point(487,63)
# $PingButton.Font                    = 'Microsoft Sans Serif,10'
# $PingButton.Cursor                  = [System.Windows.Forms.Cursors]::Hand

$AutomaticStoppedServices                         = New-Object system.Windows.Forms.Button
$AutomaticStoppedServices.text                    = "Automatic Stopped Services"
$AutomaticStoppedServices.width                   = 75
$AutomaticStoppedServices.height                  = 45
$AutomaticStoppedServices.location                = New-Object System.Drawing.Point(608,63)
$AutomaticStoppedServices.Font                    = 'Microsoft Sans Serif,10'
$AutomaticStoppedServices.Font = "Microsoft Sans Serif,8" 
$AutomaticStoppedServices.FlatAppearance.MouseOverBackColor = [System.Drawing.Color]::FromArgb(255, 255, 36)
$AutomaticStoppedServices.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$AutomaticStoppedServices.Cursor = [System.Windows.Forms.Cursors]::Hand
$AutomaticStoppedServices.Add_Click({ser})
$Form.controls.Add($AutomaticStoppedServices) 


$outputBox                       = New-Object System.Windows.Forms.TextBox 
$outputBox.Multiline             = $true 
$outputBox.BackColor             = "#FDFEFE" 
$outputBox.Width                 = 1010
$outputBox.Height                = 250 
$outputBox.ReadOnly              = $true 
$outputBox.ScrollBars            = "Vertical"  
$outputBox.ScrollBars            = "Both" 
$outputBox.WordWrap              = $false 
$outputBox.location              = new-object system.drawing.point(40,420) 
$outputBox.Font                  = "Lucida Sans Typewriter,9" 
$Form.controls.Add($outputBox)
 
$Outputlb                        = New-Object system.windows.Forms.Label 
$Outputlb.Text                   = "Output" 
$Outputlb.AutoSize               = $true 
$Outputlb.Width                  = 25 
$Outputlb.Height                 = 10 
$Outputlb.location               = new-object system.drawing.point(40,370) 
$Outputlb.Font                   = "Microsoft Sans Serif,20,style=Bold"
$Form.controls.Add($Outputlb) 
# $Button3                         = New-Object system.Windows.Forms.Button
# $Button3.text                    = "button"
# $Button3.width                   = 60
# $Button3.height                  = 30
# $Button3.location                = New-Object System.Drawing.Point(487,121)
# $Button3.Font                    = 'Microsoft Sans Serif,10'

# $Button4                         = New-Object system.Windows.Forms.Button
# $Button4.text                    = "button"
# $Button4.width                   = 60
# $Button4.height                  = 30
# $Button4.location                = New-Object System.Drawing.Point(608,121)
# $Button4.Font                    = 'Microsoft Sans Serif,10'

# $Button5                         = New-Object system.Windows.Forms.Button
# $Button5.text                    = "button"
# $Button5.width                   = 60
# $Button5.height                  = 30
# $Button5.location                = New-Object System.Drawing.Point(487,179)
# $Button5.Font                    = 'Microsoft Sans Serif,10'

# $Button6                         = New-Object system.Windows.Forms.Button
# $Button6.text                    = "button"
# $Button6.width                   = 60
# $Button6.height                  = 30
# $Button6.location                = New-Object System.Drawing.Point(608,179)
# $Button6.Font                    = 'Microsoft Sans Serif,10'

Function Progressbar 
{ 
Add-Type -AssemblyName system.windows.forms 
$Script:formt = New-Object System.Windows.Forms.Form 
$Script:formt.Text = 'Please Wait' 
$Script:formt.TopMost = $true 
$Script:formt.StartPosition ="CenterScreen" 
$Script:formt.Width = 500 
$Script:formt.Height = 20 
$Script:formt.MaximizeBox = $false 
$Script:formt.MinimizeBox = $false 
$Script:formt.Visible = $false 
} 

function ser {
    $statusBar.Text=("Processing the request")
    progressbar 
    $outputBox.Clear() 
    $computers=$TextBox1.lines.Split("`n")
    $date =Get-Date
    $ct = "Task Completed @ " + $date 
    $Script:formt.Visible=$true 
    $Proces_list =@()
    foreach ($computer in $computers)
    {
        $Script:formt.text="Working on $computer" 
        $Proces_list += Get-Service -ComputerName $computer | where{$_.StartType -eq "automatic" -and $_.status -eq "Stopped"} | Select Name, Starttype ,status
    }
    $pros = $Proces_list | Format-Table | Out-String
    $outputBox.Appendtext("{0}`n" -f $pros + "`n $ct")
    $statusBar.Text=("Ready")
    $Script:formt.close()
}

[void]$Form.ShowDialog()

