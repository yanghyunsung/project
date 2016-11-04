<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\models\Weight.php 9
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\models\Weight.php 9
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\models\Weight.php 12
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\models\Weight.php 16
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\models\Weight.php 16
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\models\Exercise.php 174
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\models\Exercise.php 174
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\models\Exercise.php 199
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\models\Exercise.php 199
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\models\Exercise.php 220
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\models\Exercise.php 220
ERROR - 2016-07-25 02:13:56 --> Severity: Warning --> Invalid argument supplied for foreach() D:\Study\application\views\exercise_Profile\body_check.php 60
ERROR - 2016-07-25 02:13:56 --> Severity: Warning --> Invalid argument supplied for foreach() D:\Study\application\views\exercise_Profile\body_check.php 71
ERROR - 2016-07-25 02:13:56 --> Severity: Warning --> Invalid argument supplied for foreach() D:\Study\application\views\exercise_Profile\body_check.php 89
ERROR - 2016-07-25 02:13:56 --> Severity: Warning --> Invalid argument supplied for foreach() D:\Study\application\views\exercise_Profile\body_check.php 102
ERROR - 2016-07-25 02:13:56 --> Severity: Warning --> Invalid argument supplied for foreach() D:\Study\application\views\exercise_Profile\body_check.php 129
ERROR - 2016-07-25 02:13:56 --> Severity: Warning --> Invalid argument supplied for foreach() D:\Study\application\views\exercise_Profile\body_check.php 203
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\views\exercise_Profile\body_check.php 371
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\views\exercise_Profile\body_check.php 371
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Undefined index: user_info D:\Study\application\views\exercise_Profile\body_check.php 376
ERROR - 2016-07-25 02:13:56 --> Severity: Notice --> Trying to get property of non-object D:\Study\application\views\exercise_Profile\body_check.php 376
ERROR - 2016-07-25 02:13:56 --> 404 Page Not Found: Faviconico/index
ERROR - 2016-07-25 02:13:56 --> 404 Page Not Found: Faviconico/index
ERROR - 2016-07-25 02:15:17 --> Severity: Error --> Call to a member function num_rows() on a non-object D:\Study\application\models\Weight.php 39
ERROR - 2016-07-25 02:19:02 --> Severity: Error --> Call to a member function result() on a non-object D:\Study\application\models\Weight.php 33
ERROR - 2016-07-25 02:41:22 --> Severity: Notice --> Undefined variable: query D:\Study\application\models\Exercise.php 514
ERROR - 2016-07-25 02:41:34 --> Severity: 4096 --> Object of class stdClass could not be converted to string D:\Study\application\models\Exercise.php 495
ERROR - 2016-07-25 02:41:34 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>user_numb,
                           (
                            SELECT r.' at line 2 - Invalid query: INSERT INTO exercise_record (user_numb, exercise_numb, target_count, clear_count, exercise_date)
                    VALUE (->user_numb,
                           (
                            SELECT r.exercise_numb
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ),
                           (
                            SELECT r.number_of_set * number_of_count
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ), 0, '2016-07-26');
ERROR - 2016-07-25 02:41:37 --> Severity: 4096 --> Object of class stdClass could not be converted to string D:\Study\application\models\Exercise.php 495
ERROR - 2016-07-25 02:41:37 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>user_numb,
                           (
                            SELECT r.' at line 2 - Invalid query: INSERT INTO exercise_record (user_numb, exercise_numb, target_count, clear_count, exercise_date)
                    VALUE (->user_numb,
                           (
                            SELECT r.exercise_numb
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ),
                           (
                            SELECT r.number_of_set * number_of_count
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ), 0, '2016-07-26');
ERROR - 2016-07-25 02:41:44 --> Severity: 4096 --> Object of class stdClass could not be converted to string D:\Study\application\models\Exercise.php 495
ERROR - 2016-07-25 02:41:44 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>user_numb,
                           (
                            SELECT r.' at line 2 - Invalid query: INSERT INTO exercise_record (user_numb, exercise_numb, target_count, clear_count, exercise_date)
                    VALUE (->user_numb,
                           (
                            SELECT r.exercise_numb
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ),
                           (
                            SELECT r.number_of_set * number_of_count
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ), 0, '2016-07-26');
ERROR - 2016-07-25 02:41:44 --> Severity: 4096 --> Object of class stdClass could not be converted to string D:\Study\application\models\Exercise.php 495
ERROR - 2016-07-25 02:41:44 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>user_numb,
                           (
                            SELECT r.' at line 2 - Invalid query: INSERT INTO exercise_record (user_numb, exercise_numb, target_count, clear_count, exercise_date)
                    VALUE (->user_numb,
                           (
                            SELECT r.exercise_numb
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ),
                           (
                            SELECT r.number_of_set * number_of_count
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ), 0, '2016-07-26');
ERROR - 2016-07-25 02:42:10 --> Severity: 4096 --> Object of class stdClass could not be converted to string D:\Study\application\models\Exercise.php 495
ERROR - 2016-07-25 02:42:10 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '>user_numb,
                           (
                            SELECT r.' at line 2 - Invalid query: INSERT INTO exercise_record (user_numb, exercise_numb, target_count, clear_count, exercise_date)
                    VALUE (->user_numb,
                           (
                            SELECT r.exercise_numb
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ),
                           (
                            SELECT r.number_of_set * number_of_count
                            FROM exercise_repeat_numb r, exercise_order o
                            WHERE r.numb_set_index = o.numb_set_index
                             AND o.routine_list_index = 8
                             AND o.exercise_order = 1
                           ), 0, '2016-07-26');
ERROR - 2016-07-25 04:01:35 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 04:01:45 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 04:14:25 --> 404 Page Not Found: Faviconico/index
ERROR - 2016-07-25 04:14:25 --> 404 Page Not Found: Faviconico/index
ERROR - 2016-07-25 06:01:46 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 06:01:56 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 08:01:57 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 08:02:07 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 10:02:08 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 10:02:18 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 11:23:01 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 11:23:11 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 13:23:12 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 13:23:22 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 15:23:24 --> 404 Page Not Found: Cpas/index
ERROR - 2016-07-25 15:23:34 --> 404 Page Not Found: Cpas/index
