FactoryGirl.define do
  factory :product do
    factory :product_01 do
      sku  "B0007P5KHG"
      name "Toysmith Newton's Cradle Physics Science Kit"
      description %{
        Newton's Cradle is a classic! Also known as balance balls, 
        these steel balls keep you entertained throughout the day. Pull back 
        one or more of the balls and let them drop down.
      }
      price 8.50
    end

    factory :product_02 do
      sku "B004C34D5O"
      name "Orion - Electronic Perpetual Motion"
      description %{
        The Revolving Cosmos Perpetual Motion Desktop Toy is perfect for 
        your outer space themed office or room decor. A simple spin of the 
        top of the base sets the galaxy in motion. The multicolored rings 
        start spinning in different orbits around the planet in the center. 
        A top seller in the space museum stores and a cool gift for the 
        science physics enthusiast. Measures 11.5 inches tall. 
      }
      price 10.47
    end

    factory :product_03 do
      sku "B00AJSWLO6"
      name "1 X Asteroid - Perpetual Motion"
      description %{
        The Asteroid - Perpetual Motion is a piece of revolving art for your 
        desk. This kinetic sculpture has several brightly colored metallic 
        balls that rotate like a ferris wheel. It will keep you and anybody 
        else who watches it mesmerized for hours. Once star 
      }
      price 9.78
    end

    transient do
      locations {}
    end

    after(:create) do |product, evaluator|
      evaluator.locations.try(:each) do |warehouse, quantity|
        product.product_locations.create(warehouse_id: warehouse.id, quantity: quantity)
      end
    end
  end
end
