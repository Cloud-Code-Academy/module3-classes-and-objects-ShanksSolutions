/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Shanks
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        // Initialize a String with 'Hello, Salesforce!'
        String hello = 'Hello, Salesforce!'; 
        Integer len = hello.length();
        // Get the length of the String        
        String sub = hello.substring(0,5);
        // Get a substring of the String of the first 5 characters
        String lower = hello.toLowerCase();
        // Convert the String to lower case
        List<String> result = new List<String>();
        result.add(String.valueOf(len));
        result.add(sub);
        result.add(lower);
        // Return the list with the string data
        // In the first position add the string length
        // In the second position add the substring
        // In the third position add the string in lower case

        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
        List<Boolean> result = new List<Boolean>();

        if(input.startsWith('Sales')){
            result.add(true);
        } else {
            result.add(false);
        }
        // Check if the string starts with 'Sales'
        if(input.endsWith('Force')){
            result.add(true);
        } else {
            result.add(false);
        }
        // Check if the string ends with 'Force'
        if(input.contains('Awesome')){
            result.add(true);
        } else {
            result.add(false);
        }  
        // Check if the string contains 'Awesome'
        
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        List<String> sentenceList = sentence.split(' ');
        // Split the sentence into words
        Set<String> sentenceSet = new Set<String>();
        // Create a set to store the unique words
        for (Integer i =0; i < sentenceList.size(); i++){
            if(sentenceList.size() < i){
                sentenceSet.add(sentenceList[i] + ' ');
        } else {
            sentenceSet.add(sentenceList[i]);
        }
    }
        // Add each word to the set
        String finalSentence = String.join(sentenceSet, ' ');
        // Join the unique words back into a sentence

        // Return the sentence with unique words
        return finalSentence; // Replace null with the variable you used to store the result
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
        Integer result = 0;
        //String vowels = 'aeiou';
        Set<String> vowels = new Set<String>{'a', 'e', 'i', 'o', 'u'};
        List<String> lettersInStr = str.split('');
        str.toLowerCase();
        // Initialize the result Integer
        for (String phrase : lettersInStr) {
            if(vowels.contains(phrase)){
                result++;
            }
            // get individual characters from the string - hint use substring or split
            // check if the character is a vowel
            // if it is a vowel, increment the result Integer
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // The list of scientists' names
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};
        // The variable to store the concatenated string
        String scienceName = '';
        // Loop through the list of scientists' names
        for (String name : scientistNames) {
            if(!name.toLowerCase().contains('g')){
                continue;
            }
            // If the name doesn't contain the letter 'G', skip this iteration
            if(name.toLowerCase().contains('g')){
                scienceName += name +',';
            }
        }
            // Add the name to the result string, followed by a comma
            scienceName = scienceName.removeEnd(',');
        // Remove the last comma from the result string

        return scienceName; // Replace null with the variable you used to store the result
    }

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        // Square the input numbers using the Math.pow() function
        Double a2 = Math.pow(a, 2);
        Double b2 = Math.pow(b, 2);
        // Calculate the absolute difference using Math.abs() function
        Double result = Math.abs(a2) - Math.abs(b2);
        // Return the result
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        // Use Math class to generate number between 50 and 100
        Integer result = (Integer) (Math.random() * 50) + 50;
        // Return the random integer
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        // Get the todays date
        Date thisDay = Date.today();
        String result = thisDay.format();
        // Format the current date

        // Return the result
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        // Define a map of day of the week as a key and day number as the value
        // Monday = 1, Tuesday = 2, etc.
        Map<String, Integer> dayNum = new Map<String, Integer>();
        dayNum.put('Monday', 1);
        dayNum.put('Tuesday', 2);
        dayNum.put('Wednesday', 3);
        dayNum.put('Thursday', 4);
        dayNum.put('Friday', 5);
        dayNum.put('Saturday', 6);
        dayNum.put('Sunday', 7);
        // Get the day name using .format('EEEE');
        String dayNow = DateTime.now().format('EEEE');
        // Get the day number from the map using the day name
        String result = String.valueOf(dayNum.get(dayNow)); 
        // Return the result as a string 
        if (result == null){
            result = null;
        }
        return result; // Replace null with the variable you used to store the result
    }


    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
        Integer diff;
        if (d1 == null || d2 == null) {
            return null;
        } 
        if (d1.year() > d2.year()){
            diff = d1.year() - d2.year();
        }
        if (d2.year() > d1.year()) {
            diff = d2.year() - d1.year();
        }
        if (d1.year() == d2.year()) {
            diff = 0;
        }
        // Subtract the difference in years
        return diff; // Replace null with the variable you used to store the result
    }

    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
        // Declare three public instance variables - title, author, pages
        // title
        // author
        // pages
        public String title;
        public String author;
        public Integer pages;
        // Book constructor to initialize the title and author
        public Book(String title, String author) {
           this.title = title;
           this.author = author;
            // Initialize the title and author
        }
    
        // Method that returns the details of the book
        public String getBookDetails() {
            String details = 'Title: ' + title + ', Author: ' + author;
            // return A string containing the details of the book in the format "Title: <title>, Author: <author>"
            return details; // Replace null with the variable you used to store the result
        }
    }
    

    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        Book newBook = new Book('A Brief History of Time','Stephen Hawking' );

        // Was getting Controller not found or something when I didn't have the Book newBook commented out. 
        // Stopped at 40:40 of the 10/29 call. 
        // Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"

        // Call the getBookDetails method on the book object to get the details of the book
         String details = newBook.getBookDetails();
        // Return the details of the book
        return details; // Replace null with the variable you used to store the result
    }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
        // Create a list of books
        
        // Update the title and author of myBook1
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling'; 
        myBook1.pages = 352;
        // Update the pages for myBook1 to 352
        Book myBook2 = new Book('A Brief History of Time', 'Stephen Hawking');
        myBook2.pages = 256;
        // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"

        // Update the pages for A Brief History of Time to 256
        List<Book> bookList = new List<Book>();
        // Add the book to the list
        bookList.add(myBook1);
        bookList.add(myBook2);
        return bookList; // Replace null with the variable you used to store the result      
    }


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        // Constructor to initialize the name and age
        public Person(String name, Integer age){
            this.name = name;
            this.age = age;
        }
        // Method introduceYourself that returns the details of the person    
        public String introduceYourself(){
            String details = 'Hello, my name is ' + name + ' and I am ' + age + ' years old.';
            return details;
        }    
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."
       public String getName(){
            return this.name;
       }
        // Getter method that returns the name of the person
        public Integer getAge(){
            return this.age;
       }
        // Getter method that returns the age of the person
        public void setName(String name){
            this.name = name;
        }
        // Setter method that sets the name of the person
        public void setAge(Integer age){
            this.age = age;
        }
        // Setter method that sets the age of the person
        }
    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

     public static List<String> personDetails() {
        List<String> results = new List<String>();
        // Create a new instance of Person class
        Person p1 = new Person('John Doe', 28);
        // Name the person 'John Doe' and set the age to 28
        results.add(p1.introduceYourself());
        // Add the details of the person using the introduceYourself method
        results.add(p1.getName());
        // Get the name of the person using the getter method and add it to the list
        results.add(String.valueOf(p1.getAge()));
        // Get the age of the person using the getter method and add it to the list
        
        return results; // Replace null with the variable you used to store the result
    }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person p2 = new Person (name, age);

        // Return the new instance of the Person class
        return p2; // Replace null with the variable you used to store the result
    }

    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
        List<Person> persons = new List<Person>();
        // Loop through each name in the provided list of names
        for(String name : names){
            Person p3 = new Person(name, age);
            // Create a new Person object for each name
            persons.add(p3);
            // Add the new Person object to the list of Person objects
        }
        // Return the list of Person objects
        return persons; // Replace null with the variable you used to store the result
    
}


    /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        if (person1.getAge() > person2.getAge()) {
            return person1;
        } else if (person1.getAge() < person2.getAge()) {
            return person2;
        } else  {
            return person1;
        } 
        //return person1; // Replace null with the variable you used to store the result
        }
    }