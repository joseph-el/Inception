# include <iostream>
# include <fcntl.h>
# include <unistd.h>
int main(void) 
{

    std::cout << "HELLO TO THE CONTAINER !\n";
    int x;


    int fd = open("file.md", O_RDONLY | O_APPEND);

    char *pf;

    pf = new char[1000];

    read(fd, pf, 200);

    std::cout << "check file >>\n";
    std::cout << pf << std::endl;

    exit(-2);
 }