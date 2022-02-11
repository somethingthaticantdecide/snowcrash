#include <iostream>
#include <string>

int main()
{
    std::string s; int k;
    getline(std::cin, s);
    k = 11;

    for (int i = 0; i < s.length(); i++)
    {
        if (s[i] >= 'a' && s[i] <= 'z')
            s[i] = ((s[i] - 'a' + k) % 26) + 'a';
        else if (s[i] >= 'A' && s[i] <= 'Z')
            s[i] = ((s[i] - 'A' + k) % 26) + 'A';
    }
    std::cout << s << std::endl;
}