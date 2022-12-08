#include <stdio.h>
#include <string.h>
#include <stdbool.h>
int q0(int position, char s [], int len);
int q1(int position, char s [], int len);
int q0q2(int position, char s [], int len);


int q0q2(int position, char s [], int len){
printf("Visiting State q0q2\n");
	//final state
	if (position>=len){
		return 1;}
	if (s[position]=='1'){
		return q0q2(position+1,s,len);}
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
		return q0q2(position+1,s,len);}
	if (s[position]=='1'){
		return q1(position+1,s,len);}
	return -1;
}

int q0(int position, char s [], int len){
	//not a final state
	printf("Visiting State q0\n");
	if (position>=len){
		return -1;}
	if (s[position]=='1'){
		return q0(position+1,s,len);}
	if (s[position]=='0'){
		return q1(position+1,s,len);}
	return -1;
}




int main(){
	char S[100];
	printf("Enter the String : ");
	scanf("%s",S);
	//calculate the length of string
	int len=strlen(S);


	int TT[5][2];
	TT[0][0]=0;
	TT[0][1]=-1;
	TT[1][0]=2;
	TT[1][1]=-1;
	TT[2][0]=2;
	TT[2][1]=3;
	TT[3][0]=-1;
	TT[3][1]=4;
	TT[4][0]=-1;
	TT[4][1]=-1;

	int state=0;
	int pos=0;

	while(true){
	if (state==0){
		printf("Visited 0\n");
		if (pos>=len){printf("String is Invalid");break;}
		if (S[pos]=='a'){
			state=TT[1][0];pos++;continue;}
		else{printf("String is Invalid");break;}

		}
		else if (state==1){
printf("Visited 1\n");
		if (pos>=len){printf("String is Invalid");break;}
		if (S[pos]=='a'){
			state=TT[1][0];pos++;continue;}
		else{printf("String is Invalid");break;}

		}
		else if (state==2){
	printf("Visited 2\n");
		if (pos>=len){printf("String is valid");break;}
		if (S[pos]=='a'){
			state=TT[2][0];pos++;continue;}
		else if (S[pos]=='b'){
			state=TT[2][1];pos++;continue;}
		else{printf("String is Invalid");break;}

		}
		else if (state==3){
		printf("Visited 3\n");
		if (pos>=len){printf("String is valid");break;}
		//if (S[pos]=='a'){
			//state=TT[2][0];pos++;continue;}
		 if (S[pos]=='b'){
			state=TT[3][1];pos++;continue;}
		else{printf("String is Invalid");break;}

		}
		else if (state==4){
		printf("Visited 4\n");
		if (pos>=len){printf("String is valid");break;}
		//if (S[pos]=='a'){
			//state=TT[2][0];pos++;continue;}

		else{printf("String is Invalid");break;}

		}



}



}
