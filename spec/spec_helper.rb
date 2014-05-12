require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "nyt_besties"

LISTS = %q<{"status":"OK","copyright":"Copyright (c) 2014 The New York Times Company.  All Rights Reserved.","num_results":30,"results":[{"list_name":"Combined Print and E-Book Fiction","display_name":"Combined Print & E-Book Fiction"},{"list_name":"Combined Print and E-Book Nonfiction","display_name":"Combined Print & E-Book Nonfiction"},{"list_name":"Hardcover Fiction","display_name":"Hardcover Fiction"},{"list_name":"Hardcover Nonfiction","display_name":"Hardcover Nonfiction"},{"list_name":"Trade Fiction Paperback","display_name":"Paperback Trade Fiction"},{"list_name":"Mass Market Paperback","display_name":"Paperback Mass-Market Fiction"},{"list_name":"Paperback Nonfiction","display_name":"Paperback Nonfiction"},{"list_name":"E-Book Fiction","display_name":"E-Book Fiction"},{"list_name":"E-Book Nonfiction","display_name":"E-Book Nonfiction"},{"list_name":"Hardcover Advice","display_name":"Hardcover Advice & Misc."},{"list_name":"Paperback Advice","display_name":"Paperback Advice & Misc."},{"list_name":"Advice How-To and Miscellaneous","display_name":"Advice, How-To & Miscellaneous"},{"list_name":"Picture Books","display_name":"Children's Picture Books"},{"list_name":"Chapter Books","display_name":"Children's Chapter Books"},{"list_name":"Childrens Middle Grade","display_name":"Children's Middle Grade"},{"list_name":"Young Adult","display_name":"Young Adult"},{"list_name":"Paperback Books","display_name":"Children's Paperback Books"},{"list_name":"Series Books","display_name":"Children's Series"},{"list_name":"Hardcover Graphic Books","display_name":"Hardcover Graphic Books"},{"list_name":"Paperback Graphic Books","display_name":"Paperback Graphic Books"},{"list_name":"Manga","display_name":"Manga"},{"list_name":"Combined Print Fiction","display_name":"Combined Hardcover & Paperback Fiction"},{"list_name":"Combined Print Nonfiction","display_name":"Combined Hardcover & Paperback Nonfiction"},{"list_name":"Hardcover Business Books","display_name":"Hardcover Business Books"},{"list_name":"Paperback Business Books","display_name":"Paperback Business Books"},{"list_name":"Business Books","display_name":"Business Books"},{"list_name":"Hardcover Political Books","display_name":"Political Books"},{"list_name":"Science Times","display_name":"Science Times"},{"list_name":"Food and Fitness","display_name":"Food and Fitness"},{"list_name":"Sports","display_name":"Sports"}]}>

