
Open In Colab

!pip install wikipedia-api
!pip install requests
     
Collecting wikipedia-api
  Downloading Wikipedia_API-0.6.0-py3-none-any.whl (14 kB)
Requirement already satisfied: requests in /usr/local/lib/python3.10/dist-packages (from wikipedia-api) (2.31.0)
Requirement already satisfied: charset-normalizer<4,>=2 in /usr/local/lib/python3.10/dist-packages (from requests->wikipedia-api) (3.3.2)
Requirement already satisfied: idna<4,>=2.5 in /usr/local/lib/python3.10/dist-packages (from requests->wikipedia-api) (3.4)
Requirement already satisfied: urllib3<3,>=1.21.1 in /usr/local/lib/python3.10/dist-packages (from requests->wikipedia-api) (2.0.7)
Requirement already satisfied: certifi>=2017.4.17 in /usr/local/lib/python3.10/dist-packages (from requests->wikipedia-api) (2023.7.22)
Installing collected packages: wikipedia-api
Successfully installed wikipedia-api-0.6.0
Requirement already satisfied: requests in /usr/local/lib/python3.10/dist-packages (2.31.0)
Requirement already satisfied: charset-normalizer<4,>=2 in /usr/local/lib/python3.10/dist-packages (from requests) (3.3.2)
Requirement already satisfied: idna<4,>=2.5 in /usr/local/lib/python3.10/dist-packages (from requests) (3.4)
Requirement already satisfied: urllib3<3,>=1.21.1 in /usr/local/lib/python3.10/dist-packages (from requests) (2.0.7)
Requirement already satisfied: certifi>=2017.4.17 in /usr/local/lib/python3.10/dist-packages (from requests) (2023.7.22)

import wikipediaapi
import requests

# Input sentences
sentences = [
    "Apple is a leading tech company.",
    "I love apples as a fruit.",
    "Python is a popular programming language.",
    "The python is a non-venomous snake."
]

# Set a custom user-agent for accessing Wikipedia
headers = {
    'User-Agent': 'My_User_Agent/1.0 (Your_Name_or_Application_Name)'
}

# Initialize Wikipedia API with custom headers
wiki_wiki = wikipediaapi.Wikipedia('en', headers=headers)

# Function to perform named entity disambiguation
def disambiguate_entities(sentences):
    for sentence in sentences:
        words = sentence.split()
        for word in words:
            # Check if the word is a Wikipedia page title
            page = wiki_wiki.page(word)
            if page.exists():
                print(f"Entity Mention: {word}")
                print(f"Corresponding Wikipedia Entity: {page.fullurl}")
                print(f"Summary: {page.summary}")
                print("")

# Perform named entity disambiguation
disambiguate_entities(sentences)
     
Entity Mention: Apple
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Apple
Summary: An apple is a round, edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found. Apples have been grown for thousands of years in Asia and Europe and were introduced to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek, and European Christian tradition.
Apples grown from seed tend to be very different from those of their parents, and the resultant fruit frequently lacks desired characteristics. For commercial purposes, including botanical evaluation, apple cultivars are propagated by clonal grafting onto rootstocks. Apple trees grown without rootstocks tend to be larger and much slower to fruit after planting. Rootstocks are used to control the speed of growth and the size of the resulting tree, allowing for easier harvesting.
There are more than 7,500 cultivars of apples. Different cultivars are bred for various tastes and uses, including cooking, eating raw, and cider or apple juice production. Trees and fruit are prone to fungal, bacterial, and pest problems, which can be controlled by a number of organic and non-organic means. In 2010, the fruit's genome was sequenced as part of research on disease control and selective breeding in apple production.
Worldwide production of apples in 2021 was 93 million tonnes, with China accounting for nearly half of the total.

Entity Mention: is
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Copula_(linguistics)
Summary: In linguistics, a copula (plural: copulas or copulae; abbreviated cop) is a word or phrase that links the subject of a sentence to a subject complement, such as the word is in the sentence "The sky is blue" or the phrase was not being in the sentence "It was not being co-operative." The word copula derives from the Latin noun for a "link" or "tie" that connects two different things.A copula is often a verb or a verb-like word, though this is not universally the case. A verb that is a copula is sometimes called a copulative or copular verb. In English primary education grammar courses, a copula is often called a linking verb. In other languages, copulas show more resemblances to pronouns, as in Classical Chinese and Guarani, or may take the form of suffixes attached to a noun, as in Korean, Beja, and Inuit languages.
Most languages have one main copula (in English, the verb "to be"), although some (like Spanish, Portuguese and Thai) have more than one, while others have none. While the term copula is generally used to refer to such principal verbs, it may also be used for a wider group of verbs with similar potential functions (like become, get, feel and seem in English); alternatively, these might be distinguished as "semi-copulas" or "pseudo-copulas".

