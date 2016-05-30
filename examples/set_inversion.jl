using ValidatedNumerics
using ConstraintPropagation

S = @separator 1 <= x^2 + y^2 <= 3
X = IntervalBox(-10..10, -10..10)

@time inner, boundary = set_inversion(S, X, ldexp(1., -2))

@show length(inner), length(boundary)

# include("draw_boxes.jl")
#
# draw_boxes(inner, "green", 1)
# draw_boxes(boundary, "grey", 0.2)
# axis("image")