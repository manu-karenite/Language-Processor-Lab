#include <stdio.h>
#include <string.h>
#include <stdbool.h>
int q2(int position, char s [], int len);
int q3(int position, char s [], int len);
int q0q3(int position, char s [], int len);
int q1q2(int position, char s [], int len);
int q3(int position, char s [], int len);

int q2(int position, char s [], int len){
printf("Visiting State q2\n");
	//final state
	if (position>=len){
		return -1;}
	if (s[position]=='b'){
		return q3(position+1,s,len);}

	return -1;

}

int q3(int position, char s [], int len){
printf("Visiting State q3\n");
	//final state
	if (position>=len){
		return 1;}
	if (s[position]=='b'){
		return q0q3(position+1,s,len);}
	if (s[position]=='a'){
		return q1q2(position+1,s,len);}
	return -1;

}

int q0q3(int position, char s [], int len){
printf("Visiting State q0q3\n");
	//final state
	if (position>=len){
		return 1;}
	if (s[position]=='a'){
		return q1q2(position+1,s,len);}
	if (s[position]=='b'){
		return q0q3(position+1,s,len);}
	return -1;

}

int q1q2(int position, char s [], int len){
	//not a final state
printf("Visiting State q1q2\n");
	if (position>=len){
		return -1;}
	if (s[position]=='a'){
		return q2(position+1,s,len);}
	if (s[position]=='b'){
		return q3(position+1,s,len);}
	return -1;
}

int q0(int position, char s [], int len){
	//not a final state
	printf("Visiting State q0\n");
	if (position>=len){
		return -1;}
	if (s[position]=='a'){
		return q1q2(position+1,s,len);}
	if (s[position]=='b'){
		return q0q3(position+1,s,len);}
	return -1;
}




int main(){
	char s[100];
	printf("Enter the String : ");
	scanf("%s",s);
	//calculate the length of string
	int len=strlen(s);


	int position=0;
	int valid=q0(position,s,len);

	if (valid==1){
		printf("String is Valid");
	}
	else
	{
		printf("String is not Valid");
	}
	return 0;

}
