struct Language
    name::String
    title::String
    year_of_birth::Int64
    fast::Bool
end

function add_numbers(x, y)
    return x + y
end

function round_number(x::Float64)
    return round(x)
end

function round_number(x::Int64)
    return x
end

function round_number(x::AbstractFloat)
    return x
end

Base.show(io::IO, l::Language) = print(
    io, l.name, ", ",
    2021 - l.year_of_birth, " years old, ",
    "has the following titles: ", l.title
)

function add_multiply(x, y)
    addition = x + y
    multiplication = x * y
    return addition, multiplication
end

function add_multiply_divide(x, y)
    addition = x + y
    multiplication = x * y
    division = x/y
    return addition, multiplication, division
end

function logarithm(x::Real; base::Real=2.7182818284590)
    return log(base, x)
end

function compare(a, b)
    if a < b
        "a is less than b"
    elseif a > b
        "a is greater than b"
    else
        "a is equal to b"
    end
end
