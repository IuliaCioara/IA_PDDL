(define (domain CoffeeShop)
 (:requirements :strips :typing :action-costs)
 (:predicates (openCoffeeShop)
 	      (Client ?x)
 	      (Full)
 	      (Comanda ?x)
 	      (Plata ?x)
 	        (testR ?x)
 	        (testE ?x)
 	        (testLB ?x)
 	        (testC ?x)
 	        (testL ?x)
 	        (testFW ?x)
 	        (testCM ?x)
 	        (testF ?x)
 	        (testCash ?x)
 	        (testCard ?x)
 	      	(modulCash ?x)
 	      	(modulCard ?x)
 	      (AlegeCafea ?x)
 	       (Ristretto ?x)
 	       (Espresso ?x)
 	       (LongBlack ?x)
 	       (Cappuccino ?x)
 	       (Latte ?x)
 	       (FlatWhite ?x)
 	       (CaramelMacchiato ?x)
 	       (Frappe ?x)
 	       (x)
 )
 
 (:function (total-cost))
 
 (:action openCoffeeShop
 		:parameters ()
 		:precondition (not (openCoffeeShop))
 		:effect (openCoffeShop)
 )
 
 (:action newClient
 		:parameters (?x)
 		:precondition (and (openCoffeeShop) (not(Client ?x))     (not(Full)))
 		:effect (and (Client ?x) (Full))
 )
 
 (:action plataCash
 		:parameters (?x)
 		:precondition (and (openCoffeeShop) (testCash ?x) (Client ?x))
 		:effect (and (modulCash ?x) (increase (total-cost) 1))
 )
 
 (:action plataCard
 		:parameters (?x)
 		:precondition (and (openCoffeeShop) (testCard ?x) (Client ?x))
 		:effect (and (modulCard ?x) (increase (total-cost) 1))
 )
 
 (:action chooseRistretto
 		:parameters (?x)
 		:precondition (and (openCoffee) (testR ?x) (Client ?x))
 		:effect (Ristretto ?x)
 ) 
 
 (:action chooseEspresso
 		:parameters (?x)
 		:precondition (and (openCoffee) (testE ?x) (Client ?x))
 		:effect (Espresso ?x)
 ) 
 
 (:action chooseLongBlack
 		:parameters (?x)
 		:precondition (and (openCoffee) (testLB ?x) (Client ?x))
 		:effect (LongBlack ?x)
 ) 
 
 (:action chooseCappuccino
 		:parameters (?x)
 		:precondition (and (openCoffee) (testC ?x) (Client ?x))
 		:effect (Cappuccino ?x)
 ) 
 
 (:action chooseLatte
 		:parameters (?x)
 		:precondition (and (openCoffee) (testL ?x) (Client ?x))
 		:effect (Latte ?x)
 ) 
 
 (:action chooseFlatWhite
 		:parameters (?x)
 		:precondition (and (openCoffee) (testFW ?x) (Client ?x))
 		:effect (FlatWhite ?x)
 ) 
 
 (:action chooseCaramelMacchiato
 		:parameters (?x)
 		:precondition (and (openCoffee) (testCM ?x) (Client ?x))
 		:effect (CaramelMacchiato ?x)
 ) 
 
 (:action chooseFrappe
 		:parameters (?x)
 		:precondition (and (openCoffee) (testF ?x) (Client ?x))
 		:effect (Frappe ?x)
 ) 
 
 	      
