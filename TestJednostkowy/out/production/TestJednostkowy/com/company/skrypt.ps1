cd C:\Users\Kartas\Desktop\TestJednostkowy\src\com\company
javac -cp junit-4.13.jar C:\Users\Kartas\Desktop\TestJednostkowy\src\com\company\kalkulator.java C:\Users\Kartas\Desktop\TestJednostkowy\src\com\company\kalkulatorTest.java 
$output = java -cp junit-4.13.jar`;hamcrest-core-1.3.jar`;C:\Users\Kartas\Desktop\TestJednostkowy\src\com\company`;C:\Users\Kartas\Desktop\TestJednostkowy\src\com\company org.junit.runner.JUnitCore com.company.kalkulatorTest 
$lines  = $output -split "`n"
Write-Host $lines
Write-host $text
Write-host $output
if($lines -like "*OK*"){
Write-Host OK
Write-Host OK
$status = "TEST PASSED"
} else {
Write-Host Errors!
$status = "TEST FAILED!"
}
$text = $text + $status
$time = (Get-Date).ToString("HH mm s")
$path = ".\app_[" + $time + "s.].txt"
$text | Out-File -LiteralPath $path
$host.enternestedprompt()
