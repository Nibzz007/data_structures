class Student  
{  
   String? name;  
   int? age;  
     
   void displayName() {  
         print("I am Nibu");  
                            }  
   void displayAge() {  
            print("My age is 25");  
                               }  
}  
  
class Faculty  
{  
   String? depName;  
   int? salary;  
     
   void displayDepartment() {  
         print("I am a professor of $depName");  
                            }  
   void displaySalary() {  
            print("My salary is $salary");  
                               }  
}  
// Defining interface by implenting another class  
class College implements Student,Faculty  
{    
   // Overriding the Student class members  
   @override
  String? name;  
   @override
  int? age;  
     
   @override
  void displayName() {  
         print("I am $name");  
                            }  
   @override
  void displayAge() {  
            print("My age is $age");  
                               }  
  
//Overriding each data member of Faculty class  
   @override
  String? depName;  
   @override
  int? salary;  
     
   @override
  void displayDepartment() {  
         print("I am a proffesor of $depName");  
                            }  
   @override
  void displaySalary() {  
            print("My salary is $salary");  
  
}  
}  
void main()   
{  
College cg = College();  
cg.name = "Nibu krishna";  
cg.age = 27;  
cg.depName = "Data Structure";  
cg.salary = 50000;  
  
cg.displayName();  
cg.displayAge();  
cg.displayDepartment();  
cg.displaySalary(); 
} 
