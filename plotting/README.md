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

## Creating Subplots

- Set plots to variable names.
- Use the `plot()` function with the plots variable names as arguments to create the subplots.
- `layout` is an optional argument of `plot()` that can be used to set the layout of the subplots.
  - It takes a tuple as an argument.
  - (x, y) where x = number of rows and y = number of columns.

E.g.

```julia
p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout=(2,2))
```

## Things To Note

- If you want to flip the x-values (show in reverse order), use the `xflip!()` function.
- `xlabel!()` and `ylabel!()` are used to set the x- and y-axis labels.
- `title!()` is used to set the title of the graph.
- `legend=false` is used to hide the legend.
