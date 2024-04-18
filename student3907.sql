CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    username VARCHAR(100) UNIQUE,
    password VARCHAR(50),
    role ENUM('Tutor', 'Student')
) DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE users 
    MODIFY first_name VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY last_name VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY username VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY password VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY role ENUM('Tutor', 'Student') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE course_announcements (
    announcement_id INT PRIMARY KEY AUTO_INCREMENT,
    announcement_date DATE,
    announcement_subject VARCHAR(100),
    announcement_content TEXT
);

ALTER TABLE course_announcements 
    MODIFY announcement_subject VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY announcement_content TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE course_documents (
    document_id INT PRIMARY KEY AUTO_INCREMENT,
    document_title VARCHAR(100),
    document_description TEXT,
    file_name_position VARCHAR(255)
);

ALTER TABLE course_documents 
    MODIFY document_title VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY document_description TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY file_name_position VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE course_assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    objectives TEXT,
    file_name VARCHAR(255),
    deliverables TEXT,
    submission_date DATE
);

ALTER TABLE course_assignments 
    MODIFY objectives TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY file_name VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    MODIFY deliverables TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO users (first_name, last_name, username, password, role) VALUES
('Γιάννης', 'Δημητρίου', 'giannis_d', 'κωδικός123', 'Tutor'),
('Αννα', 'Παπαδοπούλου', 'anna_p', 'ασφαλήςκωδικός', 'Student'),
('Μιχάλης', 'Γεωργίου', 'michael_g', 'mikepass', 'Student'),
('Ελένη', 'Παπαδοπούλου', 'elena_p', 'ελένη123', 'Tutor'),
('Δημήτρης', 'Σταυρόπουλος', 'dimitris_s', 'dimitrispass', 'Tutor'),
('Σοφία', 'Παπαδοπούλου', 'sofia_p', 'sofiapass', 'Student'),
('Γιώργος', 'Παπαδόπουλος', 'giorgos_p', 'giorgospass', 'Student'),
('Δήμητρα', 'Κυριακοπούλου', 'dimitra_k', 'dimitrapass', 'Student'),
('Αλέξης', 'Παπαδοπούλου', 'alexis_p', 'alexispass', 'Tutor'),
('Μαρία', 'Γεωργιάδου', 'maria_g', 'mariapass', 'Tutor');

INSERT INTO course_announcements (announcement_date, announcement_subject, announcement_content) VALUES
('2024-02-01', 'Βασικά της Java', 'Καλώς ήρθατε στο μάθημα Βασικά της Java. Ετοιμαστείτε να μπείτε στα βασικά της προγραμματισμού Java.'),
('2024-02-03', 'Αντικειμενοστραφής Προγραμματισμός', 'Σήμερα θα καλύψουμε τις έννοιες του αντικειμενοστραφούς προγραμματισμού στη Java.'),
('2024-02-05', 'Χειρισμός Εξαιρέσεων', 'Μάθετε πώς να χειρίζεστε τις εξαιρέσεις με ευγένεια στα προγράμματα Java.'),
('2024-02-08', 'Συλλογές Java', 'Εξερευνήστε το ισχυρό πλαίσιο συλλογής στη Java.'),
('2024-02-10', 'Πολυνηματικότητα', 'Ανακαλύψτε πώς να εφαρμόσετε την πολυνηματικότητα σε εφαρμογές Java.'),
('2024-02-12', 'JavaFX', 'Ξεκινήστε με τη δημιουργία γραφικών διεπαφών χρήστη χρησιμοποιώντας το JavaFX.'),
('2024-02-15', 'Σύνδεση με Βάσεις Δεδομένων', 'Μάθετε πώς να συνδέετε τις εφαρμογές Java σας με βάσεις δεδομένων.'),
('2024-02-18', 'Ανάπτυξη Ιστοσελίδων με Java', 'Εξερευνήστε την ανάπτυξη ιστοσελίδων χρησιμοποιώντας τεχνολογίες Java.'),
('2024-02-20', 'Πλαίσιο Εργασίας Spring', 'Εισαγωγή στο πλαίσιο εργασίας Spring για την κατασκευή αξιόπιστων εφαρμογών Java.'),
('2024-02-22', 'Καλύτερες Πρακτικές στη Java', 'Ανακαλύψτε τις βέλτιστες πρακτικές της βιομηχανίας για τη συγγραφή καθαρού και αποτελεσματικού κώδικα Java.');

