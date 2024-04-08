DELIMITER //

CREATE PROCEDURE extract_kurs_pajak()
BEGIN
    -- Drop table if exists
    DROP TABLE IF EXISTS kurs_pajak;

    -- Create kurs_pajak table
    CREATE TABLE kurs_pajak (
        id_ksm_kurs_pajak INT,
        kurs_rate DECIMAL(20,4),
        tgl DATE,
        curr_id INT
    );

    -- Insert data into kurs_pajak table
    INSERT INTO kurs_pajak (id_ksm_kurs_pajak, kurs_rate, tgl, curr_id)
    SELECT id, kurs_rate, start_date, curr_id
    FROM ksm_kurs_pajak;
END//

DELIMITER ;
