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
