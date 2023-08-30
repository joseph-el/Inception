#!/bin/bash


export snippet1='# include <unistd.h>
# include <iostream>
# include <stdio.h>
# include "Colors.hpp"

#if !defined(SIG)
    using namespace std;
    # define SIG(x, sepf) cout << x << endl; if (sepf) {cout << sepf << endl};
    # define MAX_uf_string 16
#endif

# if !defined(ADDRESS_PTR)
    #define ADDRESS_PTR(p1, p2, p3, p4) puts("-----------------------"); printf( "set address <%p>\n" \
            "ret address <%p>\n" \
            "leet address <%p>\n" \
            "match address <%p>\n", p1, p2, p3, p4 \
    ); puts("-----------------------");
#endif

    #define clearScreen_const 1000
    void clearScreen(useconds_t time_sleep){
        usleep(time_sleep); const char *CLEAR_SCREEN_ANSI = "\e[1;1H\e[2J";
            write(STDOUT_FILENO, CLEAR_SCREEN_ANSI, 12);}

struct vec1{
    long
        in_r:10, in_s:10;
};

class vec{
    public :
        size_t  *set;
        short   *ret;
        struct vec1 *leet;
        char        *mach_port_t_s;
    
    public :
             vec();   // constructor
            ~vec();   // destructor
    void     (*clearScreen_)(useconds_t);
    void     (*_ufpull_)(struct vec1 &, short); // function *()
    bool        ufcheck(class vec &, int16_t); // member function in this class
    friend      int16_t uf_display(class vec , short uf_what_display); //friend function
};

# define uf_string (1<<3)
# define uf_struct (1<<4)
# define uf_var (1<<1)
# define UF_EXIT std::cout << "UF_EXIT -1", exit(-1);

int16_t uf_display(class vec my_Class, short uf_what_display){
    if (uf_what_display & ~(uf_string | uf_struct | uf_var))
        {UF_EXIT};
    std::cout << "-----------------------------------" << endl;
    if (uf_what_display & uf_string){
        std::cout << RED"UF_STRING"WHITE << endl;
        std::cout << my_Class.mach_port_t_s << endl;
    }
    if (uf_what_display & uf_struct){
        std::cout << YELLOW"UF_STURCT"WHITE << endl;
        std::cout << "leet->in_r " << my_Class.leet->in_r << endl;
        std::cout << "leet->in_s " << my_Class.leet->in_s << endl;
    }
    if (uf_what_display & uf_var){
        std::cout << GREEN"UF_VAR"WHITE << endl;
        std::cout << "*my_Class.set " << *my_Class.set << endl;
        std::cout << "*my_Class.ret " << *my_Class.ret << endl;
    }
    std::cout << "-----------------------------------" << endl;
    return (-1);
}

# define uf_set (1<<2)
# define uf_ret (1<<3)
# define uf_limit (1<<4)

void    ufpull(struct vec1 &target, short uf_flag){
    using namespace std; cout << "UF_PULL" << endl;
    if (uf_flag & ~(uf_set | uf_limit | uf_ret))
        return ;
    if (uf_flag & uf_set)
        target.in_r = -42, target.in_s = 42;
    if (uf_flag & uf_limit)
        target.in_r = 13, target.in_s = -13;
    if (uf_flag & uf_ret)
        target.in_r = 'A', target.in_s = 'Z';
}

bool    vec::ufcheck(class vec &myClass, int16_t uf_flag){
    using namespace std;

    if (uf_flag & uf_string) {
        cout << "INIT STRING" << endl;
        memmove(myClass.mach_port_t_s, "Match Eroupe °|°", sizeof("Match Eroupe °|°") + 1);
    }
    if (uf_flag & uf_var){
        cout << "INIT VAR" << endl;
        *myClass.ret = 53;
        *myClass.set = 54;
    }
    if (uf_flag & uf_struct){
        myClass.leet->in_r = -1;
        myClass.leet->in_s = -7;
    }
    return (uf_flag == uf_limit * true);
}

