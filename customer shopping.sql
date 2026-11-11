use customer_shopping;
select * from shopping;

# Q1. What is the total revenue generated  by male vs female customers?
select gender, sum(purchase_amount) as revenue
from shopping
group by gender;

# Q2: Which customers used a discount but still spent more than the average purchase amount?
select customer_id, purchase_amount
from shopping
where discount_applied = "Yes" 
and purchase_amount > (select avg(purchase_amount) from shopping);

# Q3: Which are the top 5 products with the highest average review rating?
select item_purchased, round(avg(review_rating), 2) as avgrate from shopping
group by item_purchased order by avgrate desc 
limit 5;

# Q4: Compare the average Purchase Amounts between Standard and Express Shipping.
select shipping_type, round(avg(purchase_amount), 2) as avgshipping
from shopping where shipping_type in ("Standard","Express") 
group by shipping_type;

# Q5: Do subscribed customers spend more? Compare average spend and total revenue between subscribers and non-subscribers.
select subscription_status, 
count(customer_id) as total_customer,
round(avg(purchase_amount), 2) as avg_spend,
sum(purchase_amount) as total_revenue
from shopping
group by subscription_status;

# Q6: Which 5 products have the highest percentage of purchases with discounts applied?
select item_purchased, 
round(sum(case when discount_applied = "Yes" then 1 else 0 end) * 100 / count(*), 2) as discountbill
from shopping group by item_purchased order by discountbill desc limit 5;

# Q7: Segment customers into New, Returning, and Loyal based on their total number of previous purchases, 
# and show the count of each segment.
select 
case when previous_purchases = 1 then "New"
	when previous_purchases between 2 and 10 then "Returning"
    else "Loyal"
end as customer_segment,
count(customer_id) as custid
from shopping group by customer_segment;

# Q8. What are the top 3 most purchased products within each category?
with ranked_products as 
(
		select category, item_purchased, count(*) as item_count,
        row_number() over(partition by category order by count(*) desc) as rnk
        from shopping
        group by category, item_purchased
)
select category, item_purchased, item_count from ranked_products
where rnk <= 3;

# Q9. Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
SELECT 
    CASE WHEN previous_purchases > 5 THEN 'Repeat Buyer (>5)' ELSE 'Normal Buyer' END AS buyer_type,
    subscription_status,
    COUNT(customer_id) AS count_customers
FROM shopping
GROUP BY buyer_type, subscription_status;

# select subscription_status,
# count(customer_id) as repeat_buyers
# from shopping
# where previous_purchases > 5
# group by subscription_status;
# yeh wala short answer hain

# Q10. What is the revenue contribution of each age group?
SELECT age_group, 
       SUM(purchase_amount) AS total_revenue,
       ROUND(SUM(purchase_amount) * 100.0 / (SELECT SUM(purchase_amount) FROM shopping), 2) AS revenue_percentage
FROM shopping
GROUP BY age_group
ORDER BY total_revenue DESC;




