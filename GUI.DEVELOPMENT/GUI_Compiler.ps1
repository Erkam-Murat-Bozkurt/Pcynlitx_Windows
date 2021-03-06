
$GUI_Headers_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\GUI.Headers"

$Intro_Page_Loader_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Intro_Page_Loader"

$Help_Page_Loader_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Help_Page_Loader"

$Custom_Tree_View_Panel_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Tree_View_Panel"

$Custom_wxPanel_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxPanel"

$Custom_wxTreeCtrl_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxTreeCtrl"

$Custom_Close_Button_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Close_Button"

$Custom_Window_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Window"

$Project_Folder_Lister_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_Folder_Lister"

$Project_File_Selection_Dialog_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_File_Selection_Dialog"

$ToolBar_Initializer_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\ToolBar_Initializer"

$Menu_Bar_Options_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Menu_Bar_Options"

$Style_Loader_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Style_Loader"

$Custom_Notebook_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Notebook"

$Custom_TextCtrl_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TextCtrl"

$Custom_TabArt_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TabArt"

$wx_Description_Record_Tools_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\wx_Description_Record_Tools"

$keyboard_event_controler_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\keyboard_event_controler"

$Process_Execution_Controller_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Process_Execution_Controller"

$MainFrame_PATH="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\MainFrame"

$Custom_DockArt="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\GUI.Headers\Custom_DockArt.h"

$Event_ID_Numbers="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\GUI.Headers\Event_ID_Numbers.h"

$Event_Table_Header="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\GUI.Headers\Event_Table_Header.h"

$wxDirTraverser_executer="D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\GUI.Headers\wxDirTraverser_executer.h"

$Project_Headers_Files="D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.HEADER.FILES"

$OBJECTS_DIRECTORY="D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES"


Write-Output ""

Write-Host "   GUI Compile process has been started" -ForegroundColor Cyan;

Write-Output ""


cp $Custom_DockArt $Project_Headers_Files

cp $Event_ID_Numbers $Project_Headers_Files

cp $Event_Table_Header $Project_Headers_Files

cp $wxDirTraverser_executer $Project_Headers_Files


cd $Intro_Page_Loader_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Intro_Page_Loader\Intro_Page_Loader.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Intro_Page_Loader\Intro_Page_Loader.o'