vec::~vec(){
    delete   this->set;
    delete   this->ret;
    delete   this->leet;
    delete[] this->mach_port_t_s;
    memset(this, 0, sizeof(vec));
    std::cout << GREEN"Delete successefly" << WHITE << std::endl;
}

vec::vec(){
    memset(this, 0, sizeof(vec));
    this->_ufpull_ = &ufpull;
    this->clearScreen_ = &clearScreen;
    ADDRESS_PTR(this->set, this->ret, this->leet, this->mach_port_t_s);
    {
        // scope alloc bytes
        this->set = new size_t;
        this->leet = new struct vec1;
        this->ret = new short;
        this->mach_port_t_s = new char[MAX_uf_string];
    }
    ADDRESS_PTR(this->set, this->ret, this->leet, this->mach_port_t_s); 
}

int main() { 

    vec myClass;

    myClass.ufcheck(myClass, uf_string | uf_struct | uf_var);
    
    myClass._ufpull_(*myClass.leet, uf_set | uf_ret);
    
    uf_display(myClass, uf_string | uf_struct | uf_var);
    myClass.clearScreen_(4200000);
    system("leaks a.out");

    exit(-2);
}'

export snippet2='# include "class.hpp"

using namespace std;

void    t_class::disp(void)
{
    std::cout << ret << endl;
    if (country & USA)
        std::cout << USA << " USA" << endl;
    else if (country & (ITALY | ISLAND))
        std::cout << (ITALY | ISLAND) << " ERP" << endl;
    t_list  *tmp = list;

    while (tmp)
    {
        std::cout << "-A-|" << tmp->a << "|" << endl;
        std::cout << "-B-|" << tmp->b << "|" << endl;
        std::cout << "-C-|" << (int)tmp->c << "|" << endl;
        tmp = tmp->object;
    }
}

void    t_class::init_()
{
    ret = 42;
    country = USA;
    t_list  *new_s;
    t_list  *new_p;
    new_s = new t_list;
    new_p = new t_list;
    new_s->object = new_p;
    new_p->object = NULL;
    (*new_s).a = 23;
    (*new_s).b = 24;
    (*new_s).c = 25;
    (*new_p).a = 13;
    (*new_p).b = 14;
    (*new_p).c = 15;
    list = new_s;
}

int   main(int argc, char **argv)
{
    t_class ret;
    
    ret.init_();
    ret.disp();

    exit(EXIT_SUCCESS);
}'

export snippet3='# include <iostream>
# include <stdbool.h>


typedef class s_class
{
    private :
        short ret;
        short get;
        std::string name;
    public :
        void    init();
        void    disp();

    friend void friend_(s_class & class_);
}               t_class;

void    t_class::init(void)
{
    this->get = ENAMETOOLONG;
    this->ret = ENOLINK;
    this->name = (char *)strdup("HEY MY NAME JOSEPH");
}

using namespace std;

void    t_class::disp(void)
{
    std::cout << "Edited " << this->ret << endl;
    std::cout << "JOSEPH " << this->get << endl;
    std::cout << "ORY " << this->name << endl;
}

void    friend_(t_class &js)
{
    js.get = 1337;
    js.ret = 42;
}

int main(void)
{
    t_class ret;

    ret.init();
    ret.disp();
    friend_(ret);
    ret.disp();

    return (EXIT_SUCCESS);
}
'

export snippet4='#include <iostream>

using namespace std;

typedef short t_class;

class s_Rectangle 
{
    int width, height;
    
public:

    void set_values (int,int);
    int area() {return width * height;}
};

class Rectangle {
  int width, height;
public:
  Rectangle(int x, int y) : width(x), height(y) {}
  int area(void) { return width * height; }
};

void s_Rectangle::set_values (int x, int y){
  width = x;
  height = y;
}

