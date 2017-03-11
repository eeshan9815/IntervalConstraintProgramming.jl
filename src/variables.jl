
abstract Operation

immutable Variable <: Operation
    s::Symbol
end

x = Variable(:x)
y = Variable(:y)


immutable Sum <: Operation
    var1::Variable
    var2::Variable
end

Base.:+(x::Variable, y::Variable) = Sum(x, y)

x + y

isa(x+y, Operation)

immutable Comparison
    operator::Symbol
    lhs
    rhs
end

Base.:<=(x::Operation, y::Operation) = Comparison(:<=, x, y)
Base.:<=(x::Operation, y::Real) = Comparison(:<=, x, y)

x + y <= 3
