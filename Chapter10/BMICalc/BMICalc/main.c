//
//  main.c
//  BMICalc
//
//  Created by Nicholas Squire on 8/11/13.
//  Copyright (c) 2013 Nicholas Squire. All rights reserved.
//

#include <stdio.h>
#include <time.h>

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
    printf("person has a BMI of %.2f\n", bmi);
    
    // Challenge from chapter 10
    long secondsSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    
    long timeInFourMillionSeconds = secondsSince1970 + 4000000;
    struct tm future;
    localtime_r(&timeInFourMillionSeconds, &future);
    printf("The time and date in 4,000,000 seconds is %d:%d:%d %d-%d-20%d \n", future.tm_hour, future.tm_min, future.tm_sec, future.tm_mon + 1, future.tm_mday, future.tm_year - 100);
    
    return 0;
}

