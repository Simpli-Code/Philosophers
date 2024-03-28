# Philosophers

This project, is about learning the basics of threading a process and how to create threads and mutexes.

the following has to be considered to succeed this Assignment:

• One or more philosophers sit at a round table.

• There is a large bowl of spaghetti in the middle of the table.

• The philosophers alternatively eat, think, or sleep.

• While they are eating, they are not thinking nor sleeping;

• while thinking, they are not eating nor sleeping; and of course, while sleeping, they are not eating nor thinking.

• There are also chopsticks on the table. There is only one single chopstick for each philosopher.

• Because serving and eating spaghetti with only one chopstick is very inconvenient,
  
  a philosopher takes their right and their left chopstick to eat, one in each hand.

• When a philosopher has finished eating, they put their chopsticks back on the table and
start sleeping.

Once awake, they start thinking again. The simulation stops when a philosopher dies of starvation.

• Every philosopher needs to eat and should never starve.

• Philosophers don’t speak with each other.

• Philosophers don’t know if another philosopher is about to die.

• No need to say that philosophers should avoid dying!

• Global variables are forbidden!

• The program should take the following arguments:

    Number_of_philosophers (Each Philo has one Chopstick)

    Time_to_die (in milliseconds)
      If a philosopher didn’t start eating time_to_die milliseconds since the beginning
      of their last meal or the beginning of the simulation, they die.
      
    Time_to_eat (in milliseconds)
      The time it takes for a philosopher to eat. During that time, they will need to hold two Chopsticks.
      
    Time_to_sleep (in milliseconds)
      The time a philosopher will spend sleeping.
      
    Number_of_times_each_philosopher_must_eat
      If all philosophers have eaten at least number_of_times_each_philosopher_must_eat times,
      the simulation stops. If not specified, the simulation stops when a philosopher dies.

• Each philosopher has a number ranging from 1 to number_of_philosophers.

• Philosopher number 1 sits next to philosopher number number_of_philosophers.
Any other philosopher number N sits between philosopher number N - 1 and philoso-
pher number N + 1.

About the logs of the program:

• Any state change of a philosopher must be formatted as follows:

◦ timestamp_in_ms X has taken a Chopstick

◦ timestamp_in_ms X is eating

◦ timestamp_in_ms X is sleeping

◦ timestamp_in_ms X is thinking

◦ timestamp_in_ms X died

Replace timestamp_in_ms with the current timestamp in milliseconds
and X with the philosopher number.

• A displayed state message should not be mixed up with another message.

• A message announcing a philosopher died should be displayed no more than 10 ms
after the actual death of the philosopher.

• Again, philosophers should avoid dying!

The program must not have any data races.

The specific rules for the mandatory part are:

• Each philosopher should be a thread.

• There is one chopstick between each pair of philosophers. Therefore, if there are several
philosophers, each philosopher has one Chopstick on their left side and one Chopstick on their right
side. If there is only one philosopher, there should be only one Chopstick on the table.

• To prevent philosophers from duplicating Chopsticks, you should protect the Chopsticks state
with a mutex for each of them.

# 🛠️ Usage

Requirements:

This program is written in C language for Linux distributions and Mac OS thus needs the clang compiler and some standard C libraries to run.

Compiling the program

```
$ make
```

Execute the program

```
$ ./philo 5 800 200 200 7
```

# 📑 Index

@root

📁 inc: contains the program's headers.

📁 src: contains the source code of the program.

Makefile - contains instructions for compiling the program and testing it.

Note: This program covers only mandatory requirements of the project's subject.
