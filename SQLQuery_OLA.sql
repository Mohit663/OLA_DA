create database ola;

use ola;

/*Query 1. Retrieve all successful bookings:*/
SELECT * FROM Bengaluru_Ola_Booking_Data WHERE Booking_Status = 'Success';

/*Query 2. Find the average ride distance for each vehicle type:*/
SELECT 'Vehicle Type', AVG(‘Ride Distance’) as avg_distance FROM Bengaluru_Ola_Booking_Data GROUP BY 'Vehicle Type';

/*Query 3. Get the total number of cancelled rides by customers:*/
SELECT COUNT(*) FROM Bengaluru_Ola_Booking_Data WHERE 'Booking Status' = 'cancelled by Customer';

/*Query 4. List the top 5 customers who booked the highest number of rides:*/
SELECT 'Customer ID', COUNT('Booking ID') as total_rides FROM Bengaluru_Ola_Booking_Data 
GROUP BY 'Customer ID' 
ORDER BY total_rides DESC 
LIMIT 5;

/*Query 5. Get the number of rides cancelled by drivers due to personal and car-related issues:*/
SELECT COUNT(*) FROM Bengaluru_Ola_Booking_Data 
WHERE 'cancelled Rides by Driver' ='Personal & Car related issue';

/*Query 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:*/
SELECT MAX('Driver Ratings') as max_rating, MIN('Driver Ratings') as min_rating FROM Bengaluru_Ola_Booking_Data 
WHERE 'Vehicle Type' = 'Prime Sedan';

/*Query 7. Retrieve all rides where payment was made using UPI:*/
SELECT * FROM Bengaluru_Ola_Booking_Data WHERE 'Payment Method' = 'UPI';

/*Query 8. Find the average customer rating per vehicle type:*/
SELECT 'Vehicle Type', AVG('Customer Rating') as avg_customer_rating FROM Bengaluru_Ola_Booking_Data 
GROUP BY 'Vehicle Type';

/*Query 9. Calculate the total booking value of rides completed successfully:*/
SELECT SUM('Booking Value') as total_successful_value FROM Bengaluru_Ola_Booking_Data WHERE
'Booking Status' = 'Success';

/*Query 10. List all incomplete rides along with the reason:*/
SELECT 'Booking ID', 'Incomplete Rides Reason' FROM Bengaluru_Ola_Booking_Data WHERE 'Incomplete Rides'= 'Yes';

