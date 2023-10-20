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

get("/payment_calc") do
  @apr = "%.3f" % params.fetch("apr").to_f
  @apr_percent = @apr + "%"

  @years = params.fetch("years").to_i

  @principal = params.fetch("principal").to_f
  @principal_amount = "$" + "%.2f" % @principal 

  n = @years * 12
  rate = 

  erb(:payment_calc)
end
