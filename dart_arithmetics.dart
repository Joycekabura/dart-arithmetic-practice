/** PROBLEM 1 */
/**
Challenge Description: Variable Swap

Write a Dart program that swaps the values of two variables 
without using a third variable.

Requirements:

Declare two variables, var1 and var2, and assign any initial values to them.
Swap the values of var1 and var2 without using a third variable.
Print the values of var1 and var2 before and after the swap to verify the results. 

Your output should be: "Before the Swap, var1 was {var!} and var2 was {var2} after the swap var1 is {var1} and var2 is {var2}"
use any for of string concatenation technique.

eg Before Swapping : 
var1 = 10; var2 =5
After Swapping : 
var1 = 5 ; var2 = 10;
*/
void main() {
  int var1 = 30;
  int var2 = 50;

  print('Before the swap var1=$var1, var2=$var2');

  (var1, var2) = (var2, var1);

  print('After the swap var1= $var1, var2= $var2');

  /** PROBLEM 2 */
  /** 
CHALLENGE Description: Sales Report

Imagine you are working for a company that sells products in 
different countries. You have been given a list of sales data in 
the form of a list of maps. Each map represents the sales data for 
a specific product and contains the following information:

"product": the name of the product (string).
"price": the price of the product (double).
"quantity": the quantity sold (int).
"country": the country where the product was sold (string).
Your task is to calculate and display the total sales and average price per product for each country. Write a Dart program that takes a list of sales data as input and outputs the total sales and average price per product for each country.
List<Map<String, dynamic>> salesData = [
  {"product": "A", "price": 10.0, "quantity": 5, "country": "USA"},
  {"product": "B", "price": 8.0, "quantity": 3, "country": "Canada"},
  {"product": "A", "price": 10.0, "quantity": 7, "country": "USA"}, 
];
*/
  List<Map<String, dynamic>> salesData = [
    {"product": "A", "price": 10.0, "quantity": 5, "country": "USA"},
    {"product": "B", "price": 8.0, "quantity": 3, "country": "Canada"},
    {"product": "A", "price": 10.0, "quantity": 7, "country": "USA"},
  ];

  Map<String, double> totalSalesPerCountry = {};
  Map<String, List<double>> pricesPerCountry = {};

  for (var sale in salesData) {
    String country = sale["country"];
    double price = sale["price"];
    int quantity = sale["quantity"];

    double totalSale = price * quantity;

    totalSalesPerCountry[country] =
        (totalSalesPerCountry[country] ?? 0) + totalSale;

    // Store prices for average calculation
    pricesPerCountry.putIfAbsent(country, () => []);
    pricesPerCountry[country]!.add(price);
  }

  // Step 3: Display total sales & calculate average price per product
  for (var country in totalSalesPerCountry.keys) {
    double totalSales = totalSalesPerCountry[country]!;
    List<double> prices = pricesPerCountry[country]!;
    double averagePrice = prices.reduce((a, b) => a + b) / prices.length;

    print("Country: $country");
    print("Total Sales: \$${totalSales.toStringAsFixed(2)}");
    print("Average Price per Product: \$${averagePrice.toStringAsFixed(2)}\n");
  }

  /** PROBLEM 3 */

  /**
  CHALLENGE: 
  hvaing the lists below: 
  List<Map<String, dynamic>> salesData = [
  {"product": "A", "price": 10.0, "quantity": 5, "country": "USA"},
  {"product": "B", "price": 8.0, "quantity": 3, "country": "Canada"},
  {"product": "A", "price": 10.0, "quantity": 7, "country": "USA"}, 

  loop through each list and printout the following: 
  1. product
  2. country
  3. price

  calculate the total money based on the price and quantity of the whole list;

];
*/
  double totalMoney = 0.0;

  for (int i = 0; i < salesData.length; i++) {
    print(
      "Product: ${salesData[i]["product"]}, Country: ${salesData[i]["country"]}, Price: ${salesData[i]["price"]}",
    );

    totalMoney += salesData[i]["price"] * salesData[i]["quantity"];
  }

  print("Total Money: \$${totalMoney}");
}
