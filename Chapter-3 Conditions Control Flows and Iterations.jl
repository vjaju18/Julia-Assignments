using Pkg
pkg"activate ."
pkg"instantiate"

z = begin
    x = 1
    y = 2
    x + y
end

z = (x = 1; y = 2; x+y)

z =(x = 1;
    y = 2;
    x + y)

z = begin x=1; y=2; x+y end

if 1
    println("I am here")
end 

if Bool(1)
    println("I am here")
end

i = 1
str = if i > 1
    "Greater"
else
    "Less"
end

str = i > 1 ? "Greater" : "Less"

str = i > 1? "Greater" : "Less"

str = i > 1 ? "Greater": "Less"

val = 3
if val == 1
    "one"
elseif val == 2
    "two"
elseif val == 3
    "three"
elseif val == 4
    "four"
else
    "unknown"
end

if val == 1
    "one"
elseif val == 2
    "two"
elseif val == 3
    "three"
elseif val == 4
    "four"
else if val >= 5

if val == 1
    "one"
elseif val == 2
    "two"
elseif val == 3
    "three"
elseif val == 4
    "four"
else
    if val >= 5
        "above five"
    else
        "below five"
    end
end

begin
    s = 0
    n = 10
@label loop
    s = s + n
    n = n - 1
    if n > 0
        @goto loop
    end
    s
end

s = 0
for i = 1:10
    s = s + i
end
s

s = 0
for i = 1:10
    s = s + i
end
s

s = 0;
for i = 1:2:10
    println(i)
    s = s + i
end
s

s = 0;
for i = 1:10
    if i % 3 == 0
        continue
    end
    println(i)
    s = s + i
end
s

s = 0;
for i = 1:10
    if i % 3 == 0
        break
    end
    println(i)
    s = s + i
end
s

for i in [5 10 15]
    println(i)
end

for i=1:3, j=1:2
    println((i, j))
end

for i=1:3, j=1:i
    println((i, j))
end


for i=1:3, j=1:2
    println((i, j))
    if i == j
        break
    end
end

for i=1:3
    for j=1:2
        println((i, j))
        if i == j
            break
        end
    end
end

s, n = 0, 10;
while n > 0
    s = s + n
    n = n - 1
end
s


try
    sqrt(-1)
catch e
    println(e)
end


sqrt(-1)

try 
    sqrt(-1)
catch e
    rethrow()
end


try
    throw(1)
catch e
    println(typeof(e))
end

sqrt(-1)

try
    sqrt(-1)
catch e
    stacktrace(catch_backtrace())
end


