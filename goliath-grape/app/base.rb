class Base < Grape::API
  mount V1::API
end