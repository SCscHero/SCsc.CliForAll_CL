
# Out-GridView is primarily used to review data. However, you can also use Out-GridView to create a simple menu selection interface. When the user makes one or more selections in the window presented by Out-GridView, the data for those objects is either passed further through the pipeline or placed into a variable. The syntax for selecting an option in Out-GridView is:
$selection = $users | Out-GridView -PassThru 


