
Write-Output ""

Write-Output ""

Write-Host "   # The construction of the Test_Program_Builder started .." -ForegroundColor Magenta

Write-Output ""

mingw32-make -f test_program_builder.make > Compiler_Output.txt


$Condition = Test-Path -Path 'D:\Pcynlitx_Binaries\Test_Program_Builder.exe'

if ($Condition )
{
     rm D:\Pcynlitx_Binaries\Test_Program_Builder.exe
}

mv Test_Program_Builder.exe D:\Pcynlitx_Binaries

Write-Output ""

Write-Output "   Test_Program_Builder has been constructed :-)"

Write-Output ""