LIST_RESPONSE = %q<
{
    "copyright": "Copyright (c) 2014 The New York Times Company.  All Rights Reserved.",
    "last_modified": "2014-05-02T13:10:17-04:00",
    "num_results": 25,
    "results": [
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "David Baldacci",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781455521203.jpeg",
                    "contributor": "by David Baldacci",
                    "contributor_note": "",
                    "description": "As the government hit man Will Robie and his partner, Jessica Reel, prepare for a mission, they face a new adversary.\u00a0",
                    "price": 0,
                    "primary_isbn10": "1455521205",
                    "primary_isbn13": "9781455521203",
                    "publisher": "Grand Central",
                    "title": "THE TARGET"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "1455521205",
                    "isbn13": "9781455521203"
                },
                {
                    "isbn10": "1455581984",
                    "isbn13": "9781455581986"
                },
                {
                    "isbn10": "145552123X",
                    "isbn13": "9781455521234"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 1,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 1
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Donna Tartt",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780316055437.jpg",
                    "contributor": "by Donna Tartt",
                    "contributor_note": "",
                    "description": "\u00a0A painting smuggled out of the Metropolitan Museum of Art after a bombing becomes a boy\u2019s prize, guilt and burden.",
                    "price": 0,
                    "primary_isbn10": "0316055433",
                    "primary_isbn13": "9780316055437",
                    "publisher": "Little, Brown",
                    "title": "THE GOLDFINCH"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0316055433",
                    "isbn13": "9780316055437"
                },
                {
                    "isbn10": "0316239879",
                    "isbn13": "9780316239875"
                },
                {
                    "isbn10": "0316055441",
                    "isbn13": "9780316055444"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 2,
            "rank_last_week": 2,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 27
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Maeve Binchy",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780385351867.jpeg",
                    "contributor": "by Maeve Binchy",
                    "contributor_note": "",
                    "description": "Binchy, who died in 2012, depicts ordinary lives in Dublin.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0385351852",
                    "primary_isbn13": "9780385351850",
                    "publisher": "Knopf",
                    "title": "CHESTNUT STREET"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0385351852",
                    "isbn13": "9780385351850"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 3,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 1
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Nora Roberts",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781101617281.jpeg",
                    "contributor": "by Nora Roberts",
                    "contributor_note": "",
                    "description": "A writer travels the world of affluent art collectors to learn the truth about what appears to be a murder/suicide.",
                    "price": 0,
                    "primary_isbn10": "0399164456",
                    "primary_isbn13": "9780399164453",
                    "publisher": "Putnam",
                    "title": "THE COLLECTOR"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0399164456",
                    "isbn13": "9780399164453"
                },
                {
                    "isbn10": "1101617284",
                    "isbn13": "9781101617281"
                },
                {
                    "isbn10": "0399171088",
                    "isbn13": "9780399171086"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 4,
            "rank_last_week": 1,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 2
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Christopher Moore",
                    "book_image": null,
                    "contributor": "by Christopher Moore",
                    "contributor_note": "",
                    "description": "A farcical mash-up of \u201cMerchant of Venice,\u201d \u2009\u201cOthello\u201d and \u201cThe Cask of Amontillado.\u201d",
                    "price": 0,
                    "primary_isbn10": "0061779768",
                    "primary_isbn13": "9780061779763",
                    "publisher": "Morrow/HarperCollins",
                    "title": "THE SERPENT OF VENICE"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0061779768",
                    "isbn13": "9780061779763"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 5,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 1
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Amanda Quick",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780399165146.jpeg",
                    "contributor": "by Amanda Quick",
                    "contributor_note": "",
                    "description": "Amity Doncaster joins forces with Benedict Stanbridge, a spy for the Crown, to defeat a serial killer known as the Bridegroom; by Jayne Ann Krentz, writing pseudonymously.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0399165142",
                    "primary_isbn13": "9780399165146",
                    "publisher": "Putnam",
                    "title": "OTHERWISE ENGAGED"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0399165142",
                    "isbn13": "9780399165146"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 6,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 1
        },
        {
            "asterisk": 1,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Mary Higgins Clark",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781476749105.jpeg",
                    "contributor": "by Mary Higgins Clark",
                    "contributor_note": "",
                    "description": "The producer of a true-crime show must contend with participants with secrets.",
                    "price": 0,
                    "primary_isbn10": "147674906X",
                    "primary_isbn13": "9781476749068",
                    "publisher": "Simon & Schuster",
                    "title": "I'VE GOT YOU UNDER MY SKIN"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "147674906X",
                    "isbn13": "9781476749068"
                },
                {
                    "isbn10": "1476749108",
                    "isbn13": "9781476749105"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 7,
            "rank_last_week": 3,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 4
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Sue Monk Kidd",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780698175242.jpeg",
                    "contributor": "by Sue Monk Kidd",
                    "contributor_note": "",
                    "description": "The relationship between a wealthy Charleston girl, Sarah Grimk\u00e9, who will grow up to become a prominent abolitionist, and the slave she is given for her 11th birthday.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0670024783",
                    "primary_isbn13": "9780670024780",
                    "publisher": "Viking",
                    "title": "THE INVENTION OF WINGS"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0670024783",
                    "isbn13": "9780670024780"
                },
                {
                    "isbn10": "1410465322",
                    "isbn13": "9781410465320"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 8,
            "rank_last_week": 6,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 16
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "James Patterson and Marshall Karp",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780316211239.jpeg",
                    "contributor": "by James Patterson and Marshall Karp",
                    "contributor_note": "",
                    "description": "Detective Zach Jordan is called in when the body of a woman is discovered in the Central Park.",
                    "price": 0,
                    "primary_isbn10": "0316211230",
                    "primary_isbn13": "9780316211239",
                    "publisher": "Little, Brown",
                    "title": "NYPD RED 2"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0316211230",
                    "isbn13": "9780316211239"
                },
                {
                    "isbn10": "0316211249",
                    "isbn13": "9780316211246"
                },
                {
                    "isbn10": "0316324655",
                    "isbn13": "9780316324656"
                },
                {
                    "isbn10": "0316211265",
                    "isbn13": "9780316211260"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 9,
            "rank_last_week": 4,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 5
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Harlan Coben",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780698148635.jpeg",
                    "contributor": "by Harlan Coben",
                    "contributor_note": "",
                    "description": "Kat Donovan, an N.Y.P.D. detective, searches for the ex-fianc\u00e9 who left her years before as well as her father\u2019s murderer.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0525953493",
                    "primary_isbn13": "9780525953494",
                    "publisher": "Dutton",
                    "title": "MISSING YOU"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0525953493",
                    "isbn13": "9780525953494"
                },
                {
                    "isbn10": "0698148630",
                    "isbn13": "9780698148635"
                },
                {
                    "isbn10": "1410466280",
                    "isbn13": "9781410466280"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 10,
            "rank_last_week": 8,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 6
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Lisa Scottoline",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781250010094.jpeg",
                    "contributor": "by Lisa Scottoline",
                    "contributor_note": "",
                    "description": "A father hides a terrible secret to protect his son.",
                    "price": 0,
                    "primary_isbn10": "1250010098",
                    "primary_isbn13": "9781250010094",
                    "publisher": "St. Martin's",
                    "title": "KEEP QUIET"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "1250010098",
                    "isbn13": "9781250010094"
                },
                {
                    "isbn10": "1466842040",
                    "isbn13": "9781466842045"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 11,
            "rank_last_week": 5,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 3
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Stuart Woods",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781101615898.jpeg",
                    "contributor": "by Stuart Woods",
                    "contributor_note": "",
                    "description": "In the 29th Stone Barrington novel, the New York lawyer confronts thieves who can bypass high-end security systems. \u00a0",
                    "price": 0,
                    "primary_isbn10": "0399164162",
                    "primary_isbn13": "9780399164163",
                    "publisher": "Putnam",
                    "title": "CARNAL CURIOSITY"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0399164162",
                    "isbn13": "9780399164163"
                },
                {
                    "isbn10": "1410466590",
                    "isbn13": "9781410466594"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 12,
            "rank_last_week": 7,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 3
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Liane Moriarty",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781101636237.jpg",
                    "contributor": "by Liane Moriarty",
                    "contributor_note": "",
                    "description": "A woman\u2019s life is upended when she discovers a letter she was not meant to read.",
                    "price": 0,
                    "primary_isbn10": "0399159347",
                    "primary_isbn13": "9780399159343",
                    "publisher": "Amy Einhorn/Putnam",
                    "title": "THE HUSBAND'S SECRET"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0399159347",
                    "isbn13": "9780399159343"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 13,
            "rank_last_week": 10,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 21
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Francine Prose",
                    "book_image": null,
                    "contributor": "by Francine Prose",
                    "contributor_note": "",
                    "description": "The lives of artists and libertines intersect at a venue for cross-dressing men and women.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0061713783",
                    "primary_isbn13": "9780061713781",
                    "publisher": "Harper",
                    "title": "LOVERS AT THE CHAMELEON CLUB , PARIS 1932"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0061713783",
                    "isbn13": "9780061713781"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 14,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 1
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Andrew Gross",
                    "book_image": null,
                    "contributor": "by Andrew Gross",
                    "contributor_note": "",
                    "description": "A suburban woman who makes a mistake becomes involved in a terrifying scheme.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0061656003",
                    "primary_isbn13": "9780061656002",
                    "publisher": "Morrow/HarperCollins",
                    "title": "EVERYTHING TO LOSE"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0061656003",
                    "isbn13": "9780061656002"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 15,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 1
        },
        {
            "asterisk": 1,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Gabrielle Zevin",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781616203214.jpeg",
                    "contributor": "by Gabrielle Zevin",
                    "contributor_note": "",
                    "description": "The owner of a failing bookstore on an island off Cape Cod, mourning his wife, finds a second chance.",
                    "price": 0,
                    "primary_isbn10": "1616203218",
                    "primary_isbn13": "9781616203214",
                    "publisher": "Algonquin",
                    "title": "THE STORIED LIFE OF A. J. FIKRY"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "1616203218",
                    "isbn13": "9781616203214"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 16,
            "rank_last_week": 15,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 2
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "John Grisham",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780385537926.jpg",
                    "contributor": "by John Grisham",
                    "contributor_note": "",
                    "description": "A sequel, about race and inheritance, to \u201cA Time to Kill.\u201d",
                    "price": 0,
                    "primary_isbn10": "0385537131",
                    "primary_isbn13": "9780385537131",
                    "publisher": "Doubleday",
                    "title": "SYCAMORE ROW"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0385537131",
                    "isbn13": "9780385537131"
                },
                {
                    "isbn10": "0385537921",
                    "isbn13": "9780385537926"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 17,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 0
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Francine Rivers",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781414368184.jpeg",
                    "contributor": "by Francine Rivers",
                    "contributor_note": "",
                    "description": "The travails of a rising Hollywood star from a difficult background; a Christian romance.\u00a0",
                    "price": 0,
                    "primary_isbn10": "1414368186",
                    "primary_isbn13": "9781414368184",
                    "publisher": "Tyndale House",
                    "title": "BRIDGE TO HAVEN"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "1414368186",
                    "isbn13": "9781414368184"
                },
                {
                    "isbn10": "1414390831",
                    "isbn13": "9781414390833"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 18,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 0
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Anna Quindlen",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780812995756.jpeg",
                    "contributor": "by Anna Quindlen",
                    "contributor_note": "",
                    "description": "An aging photographer rents a rural cottage and discovers sparks of creativity and desire.",
                    "price": 0,
                    "primary_isbn10": "1400065755",
                    "primary_isbn13": "9781400065752",
                    "publisher": "Random House",
                    "title": "STILL LIFE WITH BREAD CRUMBS"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "1400065755",
                    "isbn13": "9781400065752"
                },
                {
                    "isbn10": "0812995759",
                    "isbn13": "9780812995756"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 19,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 0
        },
        {
            "asterisk": 0,
            "bestsellers_date": "2014-04-26",
            "book_details": [
                {
                    "age_group": "",
                    "author": "Brandon Sanderson",
                    "book_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780765326362.jpeg",
                    "contributor": "by Brandon Sanderson",
                    "contributor_note": "",
                    "description": "The second book of the Stormlight Archive fantasy epic, set in the world of Roshar.\u00a0",
                    "price": 0,
                    "primary_isbn10": "0765326361",
                    "primary_isbn13": "9780765326362",
                    "publisher": "Tor/Tom Doherty",
                    "title": "WORDS OF RADIANCE"
                }
            ],
            "dagger": 0,
            "display_name": "Hardcover Fiction",
            "isbns": [
                {
                    "isbn10": "0765326361",
                    "isbn13": "9780765326362"
                }
            ],
            "list_image": "9781455521203.jpeg",
            "list_name": "Hardcover Fiction",
            "normal_list_ends_at": 16,
            "published_date": "2014-05-11",
            "rank": 20,
            "rank_last_week": 0,
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "updated": "WEEKLY",
            "weeks_on_list": 0
        }
    ],
    "status": "OK"
}
>