int main () 
{
  s_Rectangle rect;

    rect.set_values (3,4);
    
    cout << "test: " << rect.area();
  return 0;
    
  Rectangle obj (3, 4);
  Rectangle * foo, * bar, * baz;
  foo = &obj;
  bar = new Rectangle (5, 6);
  baz = new Rectangle[2] { {2,5}, {3,6} };
  cout << "objs area: " << obj.area() ;
  cout << "*foos area: " << foo->area();
  cout << "*bars area: " << bar->area() <<;
  cout << "baz[0]s area:" << baz[0].area();
  cout << "baz[1]s area:" << baz[1].area();       
  delete bar;
  delete[] baz;

  return 0;
}'

export snippet5='# pragma once
# include <iostream>
# include <stdlib.h>
# include <errno.h>
# include <limits>

using namespace std;

int32_t main(int32_t argc, char **argv)
{

    {
        char **str;
        std::int32_t size = ENAMETOOLONG;
        
        str = new char*[size];
        for (size_t i = 0; i < ENAMETOOLONG; i++)
        {
            str[i] = new char[ENOTBLK];
            strncpy((char *)str[i], "LOLOLOLOLOLOLO", sizeof("LOLOLOLOLOLOLO") + 1);
            std::cout << str[i] << (char)32 << i + 1 << endl;
        }
        return (ENOPROTOOPT);
    }
    
    {
        int *arr;
        // arr = new int(INT32_MAX + INT16_MAX); // overflow?✅
        std::cout << *arr << std::endl;
        return (ENOMEM);
    }

    {
        int *arr;
        arr = new int[10], memset(arr, -1, sizeof(int) * 10);
        for (size_t i = 0; i < 10; i++)
        {
            std::cout << arr[i] << endl;
        }
        delete arr;
        *(arr + 4) = 43; // use after free ✅
        // system("c++ -fsanitize=address -g memory.cpp");
        return EXIT_SUCCESS; 
        int *ptr;
        ptr = new int;
        *ptr = 9;
        delete ptr;
        ptr = new int;
        *ptr = (char)22;
        printf("check |%d|\n", *ptr);
        system("leaks a.out");
    }


    return 1;
    int *ptr = (int *)malloc(sizeof(int) * 100);
    *(ptr + 23) = 42;
    std::cout << *(ptr + 23);
    free(ptr);
    std::cout << "-----------------" << endl;
    std::cout << *(ptr + 23) << endl;
    std::cout << "-----------------" << endl;
    *(ptr + 200000) = 1337;
    std::cout << *(ptr + 20000) << endl;
    std::cout << "-----------------" << endl;
    
    return 1;
}'

export snippet6='# include <iostream>
# include <stdio.h>

# if !defined(LOG_)
    #define LOG_(X) std::cout << X << std::endl
#endif

void    set_(int &data) {
    data = 12;
}

struct refrence {
    int i;
    short s;
    char *nn;
};

typedef struct refrence t_ref;
# define FILL (1 << 4)

void    fill(t_ref &leet, int32_t flag){
    if (flag & ~FILL){
        using namespace std;
        std::cout << "leet.i = " << leet.i << endl;
        std::cout << "leet.s = " << leet.s << endl;
        std::cout << "leet.nn = " << leet.nn << endl;
        return ;
    }
    leet.i = 42;
    leet.nn = strdup("Hello World Iam joseph");
    leet.s = -42;
}

int main(){

{
    // try for structs
    t_ref ref ; memset(&ref, 0, sizeof(ref));
    ref.nn = nullptr;
    ref.i = -2;
    ref.s = -4;
    fill(ref, FILL);
    fill(ref, 0);

    return (ENETDOWN);
}

    {
        // try for Var
        int x;
        x = -33;
        LOG_(x);
        set_(x);
        using namespace std;
        std::cout << "after" << endl;
        LOG_(x);

        return EXIT_SUCCESS;
    }

    int x;
    int *ptr;

    x = 10;
    ptr = &x;

    printf("CHECK ADDRESS |%p|\n", &x);
    int& ret = x;
    printf("CHECK ADDRESS |%p|\n", &ret);
    
    exit(EXIT_SUCCESS);
}'