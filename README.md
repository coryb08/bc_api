# Cory_Interview_Project

Please refer to the Google Doc linked below for project instructions. Good Luck!

https://docs.google.com/document/d/18W8F90oSOPfeHl6PcZONRutvzRHBgM7e20vWMCSyPtM/edit?usp=sharing

Disclaimer: The information transmitted in this document and any of its attachments is intended only for the person or entity to which it is addressed and may contain information concerning Outt, Inc. and/or its affiliates and subsidiaries that is proprietary, privileged, confidential and/or subject to copyright. Any review, retransmission, dissemination or other use of, or taking of any action in reliance upon, this information by persons or entities other than the intended recipient(s) is prohibited and may be unlawful. If you received this in error, please contact the sender immediately and delete and destroy the communication and all of the attachments you have received and all copies thereof.

Required Parameters

POST api/users -> is_professor(boolean), first_name(string), last_name(string), year(int), email(string) -> conditionally creates student or professor
POST api/courses -> name(string), size(int), credits(int), professor_id(int)
POST api/meetings -> (not all required) mon_start(string), tues_start(string), wed_start(string), thurs_start(string), fri_start(string), sat_start(string),  
 mon_end(string), tues_end(string), wed_end(string), thurs_end(string), fri_end(string), sat_end(string), course_id(int)
POST api/registrations -> student_id(int), course_id(int), user_id(int) -> creates notification
# bc_api
