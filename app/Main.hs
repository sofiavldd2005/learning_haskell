module Main where


-- Import our custom module. 
-- This brings 'SensorReading' and 'processReading' into scope.
import Sensors

-- 1. THE PURE WORLD
-- This function is pure. It takes an Int and returns an Int.
-- It cannot print, it cannot read files. It just computes.
calculateDouble :: Int -> Int
calculateDouble x = x * 2


main :: IO ()
main = do
    putStrLn "Hello, enter a number:" 

    -- Read user input. 'getLine' returns an 'IO String'.
    -- We use '<-' to "extract" the String out of the IO wrapper.
    inputString <- getLine
    -- We use 'let' to bind pure values inside a 'do' block.
    -- 'read' parses the string into an Int.
    let number = read inputString :: Int
    
    -- Call our pure function
    let result = calculateDouble number
    
    -- Print the result. 'show' turns the Int back into a String.
    -- '++' concatenates strings.
    putStrLn ("The double of " ++ show number ++ " is " ++ show result)
   
    putStrLn "--- Sensor Test System ---"
    
    let goodReading = Temperature 24.5
    let badReading = HardwareError "I2C Bus timeout"
    let hotReading = Temperature 150.0
    putStrLn (processReading goodReading)
    putStrLn (processReading badReading)

    -- Handling Maybe using a case statement (like Rust's match)
    case getTemperature goodReading of
        Just temp -> putStrLn ("Extracted temperature: " ++ show temp)
        Nothing   -> putStrLn "Reading was not a temperature."

    -- Handling Either
    case calibrateTemp hotReading of
        Left errMsg   -> putStrLn ("ALARM: " ++ errMsg)
        Right newTemp -> putStrLn ("Calibrated OK: " ++ show newTemp)
