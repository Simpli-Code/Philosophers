# Philosophers

This project, is about learning the basics of threading a process and how to create threads and mutexes.

Consider the following in order to succeed this assignment:

• One or more philosophers sit at a round table.

• There is a large bowl of spaghetti in the middle of the table.

• The philosophers alternatively eat, think, or sleep.

• While they are eating, they are not thinking nor sleeping;

• while thinking, they are not eating nor sleeping; and of course, while sleeping, they are not eating nor thinking.

• There are also chopsticks on the table. There is only one single chopstick for each philosopher.

• Because serving and eating spaghetti with only one chopstick is very inconvenient, a philosopher takes their right and their left chopstick to eat, one in each hand.

• When a philosopher has finished eating, they put their chopsticks back on the table and
start sleeping. Once awake, they start thinking again. The simulation stops when a philosopher dies of starvation.

• Every philosopher needs to eat and should never starve.

• Philosophers don’t speak with each other.

• Philosophers don’t know if another philosopher is about to die.

• No need to say that philosophers should avoid dying!

# 🛠️ Usage

Requirements:

This program is written in C language for Linux distributions and Mac OS thus needs the clang compiler and some standard C libraries to run.

Compiling the program

```
$ make
```

Execute the program

```
$ ./philo 
```

# 📑 Index

@root

📁 inc: contains the program's headers.

📁 src: contains the source code of the program.

Makefile - contains instructions for compiling the program and testing it.

USEFUL RESOURCES:
