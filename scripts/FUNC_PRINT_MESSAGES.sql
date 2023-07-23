CREATE OR REPLACE FUNCTION example_raise() RETURNS VOID AS
$$
DECLARE
    my_variable INTEGER;
BEGIN
    -- Declare and initialize a variable
    my_variable := 42;
    
    -- Print a log message with NOTICE log level
    RAISE NOTICE 'This is a NOTICE log message from my_function. Variable value: %', my_variable;
    
    -- Your function logic continues...
END;
$$
LANGUAGE plpgsql;