if ($Condition)
{
   $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Intro_Page_Loader.o'

   if ($Exists_On_Obj_Dir){

      rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Intro_Page_Loader.o'
   }

   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Intro_Page_Loader\Intro_Page_Loader.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Intro_Page_Loader class has been compiled"



cd $Help_Page_Loader_PATH

mingw32-make -f auto_make_file.make  > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Help_Page_Loader\Help_Page_Loader.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Help_Page_Loader\Help_Page_Loader.o'

if ($Condition)
{
   $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Help_Page_Loader.o'

   if ($Exists_On_Obj_Dir){

       rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Help_Page_Loader.o'
   }

   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Help_Page_Loader\Help_Page_Loader.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Help_Page_Loader class has been compiled"





cd $Custom_wxTreeCtrl_PATH

mingw32-make -f auto_make_file.make  > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxTreeCtrl\Custom_wxTreeCtrl.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxTreeCtrl\Custom_wxTreeCtrl.o'

if ($Condition  )
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_wxTreeCtrl.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_wxTreeCtrl.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxTreeCtrl\Custom_wxTreeCtrl.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_wxTreeCtrl class has been compiled"



cd $Project_Folder_Lister_PATH

mingw32-make -f auto_make_file.make  > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_Folder_Lister\Project_Folder_Lister.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_Folder_Lister\Project_Folder_Lister.o'

if ($Condition  )
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Project_Folder_Lister.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Project_Folder_Lister.o'

        Write-Output "   # Project_Folder_Lister.o class has been removed"
    }
    else{

         Write-Output "   # Project_Folder_Lister.o does not find"

    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_Folder_Lister\Project_Folder_Lister.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Project_Folder_Lister class has been compiled"



cd $Custom_Window_PATH

mingw32-make -f auto_make_file.make  > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Window\Custom_Window.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Window\Custom_Window.o'

if ($Condition  )
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Window.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Window.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Window\Custom_Window.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_Window class has been compiled"




cd $Custom_Close_Button_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Close_Button\Custom_Close_Button.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Close_Button\Custom_Close_Button.o'

if ($Condition  )
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Close_Button.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Close_Button.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Close_Button\Custom_Close_Button.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_Close_Button class has been compiled"





cd $Custom_Tree_View_Panel_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Tree_View_Panel\Custom_Tree_View_Panel.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Tree_View_Panel\Custom_Tree_View_Panel.o'

if ($Condition  )
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Tree_View_Panel.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Tree_View_Panel.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Tree_View_Panel\Custom_Tree_View_Panel.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_Tree_View_Panel class has been compiled"




cd $Custom_wxPanel_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxPanel\Custom_wxPanel.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxPanel\Custom_wxPanel.o'

if ($Condition  )
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_wxPanel.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_wxPanel.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_wxPanel\Custom_wxPanel.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_wxPanel class has been compiled"





cd $Project_File_Selection_Dialog_PATH

mingw32-make -f auto_make_file.make  > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_File_Selection_Dialog\Project_File_Selection_Dialog.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_File_Selection_Dialog\Project_File_Selection_Dialog.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Project_File_Selection_Dialog.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Project_File_Selection_Dialog.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Project_File_Selection_Dialog\Project_File_Selection_Dialog.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Project_File_Selection_Dialog class has been compiled"




cd $ToolBar_Initializer_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\ToolBar_Initializer\ToolBar_Initializer.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\ToolBar_Initializer\ToolBar_Initializer.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\ToolBar_Initializer.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\ToolBar_Initializer.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\ToolBar_Initializer\ToolBar_Initializer.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # ToolBar_Initializer class has been compiled"




cd $Menu_Bar_Options_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Menu_Bar_Options\Menu_Bar_Options.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Menu_Bar_Options\Menu_Bar_Options.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Menu_Bar_Options.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Menu_Bar_Options.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Menu_Bar_Options\Menu_Bar_Options.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Menu_Bar_Options class has been compiled"




cd $Style_Loader_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Style_Loader\Style_Loader.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Style_Loader\Style_Loader.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Style_Loader.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Style_Loader.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Style_Loader\Style_Loader.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Style_Loader class has been compiled"





cd $Custom_TextCtrl_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TextCtrl\Custom_TextCtrl.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TextCtrl\Custom_TextCtrl.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_TextCtrl.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_TextCtrl.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TextCtrl\Custom_TextCtrl.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_TextCtrl class has been compiled"




cd $Custom_TabArt_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TabArt\Custom_TabArt.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TabArt\Custom_TabArt.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_TabArt.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_TabArt.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_TabArt\Custom_TabArt.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_TabArt class has been compiled"




cd $Custom_Notebook_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Notebook\Custom_Notebook.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Notebook\Custom_Notebook.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Notebook.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Custom_Notebook.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Custom_Notebook\Custom_Notebook.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Custom_NoteBook class has been compiled"




cd $wx_Description_Record_Tools_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\wx_Description_Record_Tools\wx_Description_Record_Tools.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\wx_Description_Record_Tools\wx_Description_Record_Tools.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\wx_Description_Record_Tools.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\wx_Description_Record_Tools.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\wx_Description_Record_Tools\wx_Description_Record_Tools.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # wx_Description_Record_Tools class has been compiled"




cd $keyboard_event_controler_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\keyboard_event_controler\keyboard_event_controler.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\keyboard_event_controler\keyboard_event_controler.o'

if ($Condition)
{
   $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\keyboard_event_controler.o'

   if ($Exists_On_Obj_Dir){

       rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\keyboard_event_controler.o'
   }

   Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\keyboard_event_controler\keyboard_event_controler.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # keyboard_event_controler class has been compiled"




cd $Process_Execution_Controller_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Process_Execution_Controller\Process_Execution_Controller.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Process_Execution_Controller\Process_Execution_Controller.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Process_Execution_Controller.o'

    if ($Exists_On_Obj_Dir){

       rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\Process_Execution_Controller.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\Process_Execution_Controller\Process_Execution_Controller.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # Process_Execution_Controller class has been compiled"




cd $MainFrame_PATH

mingw32-make -f auto_make_file.make > ..\Compiler_Output.txt

Copy-Item D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\MainFrame\MainFrame.h -Destination $Project_Headers_Files

$Condition = Test-Path -Path 'D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\MainFrame\MainFrame.o'

if ($Condition)
{
    $Exists_On_Obj_Dir = Test-Path -Path 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\MainFrame.o'

    if ($Exists_On_Obj_Dir){

        rm 'D:\PCYNLITX.WIND.IMPL.LIBRARY\PROJECT.LIBRARY\OBJECT.FILES\MainFrame.o'
    }

    Move-Item -Path D:\PCYNLITX.PROJECT.WINDOWS\GUI.DEVELOPMENT\MainFrame\MainFrame.o -Destination $OBJECTS_DIRECTORY
}

Write-Output "   # MainFrame class has been compiled"



Write-Output ""

Write-Output "   # GUI.DEVELOPMENT sub-project has been updated"

Write-Output ""
