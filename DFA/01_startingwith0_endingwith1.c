#include <stdio.h>
#include <string.h>
#include <stdbool.h>
int q1(int position, char s [], int len);
int q1q2(int position, char s [], int len);
int q0(int position, char s [], int len);


int q1q2(int position, char s [], int len){
printf("Visiting State q1q2\n");
	//final state
	if (position>=len){
		return 1;}
	if (s[position]=='1'){
		return q1q2(position+1,s,len);}
	if (s[position]=='0'){
		return q1(position+1,s,len);}
	return -1;

}

int q1(int position, char s [], int len){
	//not a final state
printf("Visiting State q1\n");
	if (position>=len){
		return -1;}
	if (s[position]=='0'){
		return q1(position+1,s,len);}
	if (s[position]=='1'){
		return q1q2(position+1,s,len);}
	return -1;
}

int q0(int position, char s [], int len){
	//not a final state
	printf("Visiting State q0\n");
	if (position>=len){
		return -1;}
	if (s[position]=='0'){
		return q1(position+1,s,len);}
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
	printf("%d\n",valid);
	if (valid==1){
		printf("String is Valid");
	}
	else
	{
		printf("String is not Valid");
	}
	return 0;

}