INSERT INTO course_documents (document_title, document_description, file_name_position) VALUES
('Συνοπτικός Οδηγός Σύνταξης Java', 'Ένα χρήσιμο εγχειρίδιο αναφοράς για τους κανόνες σύνταξης και τις λέξεις-κλειδιά της Java.', 'java_syntax_cheatsheet.pdf'),
('Έννοιες Αντικειμενοστραφούς Προγραμματισμού', 'Αναλυτική εξήγηση των αρχών του Αντικειμενοστραφούς Προγραμματισμού με παραδείγματα στη Java.', 'oop_concepts.pdf'),
('Οδηγός Χειρισμού Εξαιρέσεων', 'Ολοκληρωμένος οδηγός για το πώς να χειρίζεστε τις εξαιρέσεις στα προγράμματα Java.', 'exception_handling_guide.pdf'),
('Επισκόπηση Συλλογών Java', 'Επισκόπηση των κλάσεων συλλογής της Java και των περιπτώσεων χρήσης.', 'java_collections_overview.pdf'),
('Πολυνηματικότητα στη Java', 'Μάθετε πώς να εφαρμόσετε την πολυνηματικότητα σε εφαρμογές Java.', 'multithreading_in_java.pdf'),
('Οδηγός JavaFX', 'Οδηγός βήμα-βήμα για τη δημιουργία γραφικών διεπαφών χρήστη με το JavaFX.', 'javafx_tutorial.pdf'),
('Σύνδεση με Βάσεις Δεδομένων χρησιμοποιώντας JDBC', 'Οδηγός για τη σύνδεση εφαρμογών Java με βάσεις δεδομένων χρησιμοποιώντας το JDBC.', 'jdbc_connectivity_guide.pdf'),
('Βασικά της Ανάπτυξης Ιστοσελίδων με Java', 'Εισαγωγή στην ανάπτυξη ιστοσελίδων με τεχνολογίες Java.', 'java_webdev_basics.pdf'),
('Επισκόπηση του Πλαισίου Εργασίας Spring', 'Εισαγωγή στο πλαίσιο εργασίας Spring για τους προγραμματιστές Java.', 'spring_framework_overview.pdf'),
('Πρότυπα Προγραμματισμού στη Java', 'Βέλτιστες πρακτικές και πρότυπα προγραμματισμού για τη συγγραφή κώδικα Java.', 'java_coding_standards.pdf');


INSERT INTO course_assignments (objectives, file_name, deliverables, submission_date) VALUES
('Γράψτε ένα πρόγραμμα για τον υπολογισμό του παραγοντικού χρησιμοποιώντας αναδρομή.', 'factorial.java', 'Αρχείο πηγαίου κώδικα Java', '2024-02-14'),
('Υλοποιήστε ένα απλό πρόγραμμα αριθμομηχανής σε Java.', 'calculator.java', 'Αρχείο πηγαίου κώδικα Java', '2024-02-17'),
('Δημιουργήστε ένα σύστημα διαχείρισης φοιτητών χρησιμοποιώντας τη Java.', 'student_management.java', 'Αρχείο πηγαίου κώδικα Java', '2024-02-21'),
('Αναπτύξτε ένα βασικό σύστημα διαχείρισης αποθεμάτων σε Java.', 'inventory_management.java', 'Αρχείο πηγαίου κώδικα Java', '2024-02-24'),
('Σχεδιάστε μια εφαρμογή GUI για ένα βιβλιοπωλείο χρησιμοποιώντας το JavaFX.', 'bookstore_gui.java', 'Αρχείο πηγαίου κώδικα Java', '2024-02-28'),
('Γράψτε ένα πρόγραμμα για να πραγματοποιείτε λειτουργίες CRUD σε μια βάση δεδομένων χρησιμοποιώντας JDBC.', 'jdbc_crud_operations.java', 'Αρχείο πηγαίου κώδικα Java', '2024-03-02'),
('Υλοποιήστε μια πολυνηματική εφαρμογή συνομιλίας σε Java.', 'chat_application.java', 'Αρχείο πηγαίου κώδικα Java', '2024-03-06'),
('Δημιουργήστε μια ιστοσελίδα χρησιμοποιώντας Java Servlets και JSP.', 'webapp_java_servlets.jsp', 'Αρχείο πηγαίου κώδικα Java', '2024-03-10'),
('Αναπτύξτε μια RESTful API χρησιμοποιώντας το Spring Boot.', 'spring_boot_restapi.java', 'Αρχείο πηγαίου κώδικα Java', '2024-03-14'),
('Βελτιστοποιήστε και αναδιαμορφώστε ένα υπάρχον έργο Java για απόδοση.', 'java_project_optimization.java', 'Αρχείο πηγαίου κώδικα Java', '2024-03-18');


