require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square") do 
  @number_square = params.fetch("square").to_f

  erb(:square)
end

get("/square/new") do
  erb(:homepage)
end 

get("/square_root") do
  @number_square = params.fetch("square").to_f

  erb(:square_rt)
end 

get("/square_root/new") do 
  erb(:square_root)
end 

get("/payment/new") do
  erb(:payment)
end

get("/payment") do
  @apr = params.fetch("apr").to_f
  @apr_percent = "%.4f" % @apr + "%"

  @years = params.fetch("years").to_i

  @principal = params.fetch("principal").to_f
  @principal_amount = "$" + "%.2f" % @principal 

  n = @years * 12
  rate = (@apr / 100) / 12
  
  numerator = rate * @principal
  denominator = 1 - (1+rate)**-n

  payment = numerator / denominator 
  @final_payment =  payment.to_fs(:currency)

  erb(:payment_calc)
end

get("/random/new") do 
  erb(:random)
end 

get("/random_calc") do 
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f

  @random = rand(@min..@max)

  erb(:random_calc)
end
