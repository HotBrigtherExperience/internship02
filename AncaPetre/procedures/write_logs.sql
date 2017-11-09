--create AUTONOMOUS_TRANSACTION
CREATE OR REPLACE PROCEDURE intern_ap.write_logs (p_name    IN VARCHAR2,
                                                  p_code    IN VARCHAR2,
                                                  p_message IN VARCHAR2)
IS 
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
INSERT INTO intern_ap.logs
    VALUES (sequence_logs.NEXTVAL,
            p_name,
            p_code,
            p_message
            );
COMMIT;

END;
/
