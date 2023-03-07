       ctl-opt options(*SRCSTMT:*NODEBUGIO);
       
       init();
       process();
       terminate();
       return;

       dcl-proc init;
         dsply 'I am starting the program with this init call';
       end-proc;

       dcl-proc terminate;
         dsply 'I am shutting down the program right now';
         *inlr = *on;
       end-proc;

       dcl-proc process;
         dow 1=1;
           dsply 'I am doing something else here';
         enddo;
       end-proc;