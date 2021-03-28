// A C/C++ program for splitting a string 
// using strtok() 
#include <cstdlib>
#include <iostream> 
using namespace std;
int main()
{
    char str[] = "Geeks-for-Geeks";
    // Returns first token
    char *token = strtok(str, "-");
    // Keep printing tokens while one of the
    // delimiters present in str[].
    while (token != NULL)
    {
        cout << token;
        token = strtok(NULL, "-");
    }
    return 0; 
}
