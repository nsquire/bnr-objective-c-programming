//
//  main.c
//  BMICalc
//
//  Created by Nicholas Squire on 8/11/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>

// Here is the declaration of the struct Person
typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p)
{
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person person;
    person.weightInKilos = 81;
    person.heightInMeters = 1.83;
    printf("person weighs %i kilograms\n", person.weightInKilos);
    printf("person is %.2f meters tall\n", person.heightInMeters);
    float bmi = bodyMassIndex(person);
    printf("person has a BMI of %.2f", bmi);
    return 0;
}

