# JuliaDataScience
Julia notebooks for the book [Julia Data Science](https://juliadatascience.io).

## Introduction
My goal for this repository, is to learn the [Julia](https://julialang.org) computing language by doing data science in Julia. If you've never heard of Julia, check out its website. It claims speed like C or C++ with the easy of python or R. That's a big ask. We'll see. I chose the online book linked above (Julia Data Science) for no other reason than it seems relatively current. I will likely use additional resources as this project evolves. 

I prefer to do data science (in python) using a [Jupyter](https://jupyter.org) notebook. Obviously there are a million different IDEs, etc., but this works for me. I specifically dig the interactivity of notebooks when exploring data. If you like working with notebooks and are interested in Julia, this might work for you too. 

This project is part of my sabbatical during the 2022-23 academic year. I am currently visiting the University of Auckland in (currently very rainy, windy, flooded, etc.) Auckland, New Zealand. 

### Setup

If you are new to Julia, you might want to work through some basic tutorials on programming in Julia. If you are a confident programmer and/or impatient (like me), just dive in and start working through the notebooks while reading the book. 

1. Install Julia
2. Clone this repository

I like using virtualenvs or conda environments in python and want to do the same thing here. So I put a Julia "Project Environment" in the notebooks directory here and refer to it at the top of all my Julia notebooks. I really like setting up specific notebook kernels in python and not having to point to the env in each notebook, but this is the best solution I've found so far (for Julia). 

How do you set up a project environment? I suggest reading [this site](https://towardsdatascience.com/how-to-setup-project-environments-in-julia-ec8ae73afe9c). Basically, you'll need to do the following once you start up Julia. First, you'll enter the package manager (Pkg) by hitting the `]` key. This will start up the Pkg-REPL. 

```
julia> ]
(@v1.8) pkg>
```

Once your in the package manager, it's time to create a project using the `generate` command. I suggest naming it something useful, e.g. juliadatascience. This will create a directory named `juliadatascience` in your current working directory. The directory will contain a `src` directory for all packages for this project and a `Project.toml` file. Note: Simply hit the backspace key if you want to exit out of the Pkg-REPL. 
```
(@v1.8) pkg> generate juliadatascience
  Generating  project juliadatascience:
    juliadatascience/Project.toml
    juliadatascience/src/juliadatascience.jl

(@v1.8) pkg> activate juliadatascience
  Activating project at `~/research/JuliaDataScience/notebooks/juliadatascience`

(juliadatascience) pkg>
```

Now it's time to add packages to this environment. Let's start with `IJulia`. 

```
(juliadatascience) pkg> add IJulia
    Updating registry at `~/.julia/registries/General.toml`
   Resolving package versions...
    Updating `~/research/JuliaDataScience/notebooks/juliadatascience/Project.toml`
  [7073ff75] + IJulia v1.24.0
    Updating `~/research/JuliaDataScience/notebooks/juliadatascience/Manifest.toml`
```
