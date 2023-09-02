#include <iostream>
#include <stdio.h>
using namespace std;

void mConvert()
{
    float givenUnit, convertedUnit;

    cout << "Enter values pressing enter each time." << endl;
    cout << endl;

    for (int i = 0; i < 100; i++)
    {
        cin >> givenUnit;
        convertedUnit = (4 * givenUnit) / 63;

        if (convertedUnit >= 1)
        {
            printf("%.2f = %.2f inches", givenUnit, convertedUnit);
        }
        else
        {
            printf("%.2f = %.2f cm", givenUnit, convertedUnit * 10);
        }

        cout << endl;
    }
}

void mReduce()
{
    float givenUnit, reducedUnit;

    cout << "Enter values pressing enter each time." << endl;
    cout << endl;

    for (int i = 0; i < 100; i++)
    {
        cin >> givenUnit;
        reducedUnit = givenUnit - ((givenUnit * 94.45852941) / 100);

        printf("%.1f = %.4f\n", givenUnit, reducedUnit);
    }
}

int main()
{

    // mConvert();
    mReduce();

    return 0;
}