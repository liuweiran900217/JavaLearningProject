//输出一个字符串
class Main {
    main() : Object {
        (new IO).out_string("1\n")
    };
};

//输出用户输入的字符串
class Main {
    main() : Object {
        (new IO).out_string((new IO).in_string().concat("\n"))
    };
};

//将字符串转换为整数
//编译时需要将atoi.cl一起编译，命令为：coolc fact.cl atoi.cl
class Main inherits A2I {
    main() : Object {
        (new IO).out_string(i2a(a2i((new IO).in_string()) + 1).concat("\n"))
    };
};

//求阶乘函数（递归形式）
class Main inherits A2I {
    main() : Object {
        (new IO).out_string(i2a(fact(a2i((new IO).in_string()))).concat("\n"))
    };

    fact(i: Int) : Int {
        if (i = 0) then 1 else i * fact(i - 1) fi
    };
};

//求阶乘函数（循环形式）
class Main inherits A2I {
    main() : Object {
        (new IO).out_string(i2a(fact(a2i((new IO).in_string()))).concat("\n"))
    };

    fact(i: Int) : Int {
        let fact: Int <- 1 in {
            while (not (i = 0)) loop {
                fact <- fact * i;
                i <- i - 1;
            }
            pool;
            fact;
        }
    };
};

