using Pkg
pkg"activate ."
pkg"instantiate"

a = 1

abc = 1

1abc = 2

πi = 30

aπi = 30

i::Int=1

function f()
    i::Int=5
    return i
end
f()


i

function f()
    i
    return i
end

f()

const ICONSTANT=1

ICONSTANT=5

ICONSTANT

2          # Integer 

2.0        # Double precision Float (Float64)

2f0        # Single precision Float (Float32)

"string"   # String

'a'        # Char

i = 1
j = 2
i, j = j, i

j

i

1, 2

a = (2, 3)

typeof(a)

a[1]

a[1] = 5

i, j = 1, 2

i

j

i = 1, 2 #i is a Tuple

i, = 1, 2 #i is an Int

i

i, j = 1, 2, 3 #i and j get assigned 3 is ignored

i

j

typeof(nothing)

a = nothing
i = 5
if i < 5
    a = 5
end
5
typeof(a)

typeof(1)

typeof(0b1), typeof(0o7), typeof(0xff)

typeof(0xf), typeof(0xfff), typeof(0xfffff), typeof(0xfffffffff), typeof(0xfffffffffffffffff)

typeof(1.0), typeof(1e0), typeof(1.e4)

typeof(1.0f0), typeof(1f-6), typeof(1.f4)

abstract type MyAbstractType end
struct MyConcreteType <: MyAbstractType
    member
end

a = MyConcreteType(5)

a isa MyAbstractType

UInt32(3f-1)

primitive type MyType1 40 end

primitive type MyType2 4 end

a = 10

isbits(a)

isbitstype(Int)

struct Rectangle
    h::Float64
    w::Float64
end

r = Rectangle(10.0, 20.0)

mutable struct MRectangle
    h::Float64
    w::Float64
end

mr = MRectangle(10.0, 20.0)

mr.h = 15.0

mr

abstract type Shape end
struct Rectangle1 <: Shape
    w::Float64
    h::Float64
end
struct Square <: Shape
    l::Float64
end

mutable struct A
    member
end

a = A(5)

typeof(a.member)

a1 = A("String")

typeof(a1.member)

a.member = "String"

typeof(a.member)

Rational{Any}

Rational{Int32} <: Rational

Rational{Int32} <: Rational{Integer}

abstract type ShapeParametric{T<:AbstractFloat} end

struct RectangleParametric{T<:AbstractFloat} <: ShapeParametric{T}
     w::T
     h::T
end
struct SquareParametric{T<:AbstractFloat} <: ShapeParametric{T}
    s::T
end


struct Point{T<:AbstractFloat, N}
    x::Vector{T}
end
p = Point{Float32, 2}([1f0, 2f0])

a = 1//2
typeof(a)

typeof(Int)

typeof(Rational{Int})

isa(1, Number)

isa(1, Matrix)

isa(1, Int)

1 isa Number

supertype(Int32)

Int32 <: Integer

Int32 <: AbstractFloat

Int32 <: Real

Int32 <: Signed

struct AA
    a1::Int32
    a2::Float64
end
a = AA(1, 2)

a;

a

b = 2.0

a;b

a

a;

a; nothing

struct AAA
    a1::Int32
    a2::Float64
end
a = AAA(1, 2)

function Base.show(io::IO, a::AAA)
    println(io, "a1: ", a.a1, " a2: ", a.a2)
end

a

print(a)

string(a)