Entity Mention: a
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/A
Summary: A, or a, is the first letter and the first vowel of the Latin alphabet, used in the modern English alphabet, the alphabets of other western European languages and others worldwide. Its name in English is a (pronounced ), plural aes. It is similar in shape to the Ancient Greek letter Alpha, from which it derives. The uppercase version consists of the two slanting sides of a triangle, crossed in the middle by a horizontal bar. The lowercase version can be written in two forms: the double-storey a and single-storey ɑ. The latter is commonly used in handwriting and fonts based on it, especially fonts intended to be read by children, and is also found in italic type.
In English grammar, "a", and its variant "an", are indefinite articles.

Entity Mention: leading
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Leading
Summary: In typography, leading ( LED-ing) is the space between adjacent lines of type; the exact definition varies.
In hand typesetting, leading is the thin strips of lead (or aluminium) that were inserted between lines of type in the composing stick to increase the vertical distance between them. The thickness of the strip is called leading and is equal to the difference between the size of the type and the distance from one baseline to the next. For instance, given a type size of 10 points and a distance between baselines of 12 points, the leading would be 2 points.
The term is still used in modern page-layout software such as QuarkXPress, the Affinity Suite, and Adobe InDesign. Consumer-oriented word-processing software often talks of line spacing or, more accurately, interline spacing.

Entity Mention: tech
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Tech
Summary: Tech or The Tech may refer to:

An abbreviation of technology or technician
Tech Dinghy, an American sailing dinghy developed at MIT
Tech (mascot), the mascot of Louisiana Tech University, U.S.
Tech (river), in southern France
"Tech" (Smash), a 2012 episode of TV series Smash
The Tech (newspaper), newspaper at the Massachusetts Institute of Technology
The Tech Interactive, formerly The Tech Museum of Innovation, or The Tech, a museum in San Jose, California, U.S.
Tech Tower, a building at the Georgia Institute of Technology, Atlanta, Georgia, U.S.

Entity Mention: I
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/I
Summary: I, or i, is the ninth letter and the third vowel letter of the Latin alphabet, used in the modern English alphabet, the alphabets of other western European languages and others worldwide. Its name in English is i (pronounced ), plural ies.

Entity Mention: love
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Love
Summary: Love encompasses a range of strong and positive emotional and mental states, from the most sublime virtue or good habit, the deepest interpersonal affection, to the simplest pleasure. An example of this range of meanings is that the love of a mother differs from the love of a spouse, which differs from the love for food. Most commonly, love refers to a feeling of strong attraction and emotional attachment.Love is considered to be both positive and negative, with its virtue representing human kindness, compassion, and affection—"the unselfish, loyal and benevolent concern for the good of another"—and its vice representing a human moral flaw akin to vanity, selfishness, amour-propre, and egotism, potentially leading people into a type of mania, obsessiveness, or codependency. It may also describe compassionate and affectionate actions towards other humans, oneself, or animals. In its various forms, love acts as a major facilitator of interpersonal relationships and, owing to its central psychological importance, is one of the most common themes in the creative arts. Love has been postulated to be a function that keeps human beings together against menaces and to facilitate the continuation of the species.Ancient Greek philosophers identified six forms of love: familial love (storge), friendly love or platonic love (philia), romantic love (eros), self-love (philautia), guest love (xenia), and divine or unconditional love (agape). Modern authors have distinguished further varieties of love: unrequited love, empty love, companionate love, consummate love, infatuated love, self-love, and courtly love. Numerous cultures have also distinguished Ren, Yuanfen, Mamihlapinatapai, Cafuné, Kama, Bhakti, Mettā, Ishq, Chesed, Amore, Charity, Saudade (and other variants or symbioses of these states), as culturally unique words, definitions, or expressions of love in regard to specified "moments" currently lacking in the English language.The color wheel theory of love defines three primary, three secondary, and nine tertiary love styles, describing them in terms of the traditional color wheel. The triangular theory of love suggests intimacy, passion, and commitment are core components of love. Love has additional religious or spiritual meaning. This diversity of uses and meanings, combined with the complexity of the feelings involved, makes love unusually difficult to consistently define, compared to other emotional states.

Entity Mention: apples
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Apple
Summary: An apple is a round, edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found. Apples have been grown for thousands of years in Asia and Europe and were introduced to North America by European colonists. Apples have religious and mythological significance in many cultures, including Norse, Greek, and European Christian tradition.
Apples grown from seed tend to be very different from those of their parents, and the resultant fruit frequently lacks desired characteristics. For commercial purposes, including botanical evaluation, apple cultivars are propagated by clonal grafting onto rootstocks. Apple trees grown without rootstocks tend to be larger and much slower to fruit after planting. Rootstocks are used to control the speed of growth and the size of the resulting tree, allowing for easier harvesting.
There are more than 7,500 cultivars of apples. Different cultivars are bred for various tastes and uses, including cooking, eating raw, and cider or apple juice production. Trees and fruit are prone to fungal, bacterial, and pest problems, which can be controlled by a number of organic and non-organic means. In 2010, the fruit's genome was sequenced as part of research on disease control and selective breeding in apple production.
Worldwide production of apples in 2021 was 93 million tonnes, with China accounting for nearly half of the total.

Entity Mention: as
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/As
Summary: As, AS, A. S., A/S or similar may refer to:

