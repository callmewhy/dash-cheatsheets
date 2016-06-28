cheatsheet do
  title 'Swift Monad'               # Will be displayed by Dash in the docset list
  docset_file_name 'swiftmonad'    # Used for the filename of the docset
  keyword 'Swift Monad'             # Used as the initial search keyword (listed in Preferences > Docsets)

  category do
    id 'Functor'
    entry do
      name 'You apply a function to a wrapped value using `fmap`:'
      notes <<-'END'
        ```swift
        infix operator <^> { associativity left } // Functor's fmap (usually <$>)
        func <^><A, B>(f: A -> B, a: A?) -> B? {
          if let x = a {
            return f(x)
          } else {
            return .None
          }
        }

        let increase = { $0 + 1 }
        increase <^> 10

        ```
      END
    end
  end

  category do
    id 'Applicative'
    entry do
      name 'You apply a wrapped function to a wrapped value using `apply`:'
      notes <<-'END'
        ```swift
        infix operator <*> { associativity left } // Applicative's apply
        func <*><A, B>(f: (A -> B)?, a: A?) -> B? {
          if let x = a {
            if let fx = f {
              return fx(x)
            }
          }
          return .None
        }

        func curriedAddition(a: Int)(b: Int) -> Int {
          return a + b
        }
        curriedAddition <^> Optional(2) <*> Optional(3)

        ```
      END
    end
  end

  category do
    id 'Monad'
    entry do
      name 'You apply a function that returns a wrapped value, to a wrapped value using `flatMap`:'
      notes <<-'END'
        ```swift
        infix operator >>> { associativity left precedence 150 }
        func >>><A, B>(a: A?, f: A -> B?) -> B? {
          if let x = a {
            return f(x)
          } else {
            return .None
          }
        }
        infix operator >>- { associativity left }
        func >>-<T, U>(a: T?, f: T -> U?) -> U? {
          return a.flatMap(f)
        }

        func half(a: Int) -> Int? {
          return a % 2 == 0 ? a / 2 : .None
        }

        Optional(3) >>- half
        // .None
        Optional(4) >>- half
        // 2
        Optional.None >>- half
        // .None
        Optional(20) >>- half >>- half
        // 5
        ```
      END
    end
  end
end
