for($i=0 ; $i -lt 10 ; $i++)
{
    $filename = 'Bhavesh' + $i + '.txt'
    New-Item -Path $filename -ItemType  File
}

    for($j=0 ; $j -lt 10 ; $j++)
{
    $foldernm = 'Bhavesh' + $j
        New-Item -Path $foldernm -ItemType  Directory
        }

for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Bhavesh' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
    {
        $folder1 = 'Bhavesh' + $k
        New-Item -Path $folder\$folder1 -ItemType  Directory
    }
    
}

 for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Bhavesh' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
         {
            $folder1 = 'Bhavesh' + $k
                for($l=0 ; $l -lt 10 ; $l++)
                    {
                        $folder2 = 'BM' + $l + '.txt'
                        New-Item -Path $folder\$folder1\$folder2 -ItemType  file
                    }
    
        }
}

for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Bhavesh' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
         {
            $folder1 = 'Bhavesh' + $k
                for($l=0 ; $l -lt 10 ; $l++)
                    {
                        $cpfile = 'Bhavesh' + $l + '.txt'
                        Copy-Item $cpfile -Recurse -Destination $folder\$folder1 
                    }
    
        }
}

for($j=0 ; $j -lt 10 ; $j++)
{
    $folder = 'Bhavesh' + $j
 
    for($k=0 ; $k -lt 10 ; $k++)
    {
        $folder1 = 'Bhavesh' + $k
        Remove-Item -Path $folder\$folder1\* -Recurse 
    }
    
}


