
// #include "Push_Button.h"
// #include "Port.h"


// #define NUMBER_OF_SAMPLE    (***)       // fill this line
// #define NUMBER_OF_PUSH_BUTTONS  (***)   // fill this line

// #define PB_PRESSED_VOLTAGE  (0)
// #define PB_RELEASED_VOLTAGE  (1)


// typedef struct
// {
//     unsigned char samples[NUMBER_OF_SAMPLE];
//     tPB_State state;
// }tPB_Info;

// static tPB_Info pb_info[NUMBER_OF_PUSH_BUTTONS];


// void PB_Init(tPB pb, tPB_State initial_state)
// {
//     /* Initialize hw pins */
// switch (pb)
// {
// case PB_PLUS:
//     GPIO_InitPortPin(***, ***, GPIO_IN); // port, pin, direction
//     break;
// case PB_RESET:
//     GPIO_InitPortPin(***, ***, GPIO_IN); // port, pin, direction
//     break;
// // case PB_UNUSED_1:
// //     GPIO_InitPortPin(***, ***, GPIO_IN); // port, pin, direction
// //     break;
// // case PB_UNUSED_2:
// //     GPIO_InitPortPin(***, ***, GPIO_IN); // port, pin, direction
// //     break;
// default:
//     /* Should not be here */
//     break;
// }

// /* Initialize state */
// pb_info[pb].state = ***; // fill this line

// /* Initialize samples */
// switch (initial_state)
// {
// case PB_RELEASED:
// case PB_PRE_RELEASED:
//     pb_info[pb].samples[0] = ***; // fill this line
//     pb_info[pb].samples[1] = ***; // fill this line
//     break;
// case PB_PRESSED:
// case PB_PRE_PRESSED:
//     pb_info[pb].samples[0] = ***; // fill this line
//     pb_info[pb].samples[1] = ***; // fill this line
//     break;
// }
// }

// void PB_Update(void)
// {
//     tPB current_button = PB_PLUS;
//     for (current_button = PB_PLUS; current_button <= PB_UNUSED_2; current_button++)
//     {
//         /* Update samples */
//         pb_info[current_button].samples[0] = ***; // fill this line

//         switch (current_button)
//         {
//         case PB_PLUS:
//             pb_info[current_button].samples[1] = ***; // fill this line
//             break;
//         case PB_RESET:
//             pb_info[current_button].samples[1] = ***; // fill this line
//             break;
//         case PB_UNUSED_1:
//             pb_info[current_button].samples[1] = ***; // fill this line
//             break;
//         case PB_UNUSED_2:
//             pb_info[current_button].samples[1] = ***; // fill this line
//             break;
//         default:
//             /* Should not be here */
//             break;
//         }

//         /* Update state */
//         switch (pb_info[current_button].state)
//         {
//         case PB_RELEASED:
//             if (***) // fill this line
//             {
//                 pb_info[current_button].state = ***; // fill this line
//             }
//             break;
//         case PB_PRE_PRESSED:
//             if (***) // fill this line
//             {
//                 pb_info[current_button].state = ***; // fill this line
//             }
//             break;
//         case PB_PRESSED:
//             if ((pb_info[current_button].samples[0] == ***)&& // fill this line
//                 (pb_info[current_button].samples[1] == **))   // fill this line
//             {
//                 pb_info[current_button].state = ***; // fill this line
//             }
//             break;
//         case PB_PRE_RELEASED:
//             if (pb_info[current_button].samples[1] == ***) // fill this line
//             {
//                 pb_info[current_button].state = ***; // fill this line
//             }
//             break;
//             break;
//         default:
//             /* Should not be here */
//             break;
//         }
//     }
// }

// tPB_State PB_GetState(tPB pb)
// {
//     tPB_State ret = PB_RELEASED;

//     ret = pb_info[pb].state;

//     return ret;
// }
