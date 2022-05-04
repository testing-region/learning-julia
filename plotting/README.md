# Plotting In Julia

Example:

```julia
using Plots

# set x and y values
x = -3:0.1:3
f(x) = x^2
y = f.(x)

# load GR backend
gr()

# plot the graph
plot(x, y)

# create a scatter plot
scatter(x, y)

# edit the same plot
plot!(x, y)
## OR
scatter!(x, y)

# using a different backend
plotlyjs()
```

- To use plotlyjs, you need to install the plotlyjs package.

```julia
using Pkg
Pkg.add("PlotlyJs")
```
