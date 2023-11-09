#!/bin/bash

# Function to calculate simple interest
calculate_interest() {
  echo "scale=2; (\$1 * \$2 * \$3) / 100" | bc
}

# Main script starts here
echo "Enter the Principal amount:"
read principal
echo "Enter the Rate of interest:"
read rate
echo "Enter the Time period:"
read time

interest=$(calculate_interest $principal $rate $time)

echo "The simple interest for the given values is: $interest"
