# Load Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Create a form
$form = New-Object Windows.Forms.Form
$form.Text = "Bunny Rabbit"
$form.Size = New-Object Drawing.Size(640, 480)
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$form.TopMost = $true

# Create a picture box
$pictureBox = New-Object Windows.Forms.PictureBox
$pictureBox.ImageLocation = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Oryctolagus_cuniculus_Rcdo.jpg/640px-Oryctolagus_cuniculus_Rcdo.jpg"
$pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::Zoom
$pictureBox.Size = New-Object Drawing.Size(640, 480)
$form.Controls.Add($pictureBox)

# Prevent the form from being closed
$handler_Closing = {
    $_.Cancel = $true
}

$form.add_Closing($handler_Closing)

# Show the form
$form.ShowDialog()

# Dispose of the form when done
$form.Dispose()
