use mysql;
create user 'username'@'localhost' identified by 'password';
GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost';
flush privileges;
create database pollsdb;
use pollsdb;
delete from polls_choice;
delete from polls_question;
alter table polls_question auto_increment = 295;
insert into polls_question values(NULL, 'Which of the following is not a type of supervised learning?', '2022-01-27');

alter table polls_question auto_increment = 297;
insert into polls_question values(NULL, 'Which of the following is a type of unsupervised learning?', '2022-01-27');

insert into polls_question values(NULL, 'What is the most common file format for storing data in a structured way?', '2022-01-27');

insert into polls_question values(NULL, 'What is the process called when a model is trained on a dataset and then tested on a different, unseen dataset?', '2022-01-27');

insert into polls_question values(NULL, 'What is the most common measure of accuracy for classification problems?', '2022-01-27');

insert into polls_question values(NULL, 'What is the process called when a dataset is divided into several subsets for training and testing?', '2022-01-27');

insert into polls_question values(NULL, 'What is the most common method used for feature selection?', '2022-01-27');

insert into polls_question values(NULL, 'What is the purpose of a decision tree?', '2022-01-27');

insert into polls_question values(NULL, 'What is the goal of A/B testing?', '2022-01-27');

insert into polls_question values(NULL, 'What is the difference between a random forest and a decision tree?', '2022-01-27');

insert into polls_choice values(NULL, 'Regression', 3, 295);

insert into polls_choice values(NULL, 'Clustering', 3, 295);

insert into polls_choice values(NULL, 'Classification', 3, 295);

insert into polls_choice values(NULL, 'None of the above', 7, 295);

insert into polls_choice values(NULL, 'Regression', 8, 297);

insert into polls_choice values(NULL, 'Clustering', 2, 297);

insert into polls_choice values(NULL, 'Classification', 5, 297);

insert into polls_choice values(NULL, 'None of the above', 2, 297);

insert into polls_choice values(NULL, 'CSV', 10, 298);

insert into polls_choice values(NULL, 'JSON', 4, 298);

insert into polls_choice values(NULL, 'Excel', 6, 298);

insert into polls_choice values(NULL, 'XML', 1, 298);

insert into polls_choice values(NULL, 'Overfitting', 12, 299);

insert into polls_choice values(NULL, 'Underfitting', 3, 299);

insert into polls_choice values(NULL, 'Cross-validation', 9, 299);

insert into polls_choice values(NULL, 'Bias-variance tradeoff', 9, 299);

insert into polls_choice values(NULL, 'Mean squared error', 2, 300);

insert into polls_choice values(NULL, 'Root mean squared error', 4, 300);

insert into polls_choice values(NULL, 'Mean absolute error', 7, 300);

insert into polls_choice values(NULL, 'None of the above', 10, 300);

insert into polls_choice values(NULL, 'Cross-validation', 3, 301);

insert into polls_choice values(NULL, 'Bootstrapping', 1, 301);

insert into polls_choice values(NULL, 'Random sampling', 5, 301);

insert into polls_choice values(NULL, 'None of the above', 1, 301);

insert into polls_choice values(NULL, 'Lasso regression', 1, 302);

insert into polls_choice values(NULL, 'Ridge regression', 5, 302);

insert into polls_choice values(NULL, 'Elastic net', 2, 302);

insert into polls_choice values(NULL, 'None of the above', 4, 302);

insert into polls_choice values(NULL, 'To classify data into different categories', 9, 303);

insert into polls_choice values(NULL, 'To predict numerical values', 3, 303);

insert into polls_choice values(NULL, 'To visualize the relationship between variables', 1, 303);

insert into polls_choice values(NULL, 'All of the above', 6, 303);

insert into polls_choice values(NULL, 'To determine the optimal number of clusters in a dataset', 3, 304);

insert into polls_choice values(NULL, 'To compare the performance of two different models', 10, 304);

insert into polls_choice values(NULL, 'To determine whether a change to a website will result in a higher conversion rate', 5, 304);

insert into polls_choice values(NULL, 'None of the above', 2, 304);

insert into polls_choice values(NULL, 'Random forest is an ensemble method, while decision tree is a single model', 20, 305);

insert into polls_choice values(NULL, 'Random forest can handle categorical variables better than decision tree', 2, 305);

insert into polls_choice values(NULL, ' Decision tree is more interpretable than random forest', 12, 305);

insert into polls_choice values(NULL, ' All the above', 3, 305);

insert into polls_choice values(NULL, 'None of the above', 5, 305);
