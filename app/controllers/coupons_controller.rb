class CouponsController < ApplicationController
   

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find_by_id(params[:id])
        # puts params
    end
    
    

    def create
        @coupon = Coupon.new(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store]  )
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
    
end

# {"coupon"=>{"coupon_code"=>"ASD123", "store"=>"Dean and Deluca"}, "controller"=>"coupons", "action"=>"create"}