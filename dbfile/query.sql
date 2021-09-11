use mmp;
select * from users;

select * from course;

select * from admin;

select * from ARTICLE;

select * from progress;

select * from questions;

select * from feedback;

insert into questions(C_id,A_id,question,optionA,optionB,optionC,optionD,answer) values(00001,00001,'developer of this system','vivek','mrigesh','kunal','hemant','A');
insert into questions(C_id,A_id,question,optionA,optionB,optionC,optionD,answer) values(00001,00001,'what is the right syntax of if statement?','if{//statements }','if{//statement }(condition)','if(condition){//statement}','none of these','C');

insert into admin(A_name,A_username,A_email,A_password) values('vivek','vivek123','vivekpatil340440@gmail.com','1234');

 insert into course(C_name,C_intro,C_about,C_topics) values ('c++','C++ is used by programmers to create computer software. It is used to create general systems software, <br/> drivers for various computer devices, software for servers and software for specific applications and also widely used in the creation of video games.<br/>
C++ is used by many programmers of different types and coming from different fields. C++ is mostly used to write device driver programs, system software, and applications that depend on direct hardware manipulation under real-time constraints.<br/> It is also used to teach the basics of object-oriented features because it is simple and is also used in the fields of research.<br/> Also, many primary user interfaces and system files of Windows and Macintosh are written using C++. So, C++ is really a popular, strong and frequently used programming language of this modern programming era.','In this course of c++ you will learn about funcnality of c++ language and much more','flow control,Declaration & Assignments,Arrays & Strings,C++ Object Oriented');

insert into article(C_name,A_heading,A_description,A_main,A_syntax,A_eg,A_output,A_like,A_dislike) values('1','C++ if Statement','In this article, you will learn to create decision making statements in a C++ program using different forms of if..else statement.','The if statement evaluates the test expression inside parenthesis.<br/>If test expression is evaluated to true, statements inside the body of if is executed.<br/>If test expression is evaluated to false, statements inside the body of if is skipped.','<h1>SYNTAX of IF statement</h1><p class="lead"><br/>if(condition){<br/>//code<br/>}</p>','<h1>EXAMPLE of IF statement</h1><p class="lead">// Program to print positive number entered by the user<br/>#include <iostream.h>;<br/>int number=5;<br/>void main(){<br/>int number;<br/>cout<<"enter number:"<<endl;<br/>cin>>number;<br/>if(number>0){<br/>cout<<"entered number is positive."<<endl;<br/>}cout<<"this statement always executed because it is outside of if statement";<br/>}</p>','<h1>OUTPUT</h1><p class="lead"><br/>enter number:16<br/>entered number is positive.<br/>this statement always executed because it is outside of if statement</p>',7,1);

update article 
set C_name='cpp' where A_id=3;


insert into article(C_name,A_heading,A_description,A_main,A_syntax,A_eg,A_output,A_like,A_dislike) values('cpp','C++ switch..case Statement','In this article, you will learn to create a switch statement in C++ programming (with an example).','The ladder if..else..if statement allows you to execute a block code among many alternatives. <br/>If you are checking on the value of a single variable in ladder if..else..if, <br/>it is better to use switch statement.  <br/>The switch statement is often faster than if...else (not always). Also, the syntax of switch statement is cleaner and easier to understand.<br/><br/>When a case constant is found that matches the switch expression, control of the program passes to the block of code associated with that case.<br/>In the above pseudocode, suppose the value of n is equal to constant2. The compiler will execute the block of code associated with the case statement until the end of switch block, or until the break statement is encountered.<br/>The break statement is used to prevent the code running into the next case.','<h1>C++ switch...case syntax</h1>switch (n) ​{<br/> case constant1:<br/>// code to be executed if n is equal to constant1;<br/>break;<br/><br/>case constant2:<br/>// code to be executed if n is equal to constant2;<br/>break;<br/>.<br/>.<br/>default:<br/>//code to be executed if n does not match any constant<br/>}','<h1>Example: C++ switch Statement</h1>// Program to built a simple calculator using switch Statement<br/>#include <iostream.h><br/>void main(){<br/>int i;<br/>cout<<"enter number eg 1 or 2";<br/> cin>>i;<br/>switch(i){<br/>case 1:<br/> cout<<"number 1 entered";<br/> break;<br/>case 2:<br/> cout<<"number 2 entered";<br/> break;<br/>default:<br/> cout<<"error:";<br/> break;<br/>}<br/> }','<h1>Output</h1>enter number eg 1 or 2 <br/> 1 <br/>number 1 entered',7,1);

insert into article(C_name,A_heading,A_description,A_main,A_syntax,A_eg,A_output,A_like,A_dislike) values('cpp','C++ for Loop','Loops are used in programming to repeat a specific block of code. In this tutorial, you will learn to create a for loop in C++ programming (with examples).','Loops are used in programming to repeat a specific block until some end condition is met. There are three type of loops in C++ programming:<br/>for Loop<br/>while Loop<br/>do while loop<br/>','<h1>C++ for loop syntax</h1>​for(initializationStatement; testExpression; updateStatement) {
    // codes 
}','<h1>Example: for loop</h1>#include <iostream>
using namespace std;

int main() 
{
    int i, n, factorial = 1;

    cout << "Enter a positive integer: ";
    cin >> n;

    for (i = 1; i <= n; ++i) {
        factorial *= i;   // factorial = factorial * i;
    }

    cout<< "Factorial of "<<n<<" = "<<factorial;
    return 0;
}','<h1>output</h1>Enter a positive integer: 5
Factorial of 5 = 120',7,1);

insert into downloads values(1,1,'c++ library','PDF','you can learn from here','D:\eclips\MMP\WebContent\source\DS286.AUG2016.Lab2_.cpp_tutorial.pdf');


select * from downloads;
DELETE FROM progress
WHERE P_id = 16;

DELETE FROM questions
WHERE id = 1;

alter table progress add foreign key (U_id) references users(U_id);

update article 
set A_id='0000000002' where A_id=0000000004;

insert into progress(U_id,`c++`,java,phython,js,cs,php) values(1,1,1,1,1,1,1);

UPDATE progress SET `cpp` = CONCAT(`cpp`,', ''003' ) WHERE U_id=1;

UPDATE progress SET cpp=111 WHERE U_id=1;