Entity Mention: a
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/A
Summary: A, or a, is the first letter and the first vowel of the Latin alphabet, used in the modern English alphabet, the alphabets of other western European languages and others worldwide. Its name in English is a (pronounced ), plural aes. It is similar in shape to the Ancient Greek letter Alpha, from which it derives. The uppercase version consists of the two slanting sides of a triangle, crossed in the middle by a horizontal bar. The lowercase version can be written in two forms: the double-storey a and single-storey ɑ. The latter is commonly used in handwriting and fonts based on it, especially fonts intended to be read by children, and is also found in italic type.
In English grammar, "a", and its variant "an", are indefinite articles.

Entity Mention: Python
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Python
Summary: Python may refer to:

Entity Mention: is
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Copula_(linguistics)
Summary: In linguistics, a copula (plural: copulas or copulae; abbreviated cop) is a word or phrase that links the subject of a sentence to a subject complement, such as the word is in the sentence "The sky is blue" or the phrase was not being in the sentence "It was not being co-operative." The word copula derives from the Latin noun for a "link" or "tie" that connects two different things.A copula is often a verb or a verb-like word, though this is not universally the case. A verb that is a copula is sometimes called a copulative or copular verb. In English primary education grammar courses, a copula is often called a linking verb. In other languages, copulas show more resemblances to pronouns, as in Classical Chinese and Guarani, or may take the form of suffixes attached to a noun, as in Korean, Beja, and Inuit languages.
Most languages have one main copula (in English, the verb "to be"), although some (like Spanish, Portuguese and Thai) have more than one, while others have none. While the term copula is generally used to refer to such principal verbs, it may also be used for a wider group of verbs with similar potential functions (like become, get, feel and seem in English); alternatively, these might be distinguished as "semi-copulas" or "pseudo-copulas".

Entity Mention: a
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/A
Summary: A, or a, is the first letter and the first vowel of the Latin alphabet, used in the modern English alphabet, the alphabets of other western European languages and others worldwide. Its name in English is a (pronounced ), plural aes. It is similar in shape to the Ancient Greek letter Alpha, from which it derives. The uppercase version consists of the two slanting sides of a triangle, crossed in the middle by a horizontal bar. The lowercase version can be written in two forms: the double-storey a and single-storey ɑ. The latter is commonly used in handwriting and fonts based on it, especially fonts intended to be read by children, and is also found in italic type.
In English grammar, "a", and its variant "an", are indefinite articles.

Entity Mention: popular
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Popular
Summary: Popularity or social status is the quality of being well liked, admired or well known to a particular group.
Popular may also refer to:

Entity Mention: programming
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Program
Summary: Program, programme, programmer, or programming may refer to:

Entity Mention: The
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/The
Summary: The ( ) is a grammatical article in English, denoting persons or things that are already or about to be mentioned, under discussion, implied or otherwise presumed familiar to listeners, readers, or speakers. It is the definite article in English. The is the most frequently used word in the English language; studies and analyses of texts have found it to account for seven percent of all printed English-language words. It is derived from gendered articles in Old English which combined in Middle English and now has a single form used with nouns of any gender. The word can be used with both singular and plural nouns, and with a noun that starts with any letter. This is different from many other languages, which have different forms of the definite article for different genders or numbers.

Entity Mention: python
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Python
Summary: Python may refer to:

Entity Mention: is
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/Copula_(linguistics)
Summary: In linguistics, a copula (plural: copulas or copulae; abbreviated cop) is a word or phrase that links the subject of a sentence to a subject complement, such as the word is in the sentence "The sky is blue" or the phrase was not being in the sentence "It was not being co-operative." The word copula derives from the Latin noun for a "link" or "tie" that connects two different things.A copula is often a verb or a verb-like word, though this is not universally the case. A verb that is a copula is sometimes called a copulative or copular verb. In English primary education grammar courses, a copula is often called a linking verb. In other languages, copulas show more resemblances to pronouns, as in Classical Chinese and Guarani, or may take the form of suffixes attached to a noun, as in Korean, Beja, and Inuit languages.
Most languages have one main copula (in English, the verb "to be"), although some (like Spanish, Portuguese and Thai) have more than one, while others have none. While the term copula is generally used to refer to such principal verbs, it may also be used for a wider group of verbs with similar potential functions (like become, get, feel and seem in English); alternatively, these might be distinguished as "semi-copulas" or "pseudo-copulas".

Entity Mention: a
Corresponding Wikipedia Entity: https://en.wikipedia.org/wiki/A
Summary: A, or a, is the first letter and the first vowel of the Latin alphabet, used in the modern English alphabet, the alphabets of other western European languages and others worldwide. Its name in English is a (pronounced ), plural aes. It is similar in shape to the Ancient Greek letter Alpha, from which it derives. The uppercase version consists of the two slanting sides of a triangle, crossed in the middle by a horizontal bar. The lowercase version can be written in two forms: the double-storey a and single-storey ɑ. The latter is commonly used in handwriting and fonts based on it, especially fonts intended to be read by children, and is also found in italic type.
In English grammar, "a", and its variant "an", are indefinite articles.



     


     
