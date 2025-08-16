📌 ALTER TABLE (Short Notes)

Add Column ==============================

ALTER TABLE table_name
ADD column_name DataType DEFAULT default_value;

👉 Existing table में नया column जोड़ता है।

Drop Column ==============================

ALTER TABLE table_name
DROP column_name;

👉 Column delete करता है (⚠️ SQLite में support नहीं है)।

Rename Table ==============================

ALTER TABLE old_table
RENAME TO new_table;

👉 Table का नाम बदलता है।

Other Changes ==============================

हर database (MySQL, Postgres, SQLite, SQL Server) के rules थोड़े अलग होते हैं।

Production में use करने से पहले docs check करना चाहिए।
