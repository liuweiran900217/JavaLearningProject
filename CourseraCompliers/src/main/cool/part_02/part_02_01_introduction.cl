//最简单的函数，返回整数1
class Main {
    main():Int {
        1
    };
};

//打印Hello World，返回1
class Main {
    i : IO <- new IO;

    main():Int {
	{
		i.out_string("Hello World!\n");
        	1;
        }
    };
};

//直接返回IO对象
class Main {

    i : IO <- new IO;

    main():IO {
        i.out_string("Hello World!\n")
    };
};

//Object是所有对象的基对象
class Main {

    i : IO <- new IO;

    main():Object {
        i.out_string("Hello World!\n")
    };
};

//不用创建IO对象，直接在main内部创建
class Main {

    main():Object {
        (new IO).out_string("Hello World!\n")
    };

};

//利用内联（也就是面向对象中的子类）实现功能
class Main inherits IO {

    main():Object {
        self.out_string("Hello World!\n")
    };

};