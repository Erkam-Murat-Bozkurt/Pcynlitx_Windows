
$Builder_Initializer_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Builder_Initializer"

$ReportFileBuilder_HeaderWriterPATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_HeaderWriter"

$ReportFileBuilder_WriterPATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_Writer"

$Dynamic_Memory_Manager_Header_Builder_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Header_Builder"

$Dynamic_Memory_Manager_Builder_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Builder"

$Multi_Thread_Pointer_Compile_Data_Collector_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Compile_Data_Collector"

$Multi_Thread_Pointer_Data_Collector_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Data_Collector"

$Multi_Thread_Pointer_File_Cleaner_PATH="D:\PCYNLITX.PROJECT.WINDOWS/SMART.POINTER.BUILDER/Multi_Thread_Pointer_File_Cleaner"

$Multi_Thread_Pointer_File_Data_Collector_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Data_Collector"

$Multi_Thread_Pointer_Header_Builder_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Header_Builder"

$Multi_Thread_Pointer_Builder_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Builder"

$Multi_Thread_Pointer_Client_Header_Builder_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Header_Builder"

$Multi_Thread_Pointer_Client_Builder_PATH="D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Builder"

$Project_Headers_Files="D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.HEADER.FILES"

$OBJECTS_DIRECTORY="D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES"



Write-Output ""

Write-Output " SMART POINTER CONSTRUCTION PROJECT - UPDATE PROCESS STARTED"

Write-Output ""


cd $Builder_Initializer_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Builder_Initializer\Builder_Initializer.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Builder_Initializer\Builder_Initializer.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Builder_Initializer\Builder_Initializer.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Builder_Initializer class has been compiled"


cd $ReportFileBuilder_HeaderWriterPATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_HeaderWriter\ReportFileBuilder_HeaderWriter.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_HeaderWriter\ReportFileBuilder_HeaderWriter.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_HeaderWriter\ReportFileBuilder_HeaderWriter.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # ReportFileBuilder_HeaderWriter class has been compiled"


cd $ReportFileBuilder_WriterPATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_Writer\ReportFileBuilder_Writer.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_Writer\ReportFileBuilder_Writer.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\ReportFileBuilder_Writer\ReportFileBuilder_Writer.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # ReportFileBuilder_Writer class has been compiled"


cd $Dynamic_Memory_Manager_Header_Builder_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Header_Builder\Dynamic_Memory_Manager_Header_Builder.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Header_Builder\Dynamic_Memory_Manager_Header_Builder.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Header_Builder\Dynamic_Memory_Manager_Header_Builder.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Dynamic_Memory_Manager_Header_Builder class has been compiled"


cd $Dynamic_Memory_Manager_Builder_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Builder\Dynamic_Memory_Manager_Builder.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Builder\Dynamic_Memory_Manager_Builder.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Dynamic_Memory_Manager_Builder\Dynamic_Memory_Manager_Builder.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Dynamic_Memory_Manager_Builder class has been compiled"


cd $Multi_Thread_Pointer_Header_Builder_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Header_Builder\Multi_Thread_Pointer_Header_Builder.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Header_Builder\Multi_Thread_Pointer_Header_Builder.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Header_Builder\Multi_Thread_Pointer_Header_Builder.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_Header_Builder class has been compiled"


cd $Multi_Thread_Pointer_Data_Collector_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Data_Collector\Multi_Thread_Pointer_Data_Collector.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Data_Collector\Multi_Thread_Pointer_Data_Collector.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Data_Collector\Multi_Thread_Pointer_Data_Collector.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_Data_Collector class has been compiled"




cd $Multi_Thread_Pointer_Compile_Data_Collector_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Compile_Data_Collector\Multi_Thread_Pointer_Compile_Data_Collector.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Compile_Data_Collector\Multi_Thread_Pointer_Compile_Data_Collector.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Compile_Data_Collector\Multi_Thread_Pointer_Compile_Data_Collector.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_Compile_Data_Collector class has been compiled"




cd $Multi_Thread_Pointer_File_Cleaner_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Cleaner\Multi_Thread_Pointer_File_Cleaner.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Cleaner\Multi_Thread_Pointer_File_Cleaner.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Cleaner\Multi_Thread_Pointer_File_Cleaner.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_File_Cleaner class has been compiled"


cd $Multi_Thread_Pointer_File_Data_Collector_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Data_Collector\Multi_Thread_Pointer_File_Data_Collector.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Data_Collector\Multi_Thread_Pointer_File_Data_Collector.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_File_Data_Collector\Multi_Thread_Pointer_File_Data_Collector.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_File_Data_Collector class has been compiled"



cd $Multi_Thread_Pointer_Builder_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Builder\Multi_Thread_Pointer_Builder.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Builder\Multi_Thread_Pointer_Builder.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Builder\Multi_Thread_Pointer_Builder.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_Builder class has been compiled"


cd $Multi_Thread_Pointer_Client_Header_Builder_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Header_Builder\Multi_Thread_Pointer_Client_Header_Builder.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Header_Builder\Multi_Thread_Pointer_Client_Header_Builder.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Header_Builder\Multi_Thread_Pointer_Client_Header_Builder.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_Client_Header_Builder class has been compiled"




cd $Multi_Thread_Pointer_Client_Builder_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Builder\Multi_Thread_Pointer_Client_Builder.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Builder\Multi_Thread_Pointer_Client_Builder.o'

if ($Condition)
{
   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\SMART.POINTER.BUILDER\Multi_Thread_Pointer_Client_Builder\Multi_Thread_Pointer_Client_Builder.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Multi_Thread_Pointer_Client_Builder class has been compiled"

Write-Output "   # Sub-Project has been compiled"

Write-Output ""
