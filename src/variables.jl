
abstract Operation

immutable Variable <: Operation
    s::Symbol
end

x = Variable(:x)
y = Variable(:y)


immutable Sum <: Operation
    var1
    var2
end

immutable Product <: Operation
    var1
    var2
end

immutable Power <: Operation
    var1
    var2
end


Base.:+(x, y) = Sum(x, y)
Base.:*(x, y) = Product(x, y)
Base.:^(x, y::Integer) = Power(x, y)
Base.:^(x, y::Real) = Power(x, y)

x^y

x + y

x + (y*x)

3x

3x^2

x

@which x^2

3 + 4

x^10

isa(x+y, Operation)d

immutable Comparison
    operator::Symbol
    lhs
    rhs
end

Base.:<=(x::Operation, y::Operation) = Comparison(:<=, x, y)
Base.:<=(x::Operation, y::Real) = Comparison(:<=, x, y)

x + y <= 3
