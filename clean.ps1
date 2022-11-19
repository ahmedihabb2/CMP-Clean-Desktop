$src = "C:\Users\LENOVO\Desktop"
$dest_cn = "D:\CMP\FourthYear\ComputerNetworks"
$dest_adb = "D:\CMP\FourthYear\ADB"
$dest_law = "D:\CMP\FourthYear\LAW"
$dest_mi = "D:\CMP\FourthYear\MI"
$dest_nlp = "D:\CMP\FourthYear\NLP"
$dest_robo = "D:\CMP\FourthYear\Robotics"


$files = Get-ChildItem -Path $src  -Include *

foreach ($file in $files) {
    $name = $file.Name

    if ($name -match "CN") {
        echo "Moving $name to ComputerNetworks folder"
        Move-Item $file.FullName $dest_cn
    }
    elseif ($name -match "ADB") {
        echo "Moving $name to ADB folder"
        Move-Item $file.FullName $dest_adb
    }
    elseif ($name -match "LAW") {
        echo "Moving $name to LAW folder"
        Move-Item $file.FullName $dest_law
    }
    elseif ($name -match "MI") {
        echo "Moving $name to MI folder"
        Move-Item $file.FullName $dest_mi
    }
    elseif ($name -match "NLP") {
        echo "Moving $name to NLP folder"
        Move-Item $file.FullName $dest_nlp
    }
    elseif ($name -match "CR") {
        echo "Moving $name to Robotics folder"
        Move-Item $file.FullName $dest_robo
    }

}
