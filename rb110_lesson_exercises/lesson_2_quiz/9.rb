customer_orders = [
  {
  customer_id: 12,
  customer_name: 'Emma Lopez',
  orders: [
    { order_fulfilled: true, order_value: 135.99 },
    { order_fulfilled: true, order_value: 289.49 },
    { order_fulfilled: false, order_value: 58.00 }
  ]
  },
  {
  customer_id: 32,
  customer_name: 'Michael Richards',
  orders: [
    { order_fulfilled: true, order_value: 120.00 },
    { order_fulfilled: false, order_value: 85.65 }
    ]
  },
]

# create an all_orders which consists of hashes
# identical to the ones above, EXCEPT orders
# is converted to a total order value instead
# of an array of individual orders

# Original solution - trying to do too much at once
all_orders = customer_orders.map do |hash|
              hash.map do |k,v|
                if k == :orders
                  sum = v.reduce(0) do |memo, order|
                    order[:order_value] + memo
                  end
                  [:total_order_value, sum]
                else
                  [k, v]
                end
              end
             end

all_orders = all_orders.map do |sub|
              sub.to_h
            end

p all_orders

# Given solution from memory - first map a new hash with the information that
# is staying the same
# THEN do the reduction and add this to created hashes
all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |customer, index|
  order_value = customer[:orders].reduce(0) do |memo, order|
    memo + order[:order_value]
  end
  all_orders[index][:total_order_value] = order_value
end

p all_orders
