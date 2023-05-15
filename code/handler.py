import pandas as pd
import numpy as np


def lambda_handler(event, context):
    print("Welcome to Lambda function using Docker File")
    print("This Script has been created by Hassan Jalil")
    print("You can find me on twitter @hj576")
    df = pd.DataFrame({'numbers': [1, 2, 3], 'colors': ['red', 'white', 'blue']})
    print(f"Shape of sample DF: {df.shape}")
    arr = np.array([1, 2, 3, 4, 5])
    print(f"Type of arr is  {type(arr)}")




