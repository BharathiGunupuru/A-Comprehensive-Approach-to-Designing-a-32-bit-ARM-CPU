# A-Comprehensive-Approach-to-Designing-a-32-bit-ARM-CPU
This project focuses on the design and implementation of a 32-bit ARM-like CPU architecture, emphasizing efficient processing and scalability. The CPU is designed with an optimized instruction set and memory management, aiming to provide a robust platform for embedded applications and general-purpose computing
# CPUs Instruction set
Our designed CPU can handle the following commands.

Data Processing: ADD SUB AND ORR

Memory Operation: STR and LDR

Branch: B
Also, cover all the conditional mnemonics from ARM LRM, as shown in the snapshot below.
![pasted image 0](https://github.com/user-attachments/assets/c8701673-46b7-4105-9582-87e266d66d41)

# Micro Architecture top view (rough) :

# Testing:
To test a CPU working we need to have an extensive code which can examine each and every instruction covered in this CPU design , and then if that code is being executed by our CPU with the required final result we can say that CPU passed the initial test

To test our design, we have taken reference test Code from Digital Design and Computer Architecture ARM edition by Harris.

# Test Code :
![389281564-6597a10c-7191-4b00-bbf0-d3e907aeeedd](https://github.com/user-attachments/assets/0031ee2f-001b-4609-a25a-e27fa6eda8a7)
