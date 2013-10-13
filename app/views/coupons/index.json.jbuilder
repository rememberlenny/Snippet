json.array!(@coupons) do |coupon|
  json.extract! coupon, :name, :location, :address, :item, :when
  json.url coupon_url(coupon, format: :json)
end