BOOK_RESPONSE = %q<
{
    "asterisk": 0,
    "bestsellers_date": "2014-04-26",
    "book_details": [
        {
            "age_group": "",
            "author": "Francine Prose",
            "book_image": null,
            "contributor": "by Francine Prose",
            "contributor_note": "",
            "description": "The lives of artists and libertines intersect at a venue for cross-dressing men and women.\u00a0",
            "price": 0,
            "primary_isbn10": "0061713783",
            "primary_isbn13": "9780061713781",
            "publisher": "Harper",
            "title": "LOVERS AT THE CHAMELEON CLUB , PARIS 1932"
        }
    ],
    "dagger": 0,
    "display_name": "Hardcover Fiction",
    "isbns": [
        {
            "isbn10": "0061713783",
            "isbn13": "9780061713781"
        }
    ],
    "list_image": "9781455521203.jpeg",
    "list_name": "Hardcover Fiction",
    "normal_list_ends_at": 16,
    "published_date": "2014-05-11",
    "rank": 14,
    "rank_last_week": 0,
    "reviews": [
        {
            "article_chapter_link": "",
            "book_review_link": "",
            "first_chapter_link": "",
            "sunday_review_link": ""
        }
    ],
    "updated": "WEEKLY",
    "weeks_on_list": 1
}
>

HISTORY_RESPONSE = %q<
{
    "results": [
        {
            "age_group": "",
            "author": "Francine Prose",
            "contributor": "by Francine Prose",
            "contributor_note": "",
            "description": "The lives of artists and libertines intersect at a venue for cross-dressing men and women.\u00a0",
            "isbns": [
                {
                    "isbn10": "0061713783",
                    "isbn13": "9780061713781"
                }
            ],
            "price": 0,
            "publisher": "Harper",
            "ranks_history": [
                {
                    "asterisk": 0,
                    "bestsellers_date": "2014-04-26",
                    "dagger": 0,
                    "display_name": "Hardcover Fiction",
                    "list_name": "Hardcover Fiction",
                    "primary_isbn10": "0061713783",
                    "primary_isbn13": "9780061713781",
                    "published_date": "2014-05-11",
                    "rank": 14,
                    "ranks_last_week": null,
                    "weeks_on_list": 1
                }
            ],
            "reviews": [
                {
                    "article_chapter_link": "",
                    "book_review_link": "",
                    "first_chapter_link": "",
                    "sunday_review_link": ""
                }
            ],
            "title": "LOVERS AT THE CHAMELEON CLUB , PARIS 1932"
        }
    ]
}
>



