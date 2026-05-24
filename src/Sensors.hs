module Sensors where

-- Our rust "enum": the summ type
data SensorReading = Temperature Float | Humidity Float | HardwareError String


-- Instead of writing one massive function, you define what the function does for each specific "shape" of data.
-- And the function that operates on it
processReading :: SensorReading -> String
processReading (Temperature t)   = "Temp is " ++ show t ++ "C"
processReading (Humidity h)      = "Humidity is " ++ show h ++ "%"
processReading (HardwareError e) = "FAULT: " ++ e
