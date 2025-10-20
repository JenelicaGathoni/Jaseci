
def greet(func: callable){
    return func("Hello");

}
def uppercase(text: string){
    return text.upper();
}


#A function can be passed as an argument to another function, enabling dynamic behavior.
def apply(func: callable, x:int){
    return func(x);
}
def square(x: int){
return x*x;
}

#A Higher-Order Function can return another function, allowing function generation dynamically.
def fun(n:any){

    return lambda x: any: x*n;
}

with entry{
    print(greet(uppercase));
    print(apply(square,5));

    double: callable = fun(2);
    triple: callable= fun(3);

    print(double(5));
    print(triple(6));
}
