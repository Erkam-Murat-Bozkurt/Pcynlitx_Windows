/*

Copyright ©  2021,  Erkam Murat Bozkurt

This file is part of the research project which is carried by Erkam Murat Bozkurt.

This is a free software: you can redistribute it and/or modify it under the terms
of the GNU General Public License as published by the Free Software Foundation
either version 3 of the License, or any later version.

This software is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE.

See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <http://www.gnu.org/licenses/>.

*/

#include "Kernel.h"

Kernel::Kernel(){ };

Kernel::Kernel(const Kernel & orig){ };

Kernel::~Kernel(){ };

void Kernel::Clear_Dynamic_Memory(){ }

void Kernel::Receive_Descriptor_File_Directory(const char * DescriptorFileDirectory){

     this->Description_Reader.Receive_Descriptor_File_Directory(DescriptorFileDirectory);
}

void Kernel::Receive_Descriptor_File_Directory(char * DescriptorFileDirectory){

     this->Description_Reader.Receive_Descriptor_File_Directory(DescriptorFileDirectory);
}

void Kernel::Receive_Descriptor_File_Name(const char * DescriptorFileName){

     this->Description_Reader.Receive_Descriptor_File_Name(DescriptorFileName);
}

void Kernel::Receive_Descriptor_File_Name(char * DescriptorFileName){

     this->Description_Reader.Receive_Descriptor_File_Name(DescriptorFileName);
}

void Kernel::Build_Server(){

     this->Description_Reader.Receive_Descriptor_File_Infomations();

     std::cout << "\n";

     std::cout << "\n\tTHREAD SYNCRONIZATION LIBRARY CONSTRUCTION REPORT";

     std::cout << "\n";

     std::cout << "\n";

     std::cout << "\n\t# Descriptor file has been readed successfully";

     std::cout << "\n";

     this->Factory_Data_Collector.Receive_Descriptor_File_Reader(&this->Description_Reader);

     this->Factory_Data_Collector.Construct_New_Include_Directory();

     this->Construct_Inter_Thread_Data_Structure();

     this->Construct_Thread_Manager_Class();

     this->Construct_Smart_Pointers();

     this->Construct_Thread_Manager_Class_Client();

     this->Construct_Client_Clases();

     this->Construct_Server_Class();

     this->Construct_Main_File();

     this->Factory_Data_Collector.Determine_Object_File_List();

     this->Factory_Data_Collector.Construct_New_Library();

     this->Factory_Data_Collector.Remove_Object_Files();

     this->Factory_Data_Collector.Clear_Dynamic_Memory();

     this->Remove_Compiler_Output_File();

     std::cout << "\n\n\t THE END OF THE PROGRAM\n\n";
}

