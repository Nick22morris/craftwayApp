//
//  MenuModel.swift
//  Kraftway
//
//  Created by Nick Morris on 9/18/21.
//

import Foundation


let starters = [
    foodDataType(name: "CW CHARCUTERIE", price: "16", description: "Seasonal Cheeses, Meats, Pickled Vegetables, Fig Jam, Parmesan Lavosh", image: "bcchips"),
    foodDataType(name: "CALAMARI", price: "13", description: "Flash Fried, Lemon Caper Aioli, Sriracha Sauce", image: "bacon"),
    foodDataType(name: "CRAB STUFFED MUSHROOMS", price: "13", description: "Baby Bella Caps, Lump Crab, Gruyère Cheese", image: "bcchips"),
    foodDataType(name: "CHICKEN LOLLIPOPS", price: "12", description: "Tossed in a Smoked Peppercorn Sauce", image: "bacon"),
    foodDataType(name: "FLASH FRIED ASPARAGUS", price: "10", description: "Panko Crusted with Lemon Caper Aioli", image: "bcchips"),
    foodDataType(name: "BLUE CHEESE CHIPS", price: "10", description: "Blue Cheese, Smoked Bacon, Chives", image: "bcchips"),
    foodDataType(name: "Candied Bacon", price: "8", description: "Thick Cut, Maple Syrup, Ancho Chili, Red Pepper Flakes", image: "bacon"),
    foodDataType(name: "CHICKEN TENDERS", price: "9", description: "Hand Breaded, served with Roasted Jalapeño Ranch and Honey Mustard", image: "bacon"),
    
]
let soups = [
    foodDataType(name: "FRENCH ONION SOUP", price: "10", description: "Gruyère Cheese, topped with Puff Pastry and Baked", image: "bacon"),
    foodDataType(name: "ROASTED TOMATO SOUP", price: "7", description: "Parmesan Lavosh", image: "bacon"),
    foodDataType(name: "BLACKENED CHICKEN CAESAR", price: "14", description: "Crisp Romaine, Parmesan Croutons, House Made Dressing", image: "bacon"),
    foodDataType(name: "SPINACH SALAD WITH GRILLED VERLASSO SALMON", price: "17", description: "Smoked Bacon, Mushrooms, Tomatoes, Toasted Pistachios with Warm Honey Mustard Dressing", image: "bacon"),
    foodDataType(name: "SUPER FOOD SALAD WITH AHI TUNA", price: "17", description: "Organic Greens, Pickled Beets, Cucumbers, Marinated Tomatoes with Citrus Vinaigrette", image: "bacon"),
    foodDataType(name: "CHOPPED WEDGE SALAD WITH TENDERLOIN", price: "17", description: "Chopped Iceberg, Blue Cheese Crumbles, Smoked Bacon, Tomatoes, Red Onions, BC Dressing", image: "bacon"),
]
let sandwiches = [
    foodDataType(name: "FRENCH DIP", price: "18", description: "Thinly Sliced Prime Rib tossed in Au Jus, Smoked Provolone with Horseradish Sauce on Baguette", image: "bacon"),
    foodDataType(name: "GRILLED SALMON BLT", price: "17", description: "Candied Bacon, Lettuce, Tomatoes, Lemon Caper Aioli, on Texas Toast", image: "bacon"),
    foodDataType(name: "CRISPY FISH SANDWICH", price: "16", description: "Fried Whitefish, Tartar Sauce, Lettuce, Tomatoes, Southern Bun", image: "bacon"),
    foodDataType(name: "PASTRAMI REUBEN", price: "17", description: "House-smoked Pastrami, Sauerkraut, Gruyère, Russian Dressing on Rye", image: "bacon"),
    foodDataType(name: "CHICKEN AND FIG SANDWICH", price: "14", description: "Grilled with Fig Jam, Goat Cheese, Red Onions, Avocado Mayo and Arugula on Texas Toast", image: "bacon"),
    foodDataType(name: "CHICKEN CLUB", price: "14", description: "Fried Chicken with Smoked Bacon, Lettuce, Tomato, Roasted Jalapeño Ranch", image: "bacon"),
    foodDataType(name: "GRILLED CHEESE", price: "13", description: "American, Cheddar and Provolone, Texas Toast with Roasted Tomato Soup", image: "bacon"),
    foodDataType(name: "CHICKEN CLUB", price: "13", description: "Caramelized Mustard, Cheddar, Sautéed Onions, Lettuce, Tomato, Pickles, Russian Dressing, Southern Bun", image: "bacon"),
]
let entrees = [
    foodDataType(name: "FILET", price: "36", description: "8oz, Seared in Duck Fat, Demi-Glace, served with Roasted Garlic Whipped Potatoes", image: "bacon"),
    foodDataType(name: "RIBEYE", price: "36", description: "16oz Center Cut, Sauteed Mushrooms, Roasted Garlic Whipped Potatoes", image: "bacon"),
    foodDataType(name: "DOUBLE BONE-IN PORK CHOP", price: "26", description: "Ancho Maple Glaze with Parmesan Risotto", image: "bacon"),
    foodDataType(name: "LAKE SUPERIOR WHITEFISH", price: "25", description: "Pistachio Crusted, Pan Fried, Ancho Maple Drizzle with Grilled Broccolini", image: "bacon"),
    foodDataType(name: "AHI TUNA", price: "26", description: "Toasted Black Sesame Seeds, Soy Dipping Sauce, served with Grilled Asparagus", image: "bacon"),
    foodDataType(name: "GRILLED VERLASSO SALMON", price: "25", description: "Grilled and topped with Crab Butter, served with Grilled Broccolini", image: "bacon"),
    foodDataType(name: "FIVE SPICE BABY BACK RIBS", price: "18", description: "Five Spice Rub, Asian BBQ Sauce, served with Craft Mac-n-Cheese", image: "bacon"),
    foodDataType(name: "CHICKEN MILANESE", price: "17", description: "Panko Crust, Arugula, Citrus Tomatoes, served with Grilled Asparagus", image: "bacon"),
]
let sides = [
    foodDataType(name: "CAESAR SALAD", price: "5", description: "", image: "bacon"),
    foodDataType(name: "CRAFT MAC-N-CHEESE", price: "5", description: "", image: "bacon"),
    foodDataType(name: "STEAK FRIES", price: "5", description: "", image: "bacon"),
    foodDataType(name: "CW HOUSE SALAD", price: "5", description: "", image: "bacon"),
    foodDataType(name: "GRILLED ASPARAGUS", price: "5", description: "", image: "bacon"),
    foodDataType(name: "GRILLED BROCCOLINI", price: "5", description: "", image: "bacon"),
    foodDataType(name: "SIDE WEDGE", price: "5", description: "", image: "bacon"),
    foodDataType(name: "ROASTED GARLIC WHIPPED POTATOES", price: "5", description: "", image: "bacon"),
    foodDataType(name: "SEASONAL SIDE", price: "5", description: "", image: "bacon"),
]

