# L2-Assignment2

Q1: What is PostgreSQL?
Ans: postgreSql হলো একটা ডেটাবেস সফটওয়্যার, যার মাধ্যমে একজন ইউজার খুব সহজে ডেটা সংরক্ষণ করতে পারে, খুঁজে পেতে পারে, পরিবর্তন করতে পারে বা মুছে ফেলতেও পারে।

Q2:What is the purpose of a database schema in PostgreSQL?
Ans: postgreql এ ডেটাবেস স্কিমার কাজ হলো ডেটাগুলো সুন্দরভাবে গুছিয়ে রাখা। একটা ডেটাবেসের ভিতরে অনেক রকম টেবিল, ভিউ, ফাংশন থাকে, আর এসব যাতে এলোমেলো না হয়, এজন্য স্কিমা ব্যবহার করা হয়। স্কিমা অনেকটা কম্পিউটারের ফোল্ডারের মতো, যেখানে আলাদা আলাদা ফোল্ডারে ফাইল রাখে যাতে সবকিছু সুশৃঙ্খল থাকে। 

Q3:Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Ans: Primary key মানে হলো এমন একটা কলাম বা ফিল্ড, যা প্রতিটি রেকর্ডকে আলাদা করে চেনে। এটা ইউনিক হয় এবং কখনো ফাঁকা (null) থাকে না। ধরো, আমি যদি একটা student টেবিল বানাই, তাহলে student_id কে primary key রাখলে প্রতিটি ছাত্রের জন্য আলাদা আইডি থাকবে, যেটা দিয়ে সহজেই তাকে খুঁজে পাওয়া যায়।
Foreign key মূলত দুইটা টেবিলের মধ্যে সম্পর্ক তৈরি করার জন্য ব্যবহার হয়। এটা এমন একটা কলাম, যা অন্য টেবিলের primary key এর ওপর নির্ভর করে। ধরো, আমার একটা results নামের টেবিল আছে যেখানে ছাত্রদের নাম্বার রাখা হয়। আমি চাই প্রতিটি নাম্বার সেই ছাত্রের সঙ্গে যুক্ত থাকুক যাকে student টেবিলে রাখা হয়েছে। তখন results টেবিলে student_id নামে একটা foreign key ব্যবহার করবো, যা student টেবিলের primary key এর রেফারেন্স।
এভাবে primary key ডেটাকে ইউনিক রাখে, আর foreign key বিভিন্ন টেবিলের মধ্যে সম্পর্ক গড়ে ডেটাবেজকে আরও গুছিয়ে তোলে।

Q4:What is the difference between the varchar and  char data types?
ans: varchar  আর char  দুটোই লেখা রাখার জন্য , কিন্তু একটু আলাদা। char  হলো ফিক্সড সাইজের , suppose,  char(5 ) দিলে সবসময় পাঁচটা জায়গা নেবে, যদি লেখাটা ছোট হয়, তাহলে বাকিটা স্পেস দিয়ে পূরণ হবে। আর VARCHAR হলো ভ্যারিয়েবল সাইজের, যেখানে লেখার দৈর্ঘ্য অনুযায়ী জায়গা নেয়, বেশি ফাঁকা জায়গা হয় না।
 যদি ডাটা সবসময় একই সাইজের হয়,char  ঠিক আছে, আর যদি লেখার দৈর্ঘ্য পরিবর্তন হয়, তাহলে varchar ভালো।



Q5: purpose of the where clause in a select statement.
Ans: where ব্যবহার করা হয় যাতে আমরা টেবিল থেকে  শুধু  দরকারি ডেটাগুলো বের করতে পারি।  যেমন , একটা বড় টেবিলে অনেক রেকর্ড আছে। কিন্তু আমার দরকার শুধু যেগুলোর বয়স  20  বছরের বেশি ,  তখন আমি   Where age > 20 লিখে সেটা আলাদা করে নিতে পারি। মানে, Where দিয়ে বলা হয়, এই শর্ত যেগুলার সাথে মিলে, শুধু সেগুলা দাও ।




