#include <stdio.h>

int Min(int x, int y);
void FindMin(int number, int* mas);
int SumRemainders(int* mas);

int main() {

	int count;
	scanf("%i", &count);
	int remainders2[3] = { 100000000, 100000000, 100000000 };
	int remainders0[3] = { 100000000, 100000000, 100000000 };
	int remainders1[3] = { 100000000, 100000000, 100000000 };
	int current_number;

	for (int i = 0; i < count; i++) {

		scanf("%i", &current_number);

		if (current_number % 3 == 0) { FindMin(current_number, remainders0); }
		if (current_number % 3 == 1) { FindMin(current_number, remainders1); }
		if (current_number % 3 == 2) { FindMin(current_number, remainders2); }

	}
	printf("%i" , Min(Min(Min(SumRemainders(remainders1), (remainders1[0] + remainders2[0] + remainders0[0])), SumRemainders(remainders2)), SumRemainders(remainders0)));
	return 0;
}

void FindMin(int number, int* mas) {

	if (number < mas[0]) { mas[2] = mas[1]; mas[1] = mas[0]; mas[0] = number; }
	else if (number < mas[1]) { mas[2] = mas[1]; mas[1] = number; }
	else if (number < mas[2]) { mas[2] = number; }

}
int Min(int x, int y) {
	if (x <= y) { return x; }
	else { return y; }
}
int SumRemainders(int* mas){
	int sum = 0;
	for (int i = 0; i < 3; i++) { sum += mas[i]; }
	return sum;
}
