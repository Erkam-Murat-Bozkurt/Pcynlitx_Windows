
#include "Multi_Thread_Pointer_Data_Collector.h"
#include "Multi_Thread_Pointer_File_Cleaner.h"
#include <iostream>

int main(int argc, char** argv){

    Process_Supervisor_Descriptor_File_Reader File_Reader;

    File_Reader.Receive_Descriptor_File_Directory("D:\\TestDirectory");

    File_Reader.Receive_Descriptor_File_Name("Project_Descriptor_File.txt");

    File_Reader.Receive_Descriptor_File_Infomations();

    int Total_Data_Type_Number = File_Reader.Get_Shared_Data_Types()[0].Total_Data_Type_Number;

    char * Data_Type = File_Reader.Get_Shared_Data_Types()[0].Data_Type;

    int  Data_Number = File_Reader.Get_Shared_Data_Types()[0].Data_Number;

    char * Pointer_Name = File_Reader.Get_Shared_Data_Types()[0].Pointer_Name;

    char * Header_File_Name = File_Reader.Get_Shared_Data_Types()[0].Header_File_Name;

    char * Include_Directory = File_Reader.Get_Shared_Data_Types()[0].Include_Directory;

    char * Construction_Point = File_Reader.Get_Construction_Point();

    if(Total_Data_Type_Number > 0){

       std::cout << "\n Data Type        : "

                 << Data_Type << "#";

       std::cout << "\n Data Number      : "

                 << Data_Number << "#";

       std::cout << "\n Pointer Name     : "

                 << Pointer_Name << "#";

       if(Header_File_Name != nullptr){

          std::cout << "\n Header file name : "

                    << Header_File_Name << "#";
       }
       else{

             std::cout << "\n There is no header file name..";
       }

       if(Include_Directory != nullptr){

          std::cout << "\n Include_Directory: "

                     << Include_Directory << "#";
       }
       else{
              std::cout << "\n  There is no include directory ..";
       }
    }

    std::cout << "\n\n";

    char New_Class_Name [] = "Sample";

    Data_Collector.Receive_Data_Type(Data_Type);

    Data_Collector.Receive_Construction_Point(Construction_Point_Pointer);

    Data_Collector.Receive_Data_Type_Include_File_Name(Header_File_Name_Pointer);

    Data_Collector.Set_Class_Name(New_Class_Name_Pointer);

    Data_Collector.Collect_Informations();

    Multi_Thread_Pointer_File_Cleaner File_Cleaner;

    File_Cleaner.Remove_Source_Files(Data_Collector.Get_Source_File_Name_Matrix());

    File_Cleaner.Remove_Header_File_Extras(Data_Collector.Get_Header_File_Name_Matrix());

    File_Cleaner.Remove_Object_Files(Data_Collector.Get_Object_File_Name_Matrix());

    std::cout << "\n\n The end of the program ..\n\n";

    return 0;
}
