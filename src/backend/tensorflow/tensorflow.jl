module TF

using ..Flux, DataFlow, TensorFlow, Juno
import Flux: accuracy, rebatch, convertel

export tf

struct Op
  f
  shape
end

Op(f) = Op(f, (d...) -> nothing)

Flux.shape(op::Op, d...) = op.shape(d...)

include("graph.jl")
include("model.jl")
include("recurrent.jl")

end