struct foodDataType {
    let name: String
    let price: String
    let description: String
    let image: String
}
class MenuFoods: ObservableObject {
    @Published var q = [
        foodDataType(name: "CW CHARCUTERIE", price: "16", description: "Seasonal Cheeses, Meats, Pickled Vegetables, Fig Jam, Parmesan Lavosh", image: "bcchips"),
        foodDataType(name: "CALAMARI", price: "13", description: "Flash Fried, Lemon Caper Aioli, Sriracha Sauce", image: "bacon"),
        foodDataType(name: "CRAB STUFFED MUSHROOMS", price: "13", description: "Baby Bella Caps, Lump Crab, Gruyère Cheese", image: "bcchips"),
        foodDataType(name: "CHICKEN LOLLIPOPS", price: "12", description: "Tossed in a Smoked Peppercorn Sauce", image: "bacon"),
        foodDataType(name: "FLASH FRIED ASPARAGUS", price: "10", description: "Panko Crusted with Lemon Caper Aioli", image: "bcchips"),
        foodDataType(name: "BLUE CHEESE CHIPS", price: "10", description: "Blue Cheese, Smoked Bacon, Chives", image: "bcchips"),
        foodDataType(name: "Candied Bacon", price: "8", description: "Thick Cut, Maple Syrup, Ancho Chili, Red Pepper Flakes", image: "bacon"),
        foodDataType(name: "CHICKEN TENDERS", price: "9", description: "Hand Breaded, served with Roasted Jalapeño Ranch and Honey Mustard", image: "bacon"),
    ]
    func changeQ(val: [foodDataType]) {
        q = val
    }
}
struct topperType {
    let name: String
    let val : [foodDataType]
}
let things = [
    topperType(name: "Starters", val: starters),
    topperType(name: "Soups and Salads", val: soups),
    topperType(name: "Sandwiches", val: sandwiches),
    topperType(name: "Entrées", val: entrees),
    topperType(name: "Sides", val: sides),
]
