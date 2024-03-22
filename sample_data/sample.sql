-- Inserting sample users
INSERT INTO users ("Username", "Email", "PasswordHash", "UserRole", "RegistrationDate") VALUES
('admin', 'admin@example.com', 'admin', 'Admin', '2023-01-01 00:00:00'),
('jane_doe', 'jane@example.com', '123', 'Premium', '2023-01-02 00:00:00'),
('regular_user', 'regular@example.com', '321', 'Regular', '2023-01-03 00:00:00');

-- Inserting sample inventory items
INSERT INTO inventory ("OwnerID", "Title", "Author", "Genre", "Status", "CreatedAt") VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 'Available', '2023-01-04 00:00:00'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 'Loaned', '2023-01-05 00:00:00');

-- Assuming the prompts table exists and is related to Summaries
-- Inserting sample prompts
INSERT INTO prompts ("UserID", "PromptText", "SubmissionDate") VALUES
(1, 'Discuss the symbolism in The Great Gatsby.', '2023-01-06 00:00:00'),
(2, 'Character analysis of Atticus Finch.', '2023-01-07 00:00:00');

-- Inserting sample summaries based on the prompts
INSERT INTO summaries ("PromptID", "SummaryText", "GenerationDate", "DetailLevel") VALUES
(1, 'The green light at the end of Daisy''s dock represents Gatsby''s hopes and dreams...', '2023-01-08 00:00:00', 'Detailed'),
(2, 'Atticus Finch represents morality and reason in To Kill a Mockingbird...', '2023-01-09 00:00:00', 'Brief');

-- Inserting sample chats
INSERT INTO chats ("UserID", "StartDate", "EndDate") VALUES
(1, '2023-01-10 00:00:00', '2023-01-10 01:00:00'),
(2, '2023-01-11 00:00:00', '2023-01-11 01:30:00');

-- Inserting sample chat messages
INSERT INTO chat_messages ("ChatID", "UserID", "MessageText", "Timestamp") VALUES
(1, 1, 'Hello, how can I help you today?', '2023-01-10 00:05:00'),
(1, 2, 'I have a question about my book loan.', '2023-01-10 00:06:00');

-- Inserting sample transactions
INSERT INTO transactions ("BookID", "SenderID", "ReceiverID", "TransactionDate", "Status") VALUES
(1, 1, 2, '2023-01-12 00:00:00', 'Completed');

-- Inserting sample reviews
INSERT INTO reviews ("BookID", "UserID", "Rating", "ReviewText", "ReviewDate") VALUES
(1, 2, 5, 'An amazing read, highly recommended!', '2023-01-13 00:00:00');