OVERVIEW_RESPONSE = %q<
{
    "copyright": "Copyright (c) 2014 The New York Times Company.  All Rights Reserved.",
    "num_results": 70,
    "results": {
        "bestsellers_date": "2010-10-10",
        "lists": [
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Michael Connelly",
                        "contributor": "by Michael Connelly",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:34",
                        "description": "The defense lawyer Mickey Haller and the L.A.P.D. detective Harry Bosch join forces against a child-killer.",
                        "price": 27.99,
                        "primary_isbn10": "0316069485",
                        "primary_isbn13": "9780316069489",
                        "publisher": "Little, Brown",
                        "rank": 1,
                        "title": "THE REVERSAL",
                        "updated_date": "2011-02-10 16:46:34"
                    },
                    {
                        "age_group": "",
                        "author": "Ken Follett",
                        "contributor": "by Ken Follett",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:34",
                        "description": "Five interrelated families from five countries are caught in the upheavals of World War I and the Russian Revolution.",
                        "price": 36,
                        "primary_isbn10": "0525951652",
                        "primary_isbn13": "9780525951650",
                        "publisher": "Dutton",
                        "rank": 2,
                        "title": "FALL OF GIANTS",
                        "updated_date": "2011-02-10 16:46:34"
                    },
                    {
                        "age_group": "",
                        "author": "Jonathan Franzen",
                        "contributor": "by Jonathan Franzen",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:34",
                        "description": "A family of Midwestern liberals during the Bush years; by the author of \"The Corrections.\"",
                        "price": 28,
                        "primary_isbn10": "0374158460",
                        "primary_isbn13": "9780374158460",
                        "publisher": "Farrar, Straus & Giroux",
                        "rank": 3,
                        "title": "FREEDOM",
                        "updated_date": "2011-02-10 16:46:34"
                    },
                    {
                        "age_group": "",
                        "author": "Stieg Larsson",
                        "contributor": "by Stieg Larsson",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:34",
                        "description": "The third volume of a trilogy about a Swedish hacker and a journalist.",
                        "price": 27.95,
                        "primary_isbn10": "030726999X",
                        "primary_isbn13": "9780307269997",
                        "publisher": "Knopf",
                        "rank": 4,
                        "title": "THE GIRL WHO KICKED THE HORNET\u2019S NEST",
                        "updated_date": "2011-02-10 16:46:34"
                    },
                    {
                        "age_group": "",
                        "author": "Nicholas Sparks",
                        "contributor": "by Nicholas Sparks",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:34",
                        "description": "The arrival of a mysterious young woman in a small North Carolina town raises questions about her past.",
                        "price": 25.99,
                        "primary_isbn10": "044654759X",
                        "primary_isbn13": "9780446547598",
                        "publisher": "Grand Central",
                        "rank": 5,
                        "title": "SAFE HAVEN",
                        "updated_date": "2011-02-10 16:46:34"
                    }
                ],
                "display_name": "Hardcover Fiction",
                "list_id": 1,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780316069489.jpg",
                "list_name": "Hardcover Fiction",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Bob Woodward",
                        "contributor": "by Bob Woodward",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:39",
                        "description": "The inside story of how decisions were made on the war in Afghanistan, the campaign in Pakistan and the fight against terrorism.",
                        "price": 30,
                        "primary_isbn10": "1439172498",
                        "primary_isbn13": "9781439172490",
                        "publisher": "Simon & Schuster",
                        "rank": 1,
                        "title": "OBAMA'S WARS",
                        "updated_date": "2011-02-10 16:46:39"
                    },
                    {
                        "age_group": "",
                        "author": "Jon Stewart and others",
                        "contributor": "by Jon Stewart and others",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:39",
                        "description": "A visitor\u2019s guide to the human race, presented by \"The Daily Show.\"",
                        "price": 27.99,
                        "primary_isbn10": "044657922X",
                        "primary_isbn13": "9780446579223",
                        "publisher": "Grand Central",
                        "rank": 2,
                        "title": "EARTH (THE BOOK)",
                        "updated_date": "2011-02-10 16:46:39"
                    },
                    {
                        "age_group": "",
                        "author": "Michael Savage",
                        "contributor": "by Michael Savage",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:39",
                        "description": "The radio host criticizes Obama\u2019s policies on the borders, the economy and security.",
                        "price": 26.99,
                        "primary_isbn10": "0062010972",
                        "primary_isbn13": "9780062010971",
                        "publisher": "Morrow/HarperCollins",
                        "rank": 3,
                        "title": "TRICKLE UP POVERTY",
                        "updated_date": "2011-02-10 16:46:39"
                    },
                    {
                        "age_group": "",
                        "author": "Dinesh D'Souza",
                        "contributor": "by Dinesh D'Souza",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:39",
                        "description": "D\u2019Souza argues that Obama\u2019s policies are defined by the anti-colonialist sentiments of his father.",
                        "price": 27.95,
                        "primary_isbn10": "1596986255",
                        "primary_isbn13": "9781596986251",
                        "publisher": "Regnery",
                        "rank": 4,
                        "title": "THE ROOTS OF OBAMA'S RAGE",
                        "updated_date": "2011-02-10 16:46:39"
                    },
                    {
                        "age_group": "",
                        "author": "Tucker Max",
                        "contributor": "by Tucker Max",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:40",
                        "description": "Stories of bad decisions, debauchery and sexual recklessness.",
                        "price": 25.99,
                        "primary_isbn10": "1416938745",
                        "primary_isbn13": "9781416938743",
                        "publisher": "Gallery",
                        "rank": 5,
                        "title": "____ FINISH FIRST",
                        "updated_date": "2011-02-10 16:46:40"
                    }
                ],
                "display_name": "Hardcover Nonfiction",
                "list_id": 2,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781439172506.jpg",
                "list_name": "Hardcover Nonfiction",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Stieg Larsson",
                        "contributor": "by Stieg Larsson",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:04",
                        "description": "A hacker and a journalist investigate the disappearance of a Swedish heiress.",
                        "price": 14.95,
                        "primary_isbn10": "0307454541",
                        "primary_isbn13": "9780307454546",
                        "publisher": "Vintage Crime/Black Lizard",
                        "rank": 1,
                        "title": "THE GIRL WITH THE DRAGON TATTOO",
                        "updated_date": "2011-02-10 16:47:04"
                    },
                    {
                        "age_group": "",
                        "author": "Stieg Larsson",
                        "contributor": "by Stieg Larsson",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:04",
                        "description": "A Swedish hacker becomes a murder suspect.",
                        "price": 15.95,
                        "primary_isbn10": "030745455X",
                        "primary_isbn13": "9780307454553",
                        "publisher": "Vintage Crime/Black Lizard",
                        "rank": 2,
                        "title": "THE GIRL WHO PLAYED WITH FIRE",
                        "updated_date": "2011-02-10 16:47:04"
                    },
                    {
                        "age_group": "",
                        "author": "Chris Cleave",
                        "contributor": "by Chris Cleave",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:04",
                        "description": "The lives of a British woman and a Nigerian girl collide.",
                        "price": 14,
                        "primary_isbn10": "1416589643",
                        "primary_isbn13": "9781416589648",
                        "publisher": "Simon & Schuster",
                        "rank": 3,
                        "title": "LITTLE BEE",
                        "updated_date": "2011-02-10 16:47:04"
                    },
                    {
                        "age_group": "",
                        "author": "Abraham Verghese",
                        "contributor": "by Abraham Verghese",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:04",
                        "description": "Twin brothers, conjoined and then separated, grow up amid the political turmoil of Ethiopia.",
                        "price": 15.95,
                        "primary_isbn10": "0375714367",
                        "primary_isbn13": "9780375714368",
                        "publisher": "Vintage",
                        "rank": 4,
                        "title": "CUTTING FOR STONE",
                        "updated_date": "2011-02-10 16:47:04"
                    },
                    {
                        "age_group": "",
                        "author": "Jeannette Walls",
                        "contributor": "by Jeannette Walls",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:05",
                        "description": "A re-creation of the life of the author\u2019s grandmother \u2014 a mustang breaker, schoolteacher, ranch wife and mother of two \u2014 in the Southwest.",
                        "price": 15,
                        "primary_isbn10": "1416586296",
                        "primary_isbn13": "9781416586296",
                        "publisher": "Scribner",
                        "rank": 5,
                        "title": "HALF BROKE HORSES",
                        "updated_date": "2011-02-10 16:47:05"
                    }
                ],
                "display_name": "Paperback Trade Fiction",
                "list_id": 17,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780307949486.jpg",
                "list_name": "Trade Fiction Paperback",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "J R Ward",
                        "contributor": "by J. R. Ward",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:10",
                        "description": "The target of an assassin, a black ops soldier puts his fate in the hands of a fallen angel and a beautiful public defender.",
                        "price": 7.99,
                        "primary_isbn10": "0451229444",
                        "primary_isbn13": "9780451229441",
                        "publisher": "Signet",
                        "rank": 1,
                        "title": "CRAVE",
                        "updated_date": "2011-02-10 16:47:10"
                    },
                    {
                        "age_group": "",
                        "author": "James Patterson",
                        "contributor": "by James Patterson",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:10",
                        "description": "Tracking the murderer of a relative, Alex Cross discovers a wild Washington scene with explosive secrets.",
                        "price": 9.99,
                        "primary_isbn10": "0446561967",
                        "primary_isbn13": "9780446561969",
                        "publisher": "Vision",
                        "rank": 2,
                        "title": "I, ALEX CROSS",
                        "updated_date": "2011-02-10 16:47:10"
                    },
                    {
                        "age_group": "",
                        "author": "Lee Child",
                        "contributor": "by Lee Child",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:10",
                        "description": "Jack Reacher helps the police in a small South Dakota town protect a witness in a drug trial.",
                        "price": 9.99,
                        "primary_isbn10": "0440243696",
                        "primary_isbn13": "9780440243694",
                        "publisher": "Dell",
                        "rank": 3,
                        "title": "61 HOURS",
                        "updated_date": "2011-02-10 16:47:10"
                    },
                    {
                        "age_group": "",
                        "author": "Stieg Larsson",
                        "contributor": "by Stieg Larsson",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:10",
                        "description": "A hacker and a journalist investigate the disappearance of a Swedish heiress.",
                        "price": 7.99,
                        "primary_isbn10": "0307473473",
                        "primary_isbn13": "9780307473479",
                        "publisher": "Vintage Crime/Black Lizard",
                        "rank": 4,
                        "title": "THE GIRL WITH THE DRAGON TATTOO",
                        "updated_date": "2011-02-10 16:47:10"
                    },
                    {
                        "age_group": "",
                        "author": "Lora Leigh",
                        "contributor": "by Lora Leigh",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:10",
                        "description": "To save a young woman from the claws of Breed slave traders, the Wolf Breed Styx is forced to claim her himself.",
                        "price": 7.99,
                        "primary_isbn10": "0425237397",
                        "primary_isbn13": "9780425237397",
                        "publisher": "Berkley Sensation",
                        "rank": 5,
                        "title": "STYX\u2019S STORM",
                        "updated_date": "2011-02-10 16:47:10"
                    }
                ],
                "display_name": "Paperback Mass-Market Fiction",
                "list_id": 18,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780451229441.jpg",
                "list_name": "Mass Market Paperback",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Elizabeth Gilbert",
                        "contributor": "by Elizabeth Gilbert",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:48",
                        "description": "A writer\u2019s journey in search of self.",
                        "price": 15,
                        "primary_isbn10": "0143038419",
                        "primary_isbn13": "9780143038412",
                        "publisher": "Penguin",
                        "rank": 1,
                        "title": "EAT, PRAY, LOVE",
                        "updated_date": "2011-02-10 16:46:48"
                    },
                    {
                        "age_group": "",
                        "author": "Greg Mortenson and David Oliver Relin",
                        "contributor": "by Greg Mortenson and David Oliver Relin",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:48",
                        "description": "A former climber builds schools in villages in Pakistan and Afghanistan.",
                        "price": 16,
                        "primary_isbn10": "0143038257",
                        "primary_isbn13": "9780143038252",
                        "publisher": "Penguin",
                        "rank": 2,
                        "title": "THREE CUPS OF TEA",
                        "updated_date": "2011-02-10 16:46:48"
                    },
                    {
                        "age_group": "",
                        "author": "Jeannette Walls",
                        "contributor": "by Jeannette Walls",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:48",
                        "description": "The author recalls a bizarre childhood during which she was constantly on the move.",
                        "price": 15,
                        "primary_isbn10": "074324754X",
                        "primary_isbn13": "9780743247542",
                        "publisher": "Scribner",
                        "rank": 3,
                        "title": "THE GLASS CASTLE",
                        "updated_date": "2011-02-10 16:46:48"
                    },
                    {
                        "age_group": "",
                        "author": "Ben Mezrich",
                        "contributor": "by Ben Mezrich",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:48",
                        "description": "How two Harvard undergraduates created Facebook.",
                        "price": 15.95,
                        "primary_isbn10": "0307740986",
                        "primary_isbn13": "9780307740984",
                        "publisher": "Anchor",
                        "rank": 4,
                        "title": "THE ACCIDENTAL BILLIONAIRES",
                        "updated_date": "2011-02-10 16:46:48"
                    },
                    {
                        "age_group": "",
                        "author": "Jon Krakauer",
                        "contributor": "by Jon Krakauer",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:48",
                        "description": "The story of Pat Tillman and the Army\u2019s cover-up of his death by \"friendly fire\" in Afghanistan.",
                        "price": 15.95,
                        "primary_isbn10": "030738604X",
                        "primary_isbn13": "9780307386045",
                        "publisher": "Anchor",
                        "rank": 5,
                        "title": "WHERE MEN WIN GLORY",
                        "updated_date": "2011-02-10 16:46:48"
                    }
                ],
                "display_name": "Paperback Nonfiction",
                "list_id": 4,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780143058526.jpg",
                "list_name": "Paperback Nonfiction",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "David Jeremiah",
                        "contributor": "by David Jeremiah",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:44",
                        "description": "What biblical prophecy warns about the new global economy.",
                        "price": 23.99,
                        "primary_isbn10": "0446565946",
                        "primary_isbn13": "9780446565943",
                        "publisher": "FaithWords",
                        "rank": 1,
                        "title": "THE COMING ECONOMIC ARMAGEDDON",
                        "updated_date": "2011-02-10 16:46:44"
                    },
                    {
                        "age_group": "",
                        "author": "Tony Hsieh",
                        "contributor": "by Tony Hsieh",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:44",
                        "description": "Lessons from business (pizza place, worm farm, Zappos) and life. (\u2020)",
                        "price": 23.99,
                        "primary_isbn10": "0446563048",
                        "primary_isbn13": "9780446563048",
                        "publisher": "Business Plus",
                        "rank": 2,
                        "title": "DELIVERING HAPPINESS",
                        "updated_date": "2011-02-10 16:46:44"
                    },
                    {
                        "age_group": "",
                        "author": "Jenny McCarthy",
                        "contributor": "by Jenny McCarthy",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:44",
                        "description": "At look at relationships, love and sex, from the TV personality and former Playboy model.",
                        "price": 24.99,
                        "primary_isbn10": "0062012983",
                        "primary_isbn13": "9780062012982",
                        "publisher": "Harper/HarperCollins",
                        "rank": 3,
                        "title": "LOVE, LUST AND FAKING IT",
                        "updated_date": "2011-02-10 16:46:44"
                    },
                    {
                        "age_group": "",
                        "author": "Ina Garten",
                        "contributor": "by Ina Garten",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:44",
                        "description": "Tallest, fastest, youngest, most.",
                        "price": 28.95,
                        "primary_isbn10": "190499458X",
                        "primary_isbn13": "9781904994589",
                        "publisher": "Guinness",
                        "rank": 4,
                        "title": "GUINNESS WORLD RECORDS 2011",
                        "updated_date": "2011-02-10 16:46:44"
                    },
                    {
                        "age_group": "",
                        "author": "Zhi Gang Sha",
                        "contributor": "by Zhi Gang Sha",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:44",
                        "description": "Life transformation through self-clearing karma.",
                        "price": 27.95,
                        "primary_isbn10": "1439198632",
                        "primary_isbn13": "9781439198636",
                        "publisher": "Atria",
                        "rank": 5,
                        "title": "DIVINE TRANSFORMATION",
                        "updated_date": "2011-02-10 16:46:44"
                    }
                ],
                "display_name": "Hardcover Advice & Misc.",
                "list_id": 3,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780446565943.jpg",
                "list_name": "Hardcover Advice",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "edited  Karl Weber",
                        "contributor": "edited by Karl Weber",
                        "contributor_note": "edited by Karl Weber",
                        "created_date": "2011-02-10 16:46:52",
                        "description": "How to save America\u2019s public schools; a companion to the film.",
                        "price": 15.95,
                        "primary_isbn10": "1586489275",
                        "primary_isbn13": "9781586489274",
                        "publisher": "PublicAffairs",
                        "rank": 1,
                        "title": "WAITING FOR \u2018SUPERMAN\u2019",
                        "updated_date": "2011-02-10 16:46:52"
                    },
                    {
                        "age_group": "",
                        "author": "Heidi Murkoff and Sharon Mazel",
                        "contributor": "by Heidi Murkoff and Sharon Mazel",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:52",
                        "description": "Advice for parents-to-be.",
                        "price": 14.95,
                        "primary_isbn10": "0761148574",
                        "primary_isbn13": "9780761148579",
                        "publisher": "Workman",
                        "rank": 2,
                        "title": "WHAT TO EXPECT WHEN YOU'RE EXPECTING",
                        "updated_date": "2011-02-10 16:46:52"
                    },
                    {
                        "age_group": "",
                        "author": "Gary Chapman",
                        "contributor": "by Gary Chapman",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:52",
                        "description": "How to communicate love in a way a spouse will understand.",
                        "price": 14.99,
                        "primary_isbn10": "0802473156",
                        "primary_isbn13": "9780802473158",
                        "publisher": "Northfield",
                        "rank": 3,
                        "title": "THE FIVE LOVE LANGUAGES",
                        "updated_date": "2011-02-10 16:46:52"
                    },
                    {
                        "age_group": "",
                        "author": "Jorge Cruise",
                        "contributor": "by Jorge Cruise",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:52",
                        "description": "Do-over recipes using the \u201cCarb Swap System\u201d steer you away from foods full of hidden \n\nsweeteners and processed carbohydrates.",
                        "price": 19.95,
                        "primary_isbn10": "1401927181",
                        "primary_isbn13": "9781401927189",
                        "publisher": "Hay House",
                        "rank": 4,
                        "title": "THE BELLY FAT CURE",
                        "updated_date": "2011-02-10 16:46:52"
                    },
                    {
                        "age_group": "",
                        "author": "Stephen and Alex Kendrick with Lawrence Kimbrough",
                        "contributor": "by Stephen and Alex Kendrick with Lawrence Kimbrough",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:52",
                        "description": "A 40-day challenge for spouses who want to practice unconditional love.",
                        "price": 14.99,
                        "primary_isbn10": "0805448853",
                        "primary_isbn13": "9780805448856",
                        "publisher": "B&H",
                        "rank": 5,
                        "title": "THE LOVE DARE",
                        "updated_date": "2011-02-10 16:46:52"
                    }
                ],
                "display_name": "Paperback Advice & Misc.",
                "list_id": 5,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781586489274.jpg",
                "list_name": "Paperback Advice",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "Ages 3 to 7",
                        "author": "Mo Willems",
                        "contributor": "written and illustrated by Mo Willems",
                        "contributor_note": "written and illustrated by Mo Willems",
                        "created_date": "2011-02-10 16:46:54",
                        "description": "A little girl and her well-loved companion take a trip that leads to unexpected discoveries.",
                        "price": 17.99,
                        "primary_isbn10": "0061929573",
                        "primary_isbn13": "9780061929571",
                        "publisher": "Balzer & Bray/HarperCollins",
                        "rank": 1,
                        "title": "KNUFFLE BUNNY FREE",
                        "updated_date": "2011-02-10 16:46:54"
                    },
                    {
                        "age_group": "Ages 3 to 7",
                        "author": "",
                        "contributor": "written and illustrated by Rob Scotton",
                        "contributor_note": "written and illustrated by Rob Scotton",
                        "created_date": "2011-02-10 16:46:54",
                        "description": "Splat aims to scare his cat school pals on Halloween.",
                        "price": 16.99,
                        "primary_isbn10": "0061177601",
                        "primary_isbn13": "9780061177606",
                        "publisher": "Harper/HarperCollins",
                        "rank": 2,
                        "title": "SCAREDY-CAT, SPLAT!",
                        "updated_date": "2011-02-10 16:46:54"
                    },
                    {
                        "age_group": "Ages 4 to 8",
                        "author": "Jamie Lee Curtis",
                        "contributor": "by Jamie Lee Curtis.  Illustrated by Laura Cornell",
                        "contributor_note": "Illustrated by Laura Cornell",
                        "created_date": "2011-02-10 16:46:54",
                        "description": "A child waxes poetic about Mom\u2019s amazing achievements.",
                        "price": 16.99,
                        "primary_isbn10": "0060290161",
                        "primary_isbn13": "9780060290160",
                        "publisher": "Joanna Cotler/HarperCollins",
                        "rank": 3,
                        "title": "MY MOMMY HUNG THE MOON",
                        "updated_date": "2011-02-10 16:46:54"
                    },
                    {
                        "age_group": "Ages 3 to 7",
                        "author": "Ian Falconer",
                        "contributor": "written and illustrated by Ian Falconer",
                        "contributor_note": "written and illustrated by Ian Falconer",
                        "created_date": "2011-02-10 16:46:54",
                        "description": "A piglet prone to big ideas wants to live on the Grand Canal.",
                        "price": 17.99,
                        "primary_isbn10": "1416996745",
                        "primary_isbn13": "9781416996743",
                        "publisher": "Atheneum",
                        "rank": 4,
                        "title": "OLIVIA GOES TO VENICE",
                        "updated_date": "2011-02-10 16:46:54"
                    },
                    {
                        "age_group": "Ages 2 and up",
                        "author": "",
                        "contributor": "written and illustrated by Matthew Van Fleet",
                        "contributor_note": "written and illustrated by Matthew Van Fleet",
                        "created_date": "2011-02-10 16:46:54",
                        "description": "Animal noggins with tabs to make them move.",
                        "price": 17.99,
                        "primary_isbn10": "1442403799",
                        "primary_isbn13": "9781442403796",
                        "publisher": "Paula Wiseman/Simon & Schuster",
                        "rank": 5,
                        "title": "HEADS",
                        "updated_date": "2011-02-10 16:46:54"
                    }
                ],
                "display_name": "Children's Picture Books",
                "list_id": 7,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780061929571.jpg",
                "list_name": "Picture Books",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "Ages 12 and up",
                        "author": "Lauren Kate",
                        "contributor": "by Lauren Kate",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:56",
                        "description": "A novel about the nephilim, the children of humans and fallen angels.",
                        "price": 17.99,
                        "primary_isbn10": "0385739141",
                        "primary_isbn13": "9780385739146",
                        "publisher": "Delacorte",
                        "rank": 1,
                        "title": "TORMENT",
                        "updated_date": "2011-02-10 16:46:56"
                    },
                    {
                        "age_group": "Ages 12 and up",
                        "author": "Lauren Conrad with Elise Loehnen",
                        "contributor": "by Lauren Conrad with Elise Loehnen",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:56",
                        "description": "A guide to chic.",
                        "price": 19.99,
                        "primary_isbn10": "0061989142",
                        "primary_isbn13": "9780061989148",
                        "publisher": "HarperCollins",
                        "rank": 2,
                        "title": "LAUREN CONRAD STYLE",
                        "updated_date": "2011-02-10 16:46:56"
                    },
                    {
                        "age_group": "",
                        "author": "Rick Riordan and Orpheus Collar",
                        "contributor": "by Rick Riordan and Orpheus Collar",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:56",
                        "description": "Ancient gods (this time from Egypt) and a mortal family meet.",
                        "price": 17.99,
                        "primary_isbn10": "1423113381",
                        "primary_isbn13": "9781423113386",
                        "publisher": "Disney-Hyperion",
                        "rank": 3,
                        "title": "THE RED PYRAMID: THE KANE CHRONICLES, BOOK ONE",
                        "updated_date": "2011-02-10 16:46:56"
                    },
                    {
                        "age_group": "",
                        "author": "Cassandra Clare",
                        "contributor": "by Cassandra Clare",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:56",
                        "description": "Victorian England proves a treacherous place.",
                        "price": 19.99,
                        "primary_isbn10": "1416975861",
                        "primary_isbn13": "9781416975861",
                        "publisher": "McElderry/Simon & Schuster",
                        "rank": 4,
                        "title": "CLOCKWORK ANGEL",
                        "updated_date": "2011-02-10 16:46:56"
                    },
                    {
                        "age_group": "Ages 12 and up",
                        "author": "Scott Westerfeld",
                        "contributor": "by Scott Westerfeld. Illustrated by Keith Thompson",
                        "contributor_note": "Illustrated by Keith Thompson",
                        "created_date": "2011-02-10 16:46:56",
                        "description": "A sequel to \"Leviathan,\" about a fearsome creature.",
                        "price": 18.99,
                        "primary_isbn10": "1416971750",
                        "primary_isbn13": "9781416971757",
                        "publisher": "Simon Pulse",
                        "rank": 5,
                        "title": "BEHEMOTH",
                        "updated_date": "2011-02-10 16:46:56"
                    }
                ],
                "display_name": "Children's Chapter Books",
                "list_id": 8,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780385739146.jpg",
                "list_name": "Chapter Books",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "Ages 12 and up",
                        "author": "Lauren Kate",
                        "contributor": "by Lauren Kate",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:57",
                        "description": "Love is thwarted at a boarding school where the students are not your average mortals.",
                        "price": 9.99,
                        "primary_isbn10": "0385739133",
                        "primary_isbn13": "9780385739139",
                        "publisher": "Delacorte",
                        "rank": 1,
                        "title": "FALLEN",
                        "updated_date": "2011-02-10 16:46:57"
                    },
                    {
                        "age_group": "Ages 10 and up",
                        "author": "Neil Gaiman with Dave McKean",
                        "contributor": "by Neil Gaiman with Dave McKean",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:57",
                        "description": "To avoid a killer, a boy lives in a cemetery.",
                        "price": 7.99,
                        "primary_isbn10": "0060530944",
                        "primary_isbn13": "9780060530945",
                        "publisher": "HarperCollins",
                        "rank": 2,
                        "title": "THE GRAVEYARD BOOK",
                        "updated_date": "2011-02-10 16:46:57"
                    },
                    {
                        "age_group": "Ages 14 and up",
                        "author": "Markus Zusak",
                        "contributor": "by Markus Zusak",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:57",
                        "description": "A girl saves books from Nazi burning.",
                        "price": 11.99,
                        "primary_isbn10": "0375842209",
                        "primary_isbn13": "9780375842207",
                        "publisher": "Knopf",
                        "rank": 3,
                        "title": "THE BOOK THIEF",
                        "updated_date": "2011-02-10 16:46:57"
                    },
                    {
                        "age_group": "",
                        "author": "Greg Mortenson and David Oliver Relin",
                        "contributor": "by Greg Mortenson and David Oliver Relin",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:57",
                        "description": "A former climber builds schools in Pakistani and Afghan villages.",
                        "price": 8.99,
                        "primary_isbn10": "0142414123",
                        "primary_isbn13": "9780142414125",
                        "publisher": "Puffin/Penguin",
                        "rank": 4,
                        "title": "THREE CUPS OF TEA",
                        "updated_date": "2011-02-10 16:46:57"
                    },
                    {
                        "age_group": "Ages 12 and up",
                        "author": "Sherman Alexie and Ellen Forney",
                        "contributor": "by Sherman Alexie and Ellen Forney",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:46:57",
                        "description": "A young boy leaves his reservation for an all-white school.",
                        "price": 8.99,
                        "primary_isbn10": "0316013692",
                        "primary_isbn13": "9780316013697",
                        "publisher": "Little, Brown",
                        "rank": 5,
                        "title": "THE ABSOLUTELY TRUE DIARY OF A PART-TIME INDIAN",
                        "updated_date": "2011-02-10 16:46:57"
                    }
                ],
                "display_name": "Children's Paperback Books",
                "list_id": 9,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780385738934.jpg",
                "list_name": "Paperback Books",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "Ages 12 and up",
                        "author": "Suzanne Collins",
                        "contributor": "by Suzanne Collins",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:01",
                        "description": "In a dystopian society a girl fights for survival on live TV.",
                        "price": 0,
                        "primary_isbn10": "0439023513",
                        "primary_isbn13": "9780439023511",
                        "publisher": "Scholastic, hardcover and paper",
                        "rank": 1,
                        "title": "THE HUNGER GAMES",
                        "updated_date": "2011-02-10 16:47:01"
                    },
                    {
                        "age_group": "Ages 9 to 12",
                        "author": "Jeff Kinney",
                        "contributor": "written and illustrated by Jeff Kinney",
                        "contributor_note": "written and illustrated by Jeff Kinney",
                        "created_date": "2011-02-10 16:47:01",
                        "description": "The travails of adolescence, in cartoons.",
                        "price": 0,
                        "primary_isbn10": "0810993139",
                        "primary_isbn13": "9780810993136",
                        "publisher": "Abrams, hardcover only",
                        "rank": 2,
                        "title": "DIARY OF A WIMPY KID",
                        "updated_date": "2011-02-10 16:47:01"
                    },
                    {
                        "age_group": "Ages 9 to 12",
                        "author": "John Flanagan",
                        "contributor": "by John Flanagan",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:01",
                        "description": "A boy warrior battles evil.",
                        "price": 0,
                        "primary_isbn10": "039925207X",
                        "primary_isbn13": "9780399252075",
                        "publisher": "Philomel, hardcover and paper",
                        "rank": 3,
                        "title": "RANGER\u2019S APPRENTICE",
                        "updated_date": "2011-02-10 16:47:01"
                    },
                    {
                        "age_group": "Ages 9 to 12",
                        "author": "Rick Riordan",
                        "contributor": "by Rick Riordan",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:01",
                        "description": "Children of the gods battle mythological monsters.",
                        "price": 0,
                        "primary_isbn10": "1423101472",
                        "primary_isbn13": "9781423101475",
                        "publisher": "Disney-Hyperion, hardcover and paper",
                        "rank": 4,
                        "title": "PERCY JACKSON & THE OLYMPIANS",
                        "updated_date": "2011-02-10 16:47:01"
                    },
                    {
                        "age_group": "Ages 14 and up",
                        "author": "Lauren Conrad",
                        "contributor": "by Lauren Conrad",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:01",
                        "description": "Excitement in TV land, by someone who has been there.",
                        "price": 0,
                        "primary_isbn10": "006176762X",
                        "primary_isbn13": "9780061767623",
                        "publisher": "HarperCollins",
                        "rank": 5,
                        "title": "L.A. CANDY",
                        "updated_date": "2011-02-10 16:47:01"
                    }
                ],
                "display_name": "Children's Series",
                "list_id": 10,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780439023511.jpg",
                "list_name": "Series Books",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Diana Gabaldon and Hoang Nguyen",
                        "contributor": "by Diana Gabaldon and Hoang Nguyen",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:13",
                        "description": "The story of Jamie Fraser, a kilt-wearing 18th-century Scotsman, and Claire Randall, a World War II-era nurse who has been transported back in time, is retold in the graphic novel format.",
                        "price": 25,
                        "primary_isbn10": "0345505387",
                        "primary_isbn13": "9780345505385",
                        "publisher": "Random House",
                        "rank": 1,
                        "title": "THE EXILE: AN OUTLANDER GRAPHIC NOVEL",
                        "updated_date": "2011-02-10 16:47:13"
                    },
                    {
                        "age_group": "",
                        "author": "George Beard and Harold Hutchins",
                        "contributor": "by George Beard and Harold Hutchins",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:13",
                        "description": "Ook and Gluk, two cave boys, must learn kung-fu to save their prehistoric home from a menace from the future.",
                        "price": 9.99,
                        "primary_isbn10": "0545175305",
                        "primary_isbn13": "9780545175302",
                        "publisher": "Scholastic",
                        "rank": 2,
                        "title": "THE ADVENTURES OF OOK AND GLUK",
                        "updated_date": "2011-02-10 16:47:13"
                    },
                    {
                        "age_group": "",
                        "author": "Scott Snyder, Stephen King and Rafael Albuquereque",
                        "contributor": "by Scott Snyder, Stephen King and Rafael Albuquereque",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:13",
                        "description": "What do the roaring 20\u2019s and the wild west have in common? Vampires.",
                        "price": 24.99,
                        "primary_isbn10": "1401228305",
                        "primary_isbn13": "9781401228309",
                        "publisher": "DC Comics",
                        "rank": 3,
                        "title": "AMERICAN VAMPIRE, VOL. 1",
                        "updated_date": "2011-02-10 16:47:13"
                    },
                    {
                        "age_group": "",
                        "author": "Darwyn Cooke",
                        "contributor": "by Darwyn Cooke",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:14",
                        "description": "A second adventure of Parker, the antihero created by Richard Stark, is turned into a graphic novel. In his installment, Parker gets a new face... and revenge.",
                        "price": 24.99,
                        "primary_isbn10": "1600107621",
                        "primary_isbn13": "9781600107627",
                        "publisher": "IDW",
                        "rank": 4,
                        "title": "THE OUTFIT",
                        "updated_date": "2011-02-10 16:47:14"
                    },
                    {
                        "age_group": "",
                        "author": "Geoff Johns and Ivan Reis",
                        "contributor": "by Geoff Johns and Ivan Reis",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:14",
                        "description": "This collected edition of the event mini-series features some surprising deaths and even more surprising rebirths. Green Lantern and the recently resurrected Flash are at the forefront.",
                        "price": 29.99,
                        "primary_isbn10": "1401226930",
                        "primary_isbn13": "9781401226930",
                        "publisher": "DC Comics",
                        "rank": 5,
                        "title": "BLACKEST NIGHT",
                        "updated_date": "2011-02-10 16:47:14"
                    }
                ],
                "display_name": "Hardcover Graphic Books",
                "list_id": 20,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780345505385.jpg",
                "list_name": "Hardcover Graphic Books",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Fred Van Lente, Dean Koontz and Queenie Chan",
                        "contributor": "by Fred Van Lente, Dean Koontz and Queenie Chan",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:15",
                        "description": "Odd Thomas can communicate with the dead. In this Halloween adventure, he has his work cut out for him.",
                        "price": 10.99,
                        "primary_isbn10": "0345515609",
                        "primary_isbn13": "9780345515605",
                        "publisher": "Del Rey",
                        "rank": 1,
                        "title": "ODD IS ON OUR SIDE",
                        "updated_date": "2011-02-10 16:47:15"
                    },
                    {
                        "age_group": "",
                        "author": "Bryan Lee O\u2019Malley",
                        "contributor": "by Bryan Lee O\u2019Malley",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:15",
                        "description": "Meet Scott Pilgrim, twentysomething slacker, member of the band Sex Bob-Omb and would-be suitor of Ramona Flowers.",
                        "price": 11.95,
                        "primary_isbn10": "1932664084",
                        "primary_isbn13": "9781932664089",
                        "publisher": "Oni Press",
                        "rank": 2,
                        "title": "SCOTT PILGRIM: PRECIOUS LITTLE LIFE",
                        "updated_date": "2011-02-10 16:47:15"
                    },
                    {
                        "age_group": "",
                        "author": "Bryan Lee O\u2019Malley",
                        "contributor": "by Bryan Lee O\u2019Malley",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:15",
                        "description": "Scott Pilgrim faces off against the second of Ramona\u2019s evil ex-boyfriends. What will Knives Chau think? Aren\u2019t THEY dating?",
                        "price": 11.95,
                        "primary_isbn10": "1932664122",
                        "primary_isbn13": "9781932664126",
                        "publisher": "Oni Press",
                        "rank": 3,
                        "title": "SCOTT PILGRIM VS. THE WORLD",
                        "updated_date": "2011-02-10 16:47:15"
                    },
                    {
                        "age_group": "",
                        "author": "Bryan Lee O\u2019Malley",
                        "contributor": "by Bryan Lee O\u2019Malley",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:15",
                        "description": "In this fourth volume of the series, Scott gets a job (Best. Dishwasher. Ever) and battles Roxie the ninja, another of Ramona\u2019s evil exes.",
                        "price": 11.95,
                        "primary_isbn10": "1932664491",
                        "primary_isbn13": "9781932664492",
                        "publisher": "Oni Press",
                        "rank": 4,
                        "title": "SCOTT PILGRIM: GETS IT TOGETHER",
                        "updated_date": "2011-02-10 16:47:15"
                    },
                    {
                        "age_group": "",
                        "author": "Bryan Lee O\u2019Malley",
                        "contributor": "by Bryan Lee O\u2019Malley",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:15",
                        "description": "Can Ramona\u2019s twin ex-boyfriends be defeated? Sounds like a job for\u2026 Scott Pilgrim.",
                        "price": 11.95,
                        "primary_isbn10": "1934964107",
                        "primary_isbn13": "9781934964101",
                        "publisher": "Oni Press",
                        "rank": 5,
                        "title": "SCOTT PILGRIM VS. THE UNIVERSE",
                        "updated_date": "2011-02-10 16:47:15"
                    }
                ],
                "display_name": "Paperback Graphic Books",
                "list_id": 21,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9780345515605.jpg",
                "list_name": "Paperback Graphic Books",
                "updated": "WEEKLY"
            },
            {
                "books": [
                    {
                        "age_group": "",
                        "author": "Masashi Kishimoto",
                        "contributor": "by Masashi Kishimoto",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:16",
                        "description": "Poor Naruto: he must cope with a ninja summit and a target on the back of his good friend, Sasuke.",
                        "price": 9.99,
                        "primary_isbn10": "1421534754",
                        "primary_isbn13": "9781421534756",
                        "publisher": "VIZ Media",
                        "rank": 1,
                        "title": "NARUTO, VOL. 49",
                        "updated_date": "2011-02-10 16:47:16"
                    },
                    {
                        "age_group": "",
                        "author": "Kanoko Sakurakoji",
                        "contributor": "by Kanoko Sakurakoji",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:17",
                        "description": "Misao Harada can see into a magical realm where she is the bride demon of prophecy. How will she survive the pursuit of demons who want the power in her blood?",
                        "price": 9.99,
                        "primary_isbn10": "142153066X",
                        "primary_isbn13": "9781421530666",
                        "publisher": "VIZ Media",
                        "rank": 2,
                        "title": "BLACK BIRD, VOL. 6",
                        "updated_date": "2011-02-10 16:47:17"
                    },
                    {
                        "age_group": "",
                        "author": "Kazuki Takahashi and Naoyuki Kageyama",
                        "contributor": "by Kazuki Takahashi and Naoyuki Kageyama",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:17",
                        "description": "The next generation of Yu-Gi-Oh battle it out at the Duel Academy. In this volume, the two best students, Jaden and Chazz, compete.",
                        "price": 9.99,
                        "primary_isbn10": "142153472X",
                        "primary_isbn13": "9781421534725",
                        "publisher": "VIZ Media",
                        "rank": 3,
                        "title": "YU-GI-OH! GX, VOL. 5",
                        "updated_date": "2011-02-10 16:47:17"
                    },
                    {
                        "age_group": "",
                        "author": "Hidekaz Himaruya",
                        "contributor": "by Hidekaz Himaruya",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:17",
                        "description": "From the publisher: \"Get ready to brush up on world history with these handsome and hysterical personifications of the Axis Powers as they meet, become friends and form one of the most powerful alliances the world has ever seen.\"",
                        "price": 10.99,
                        "primary_isbn10": "1427818762",
                        "primary_isbn13": "9781427818768",
                        "publisher": "TOKYOPOP",
                        "rank": 4,
                        "title": "HETALIA AXIS POWERS, VOL. 1",
                        "updated_date": "2011-02-10 16:47:17"
                    },
                    {
                        "age_group": "",
                        "author": "Eiichiro Oda",
                        "contributor": "by Eiichiro Oda",
                        "contributor_note": "",
                        "created_date": "2011-02-10 16:47:17",
                        "description": "Monkey D. Luffy and his motley crew of would-be pirates search for a legendary treasure called \"One Piece.\" In this volume, Luffy gets help from some former foes in an attempt to rescue his brother.",
                        "price": 9.99,
                        "primary_isbn10": "1421534711",
                        "primary_isbn13": "9781421534718",
                        "publisher": "VIZ Media",
                        "rank": 5,
                        "title": "ONE PIECE, VOL. 55",
                        "updated_date": "2011-02-10 16:47:17"
                    }
                ],
                "display_name": "Manga",
                "list_id": 22,
                "list_image": "http://du.ec2.nytimes.com.s3.amazonaws.com/prd/books/9781421534756.jpg",
                "list_name": "Manga",
                "updated": "WEEKLY"
            }
        ],
        "published_date": "2010-10-24"
    },
    "status": "OK"
}
>
