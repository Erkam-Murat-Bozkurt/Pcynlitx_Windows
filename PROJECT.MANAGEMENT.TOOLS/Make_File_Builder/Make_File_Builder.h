
#ifndef MAKE_FILE_BUILDER_H
#define MAKE_FILE_BUILDER_H

#include <cstring>
#include <cstdlib>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <cstdio>
#include <iostream>
#include <fstream>
#include <string>
#include <fcntl.h>
#include <windows.h>
#include "Cpp_FileOperations.h"
#include "DirectoryOperations.h"

class Make_File_Builder
{
public:
 Make_File_Builder();
 Make_File_Builder(const Make_File_Builder & orig);
 virtual ~Make_File_Builder();
 void Build_MakeFile(char * Header_Files_Directory, char * Object_Files_Directory, char * Library_Directory, char * Library_Name);
 void Make_For_GUI(bool Gui_Status);
 void Clear_Dynamic_Memory();
private:
 void Determine_Dependency_Code_Line();
 void Place_Information(char ** Pointer, char * Information, int * index_counter);
 void Find_Class_Name();
 void Determine_Included_Header_Files_Number();
 void Determine_Object_File_Names();
 void Read_Include_File_Names();
 void Determine_Compiler_System_Command(char * Include_Directory_Location, char * Library_Directory, char * Library_Name);
 void Copy_Header_File(char * Header_Files_Directory);
 void Send_Object_File(char * Object_Files_Directory);
 bool Include_Line_Determiner(std::string String_Line);
 void Send_File(char * Target_Location, char * Base_Location);
 Cpp_FileOperations FileManager;
 DirectoryOperations DirectoryManager;
 std::string String_Line;
 char * Dependency_Code_Line;
 char * Class_Name;
 char * Class_Source_File_Name;
 char * Class_Header_File_Name;
 char * Class_Object_File_Name;
 char * Compiler_System_Command;
 char * Header_File_Copy_Command;
 char * Object_File_Move_Command;
 char ** Included_Header_Files;
 char ** Included_Object_Files;
 int Included_Header_Files_Number;
 bool Gui_Status;
 bool Include_Line_Condition;
 bool Memory_Delete_Condition;
};

#endif /* MAKE_FILE_BUILDER_H */
