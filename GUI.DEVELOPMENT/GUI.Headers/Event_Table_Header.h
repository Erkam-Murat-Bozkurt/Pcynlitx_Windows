
#ifndef EVENT_TABLE_HEADER_H
#define EVENT_TABLE_HEADER_H

#include "MainFrame.h"

BEGIN_EVENT_TABLE(MainFrame,wxFrame)
  EVT_MENU(wxID_OPEN,MainFrame::OnOpen)
  EVT_MENU(wxID_EXIT,MainFrame::OnQuit)
  EVT_MENU(ID_FONT_DIALOG,MainFrame::OnOpenFontDialog)
  EVT_MENU(ID_RUN_EXECUTABLE,MainFrame::RunLibraryBuilder)
  EVT_MENU(ID_RUN_EXECUTABLE_BINARY_BUILDER,MainFrame::RunExeBuilder)
  EVT_MENU(ID_OPEN_TERMINAL,MainFrame::OpenTerminal)
  EVT_MENU(ID_SELECT_PROJECT_FILE,MainFrame::SelectProjectFile)
  EVT_MENU(ID_FILE_SAVE,MainFrame::File_Save)
  EVT_MENU(ID_SELECT_PROJECT_FOLDER,MainFrame::DirectoryOpen)
  EVT_MENU(ID_OPEN_EMPTY_PROJECT_FILE,MainFrame::OpenEmptyProjectFile)
  EVT_MENU(ID_SHOW_PROJECT_FILE,MainFrame::ShowProjectFile)
  EVT_MENU(ID_OPEN_INTROPAGE,MainFrame::OpenIntroPage)
  EVT_MENU(ID_OPEN_TREE_WIEW,MainFrame::Re_Open_Project_Directory)
  EVT_MENU(ID_SHOW_AUTOR_INFO,MainFrame::ShowAuthor)
  EVT_MENU(ID_SHOW_PROJECT_DESCRIPTOR_FILE_LOCATION,MainFrame::ShowProjectFileLocation)
  EVT_MENU(ID_SHOW_PROJECT_DIRECTORY_LOCATION,MainFrame::ShowProjectDirectoryLocation)
  EVT_MENU(ID_OPEN_PROJECT_WEB_PAGE,MainFrame::Open_Project_Web_Page)
  EVT_MENU(ID_INCREASE_FONT_SIZE,MainFrame::Increase_Font_Size)
  EVT_MENU(ID_DECREASE_FONT_SIZE,MainFrame::Decrease_Font_Size)
  EVT_MENU(ID_USE_DEFAULT_FONT,MainFrame::Use_Default_Font)
  EVT_MENU(ID_UNDO_CHANGES,MainFrame::Undo_Changes)
  EVT_MENU(ID_REDO_CHANGES,MainFrame::Redo_Changes)
  EVT_MENU(ID_RE_OPEN_PROJECT_DIRECTORY,MainFrame::Re_Open_Project_Directory)
  EVT_MENU(ID_INPUT_HEADER_FILE_LOCATION,MainFrame::Enter_Header_File_Location)
  EVT_MENU(ID_INPUT_SOURCE_FILE_LOCATION,MainFrame::Enter_Source_File_Location)
  EVT_MENU(ID_INPUT_LIBRARY_LOCATION,MainFrame::Enter_Library_Location)
  EVT_MENU(ID_INPUT_HEADER_FILE,MainFrame::Enter_Header_File)
  EVT_MENU(ID_INPUT_SOURCE_FILE_NAME,MainFrame::Enter_Source_File)
  EVT_MENU(ID_INPUT_LIBRARY_NAME,MainFrame::Enter_Library_Name)
  EVT_MENU(ID_INPUT_CONSTRUCTION_POINT,MainFrame::Enter_Construction_Point)
  EVT_MENU(ID_INPUT_THREAD_FUNCTION_NAME,MainFrame::Enter_Thread_Function_Name)
  EVT_MENU(ID_INPUT_THREAD_NUMBER,MainFrame::Enter_Thread_Number)
  EVT_MENU(ID_INPUT_EXE_FILE_NAME,MainFrame::Enter_Exe_File_Name)
  EVT_MENU(ID_INPUT_ITC_HEADER_FILE_NAME,MainFrame::Enter_ITC_Class_Header_File_Name)
  EVT_MENU(ID_INPUT_ITD_HEADER_FILE_NAME,MainFrame::Enter_IT_Data_Type_Header_File_Name)
  EVT_MENU(ID_INPUT_ITD_DATA_NAME,MainFrame::Enter_IT_Data_Type_Name)
  EVT_MENU(ID_INPUT_NAMESPACE,MainFrame::Enter_Namespace)
  EVT_MENU(ID_OPENMP_SUPPORT,MainFrame::Enter_OpenMP_Support)
  EVT_MENU(ID_CLEAR_STYLE,MainFrame::Clear_Style)
  EVT_MENU(ID_RELOAD_STYLE,MainFrame::Reload_Default_Style)
  EVT_MENU(ID_SAVE_AS,MainFrame::Save_File_As)
  EVT_MENU(ID_CLEAR_TEXT,MainFrame::Clear_Text)
  EVT_MENU(ID_SET_CURSOR_TYPE_DEFAULT,MainFrame::Load_Default_Cursor)
  EVT_MENU(ID_CHANGE_CURSOR_TYPE,MainFrame::Change_Cursor_Type)
  EVT_MENU(ID_SET_CARET_LINE_VISIBLE,MainFrame::Set_Caret_Line_Visible)
  EVT_MENU(ID_SET_CARET_LINE_INVISIBLE,MainFrame::Set_Caret_Line_InVisible)
  EVT_MENU(ID_USE_BLOCK_CARET,MainFrame::Use_Block_Caret)
  EVT_MENU(ID_USE_DEFAULT_CARET,MainFrame::Use_Default_Caret)
  EVT_MENU(ID_NEW_FILE,MainFrame::New_File)
  EVT_MENU(ID_BOLD_STYLE,MainFrame::Use_Bold_Styling)
  EVT_MENU(ID_SHOW_DESCRIPTIONS,MainFrame::Show_Descriptions)
  EVT_CLOSE(MainFrame::OnClose)
  EVT_PAINT(MainFrame::OnPaint)
  EVT_SIZE(MainFrame::OnSize)
  EVT_AUI_PANE_CLOSE(MainFrame::Close_Directory_Pane)
  EVT_END_PROCESS(wxID_ANY,MainFrame::Process_End)
  EVT_CHAR_HOOK(MainFrame::KeyboardEvent)
  EVT_TREE_ITEM_ACTIVATED(wxID_ANY,MainFrame::FileSelect)
  EVT_TREE_BEGIN_LABEL_EDIT(wxID_ANY,MainFrame::FileNameEdit)
END_EVENT_TABLE()

#endif /* EVENT_TABLE_HEADER_H */
