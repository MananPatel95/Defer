import Foundation

// - Defer keyword is used to define a block of code that will be executed when the current scope is exited
// - Deferred blocks are executed in the reverse order of their appearance in the code
// - Defer useful for cleanup tasks, ensuring they're performed even if exceptions occur or the function returns early
 
func deferExample() {
    print("1")
    
    defer {
        print("2")
    }
    
    print("3")
    
    defer {
        print("4")
    }
    
    print("5")
}
print("DeferExample")
// Output:
//1
//3
//5
//4
//2
deferExample()

print("DeferExample2")
// Output:
//0
//1
var value = 0
func deferExample2() -> Int {
    defer {
        value = value + 1
    }
    
    return value
}
print(deferExample2())
print(value)

print("DeferExample3")
// Output:
//1
//5
//4
//3
//2
func deferExample3() {
    print("1")
    
    defer {
        defer {
            defer {
                print("2")
            }
            print("3")
        }
        print("4")
    }
    print("5")
}
deferExample3()
