# Demo Source
# 

Try {
   # Statement. For example, call a command.
   # Another statement. For example, assign a variable.
}


Try {
   # Do something with a file.
} Catch [System.IO.IOException] {
   Write-Host "Something went wrong"
}  Catch {
   # Catch all. It's not an IOException but something else.
}


Try {
   # Do something with a file.
} Catch [System.IO.IOException] {
   Write-Host "Something went wrong"
}  Catch {
   # Catch all. It's not an IOException but something else.
} Finally {
   # Clean up resources.
}


Try {
     # Do something with a file.
   } Catch [System.IO.IOException] {
     Write-Host "Something IO went wrong: $($_.exception.message)"
   }  Catch {
     Write-Host "Something else went wrong: $($_.exception.message)"
   }


Try {
   Get-Content './file.txt' -ErrorAction Stop
} Catch {
   Write-Error "File can't be found"
}



Try {
   If ($Path -eq './forbidden') 
   {
     Throw "Path not allowed"
   }
   # Carry on.

} Catch {
   Write-Error "$($_.exception.message)" # Path not allowed.
}



# Try Catch实战：
# https://learn.microsoft.com/zh-cn/training/modules/script-with-powershell/9-exercise-handle-errors
If ($PathIsWebApp -eq $True) {
   Try 
   {
     $ContainsApplicationFiles = "$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match  '\.js|\.html|\.css'

     If ( -Not $ContainsApplicationFiles) {
       Throw "Not a web app"
     } Else {
       Write-Host "Source files look good, continuing"
     }
   } Catch {
    Throw "No backup created due to: $($_.Exception.Message)"
   }
}