void Kernel::Construct_Smart_Pointers(){

     this->Factory_Data_Collector.Jump_To_Construction_Point();


     if(this->Description_Reader.Get_Shared_Data_Types_Number() > 0){

        std::cout << "\n";

        std::cout << "\n\t# The construction of inter-thread smart pointers";

        int type_count = this->Description_Reader.Get_Shared_Data_Types_Number();

        this->SP_Data_Conveyor.Receive_Data_Type_Count(type_count);
     }

     for(int i=0;i<this->Description_Reader.Get_Shared_Data_Types_Number();i++){

         Shared_Memory_Data_Type Data_Type_Holder = this->Description_Reader.Get_Shared_Data_Types()[i];

         int Data_Type_Number = Data_Type_Holder.Data_Number;

         this->Smart_Pointer_Builder.Receive_Descriptor_File_Reader(&this->Description_Reader);

         this->Smart_Pointer_Builder.Receive_Newly_Constructed_Include_Directory(

                                  this->Factory_Data_Collector.Get_New_Include_Directory_Name());


         this->Smart_Pointer_Builder.Receive_Data_Type_Number(Data_Type_Number);

         this->Smart_Pointer_Builder.Build_Pointer();

         this->Smart_Pointer_Builder.Run_System_Commands();

         this->SP_Data_Conveyor.Receive_New_Class_Name(this->Smart_Pointer_Builder.Get_New_Class_Name(),i);

         this->SP_Data_Conveyor.Receive_Data_Type_Instance_Name(Data_Type_Holder.Pointer_Name,i);

         this->SP_Data_Conveyor.Receive_Data_Type(this->Smart_Pointer_Builder.Get_DataType(),i);

         this->SP_Data_Conveyor.Receive_Data_Type_Include_Directory(this->Factory_Data_Collector.Get_New_Include_Directory_Name(),i);


         std::cout << "\n";

         std::cout << "\n\t  The smart pointer constructed.";

         std::cout << "\n";

         std::cout << "\n\t  Smart pointer name (Class name): "  << this->Smart_Pointer_Builder.Get_New_Class_Name();

         std::cout << "\n";

         std::cout << "\n\t  Data type: " << Data_Type_Holder.Data_Type;

         std::cout << "\n";

         std::cout << "\n\t  Instance name: " << Data_Type_Holder.Pointer_Name;

         this->Smart_Pointer_Builder.Clear_Dynamic_Memory();
     }


     for(int i=0;i<this->Description_Reader.Get_Shared_Data_Types_Number();i++){

         this->Pointer_Client_Builder.Receive_Descriptor_File_Reader(&this->Description_Reader);

         this->Pointer_Client_Builder.Receive_Base_Class_Name(this->SP_Data_Conveyor.Get_New_Class_Name(i));

         this->Pointer_Client_Builder.Receive_Smart_Pointer_Instance_Name(this->SP_Data_Conveyor.Get_Shared_Data_Type_Instance_Name(i));

         this->Pointer_Client_Builder.Receive_Data_Type(this->SP_Data_Conveyor.Get_DataType(i));

         this->Pointer_Client_Builder.Receive_Data_Type_Include_Directory(this->SP_Data_Conveyor.Get_Data_Type_Include_Directory(i));

         this->Pointer_Client_Builder.Build_Pointer_Client();

         this->Pointer_Client_Builder.Run_System_Commands();

         this->Pointer_Client_Builder.Clear_Dynamic_Memory();
     }


     if(this->Description_Reader.Get_Shared_Data_Types_Number() > 0){

        this->SP_Data_Conveyor.Clear_Dynamic_Memory();

        std::cout << "\n\n\t  Smart pointers are ready to use";

        std::cout << "\n";
     }
}

void Kernel::Construct_Thread_Manager_Class(){

     this->Factory_Data_Collector.Jump_To_Construction_Point();

     this->Thread_Manager_Class_Builder.Receive_Descriptor_File_Reader(&this->Description_Reader);

     this->Thread_Manager_Class_Builder.Receive_Constructed_Include_Directory(this->Factory_Data_Collector.Get_New_Include_Directory_Name());

     this->Thread_Manager_Class_Builder.Build_Thread_Manager();

     this->Thread_Manager_Class_Builder.Run_System_Commands();

     this->Thread_Manager_Class_Builder.Clear_Dynamic_Memory();

     std::cout << "\n";

     std::cout << "\n\t# The construction of the thread manager class";

     std::cout << "\n";

     std::cout << "\n\t  Thread_Manager class has been constructed";

     std::cout << "\n";

     std::cout << "\n\t  Class name: Thread_Manager";

     std::cout << "\n";

     std::cout << "\n\t  Instance name: Manager";

     std::cout << "\n";

     std::cout << "\n\t  Manager class is ready to use";

     std::cout << "\n";
}

void Kernel::Construct_Thread_Manager_Class_Client(){

     this->Thread_Manager_Client_Builder_Pointer.Receive_Descriptor_File_Reader(&this->Description_Reader);

     this->Thread_Manager_Client_Builder_Pointer.Build_Thread_Manager_Client();

     this->Thread_Manager_Client_Builder_Pointer.Clear_Dynamic_Memory();

     std::cout << "\n";

     std::cout << "\n\t# The construction of the TM_Client";

     std::cout << "\n";

     std::cout << "\n\t  The client of the thread manager class has been constructed";

     std::cout << "\n";

     std::cout << "\n\t  Class name: TM_Client";

     std::cout << "\n";

     std::cout << "\n\t  TM_Client is ready to use";

     std::cout << "\n";
}

