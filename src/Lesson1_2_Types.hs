module Lesson1_2_Types where

-- Our rust "enum": the summ type
data SensorReading = Temperature Float | Humidity Float | HardwareError String


-- Instead of writing one massive function, you define what the function does for each specific "shape" of data.
-- And the function that operates on it
processReading :: SensorReading -> String
processReading (Temperature t)   = "Temp is " ++ show t ++ "C"
processReading (Humidity h)      = "Humidity is " ++ show h ++ "%"
processReading (HardwareError e) = "FAULT: " ++ e

-- If the reading is a Temperature, give us Just the float.
-- Otherwise, give us Nothing.
getTemperature :: SensorReading -> Maybe Float
getTemperature (Temperature t) = Just t
getTemperature _               = Nothing  -- The '_' matches anything


calibrateTemp :: SensorReading -> Either String Float
calibrateTemp (HardwareError e) = Left ("Cannot calibrate broken sensor: " ++ e)
calibrateTemp (Temperature t)
    | t > 100.0   = Left "Temperature out of safe operating range!"
    | otherwise   = Right (t - 1.5) -- Apply a -1.5 offset
calibrateTemp (Humidity _)      = Left "Cannot apply temp calibration to humidity sensor."