void Kernel::Construct_Client_Clases(){

     this->Factory_Data_Collector.Jump_To_Construction_Point();

     if(this->Description_Reader.Get_Class_Number() > 0){

        std::cout << "\n";

        std::cout << "\n\t# The construction of the client classes";
     }

     for(int i=0;i<this->Description_Reader.Get_Class_Number();i++){

         Class_Data_Type Class_Data_Type_Holder = this->Description_Reader.Get_Class_Names()[i];

         this->ReBuilder.Receive_Descriptor_File_Reader(&this->Description_Reader);

         this->ReBuilder.Receive_Class_Number(Class_Data_Type_Holder.Class_Number);

         this->ReBuilder.Re_Construct_Class();

         std::cout << "\n";

         std::cout << "\n\t  New client class constructed.";

         std::cout << "\n";

         std::cout << "\n\t  Class name: " << this->ReBuilder.Get_New_Class_Name();

         std::cout << "\n";

         this->ReBuilder.Run_System_Commands();

         this->ReBuilder.Clear_Dynamic_Memory();
     }

     if(this->Description_Reader.Get_Class_Number() > 0){

        std::cout << "\n";

        std::cout << "\n\t  Client classes are ready to use";

        std::cout << "\n";
     }
}

void Kernel::Construct_Server_Class(){

     this->Factory_Data_Collector.Jump_To_Construction_Point();

     this->Srv_Builder.Receive_Descriptor_File_Reader(&this->Description_Reader);

     this->Srv_Builder.Receive_Newly_Constructed_Include_Directory(this->Factory_Data_Collector.Get_New_Include_Directory_Name());

     this->Srv_Builder.Build_Server_Class();

     this->Srv_Builder.Run_System_Commands();

     std::cout << "\n";

     std::cout << "\n\t# The server class has been constructed";

     std::cout << "\n";

     std::cout << "\n\t  Class name: " << this->Description_Reader.Get_Server_Class_Name();

     std::cout << "\n";

     std::cout << "\n\t  Server class is ready to use ";

     std::cout << "\n";

     std::cout << "\n";

     this->Srv_Builder.Clear_Dynamic_Memory();
}

void Kernel::Construct_Inter_Thread_Data_Structure(){

     this->Factory_Data_Collector.Jump_To_Construction_Point();

     this->ITDS_Builder.Receive_Descriptor_File_Reader(&this->Description_Reader);

     this->ITDS_Builder.Build_Inter_Thread_Data_Structure();
}

void Kernel::Construct_Main_File(){

     this->Factory_Data_Collector.Jump_To_Construction_Point();

     char * New_Include_Directory_Name = this->Factory_Data_Collector.Get_New_Include_Directory_Name();

     char * Main_File_Name = this->Description_Reader.Get_Main_File_Name();

     if(Main_File_Name != nullptr){

        this->Main_File_Builder_Object.Receive_Descriptor_File_Object_Addres(&this->Description_Reader);

        this->Main_File_Builder_Object.Receive_Newly_Constructed_Include_Directory_Name(New_Include_Directory_Name);

        this->Main_File_Builder_Object.Build_Main_File();
     }
}

void Kernel::Remove_Compiler_Output_File(){

     char Error_Message_File_Name [] = {'\\','C','o','m','p','i','l','e','r','_','O','u','t','p','u','t','\0'};

     int Error_Message_File_Name_Size = strlen(Error_Message_File_Name);

     int Construction_Point_Name_Size = strlen(this->Description_Reader.Get_Construction_Point());

     this->Compiler_Output_File_Path = new char [5*Construction_Point_Name_Size];

     int index_counter = 0;

     for(int i=0;i<Construction_Point_Name_Size;i++){

         this->Compiler_Output_File_Path[index_counter] = this->Description_Reader.Get_Construction_Point()[i];

         index_counter++;
     }

     for(int i=0;i<Error_Message_File_Name_Size;i++){

         this->Compiler_Output_File_Path[index_counter] = Error_Message_File_Name[i];

         index_counter++;
     }

     this->Compiler_Output_File_Path[index_counter] = '\0';

     bool Is_Compiler_Output_File_Exist = this->FileManager.Is_Path_Exist(this->Compiler_Output_File_Path);

     if(Is_Compiler_Output_File_Exist){

        this->FileManager.Delete_File(this->Compiler_Output_File_Path);
     }

     delete [] this->Compiler_Output_File_Path;
}
