# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

CaseDoc.destroy_all
ProcedureDoc.destroy_all
Event.destroy_all
Procedure.destroy_all
Clerk.destroy_all
Jurisdiction.destroy_all
Opponent.destroy_all
Invoice.destroy_all
Notification.destroy_all
Event.destroy_all
Document.destroy_all
Case.destroy_all
Lawyer.destroy_all
LawFirm.destroy_all
User.destroy_all
Business.destroy_all

# puts '--------------------'

sample_events = ['Pièce reçue', 'Conclusions créées', 'Conclusions mises à jour', 'Conclusions supprimées', 'Nouveau document (partie adverse)', 'Prochaine audience', 'Audience reportée', 'Affaire plaidée']

url_kbis =   'https://res.cloudinary.com/iambome/image/upload/v1567168160/kbis-final_kpnkre.pdf'
url_jugement = 'https://res.cloudinary.com/iambome/image/upload/v1567168499/JUSB1833465N_f1yvqr.pdf'
url_statuts = 'https://res.cloudinary.com/iambome/image/upload/v1567168412/statuts-de-socie%CC%81te%CC%81-hellotenor_tgydsw.pdf'
url_permis = 'https://res.cloudinary.com/iambome/image/upload/v1567010268/Permis_hi72vw.pdf'
url_conclusions_one = 'https://www.pierrevasarely.com/pdfprocedures/conclusions.pdf'
url_conclusions_two = 'https://www.dragonbleutv.com/images/pdf/CONCLUSIONS%20cabinet%20Charrie%60re-Bournazel%20appel.pdf'
url_letter = 'http://www.avocatparis.org/system/files/publications/tmonteran-rapport.pdf'
url_mise_en_demeure = 'https://www.opc.gouv.qc.ca/fileadmin/media/documents/zone_enseignants/2droit_consommateur_med_exemple.pdf'

puts 'Creating business...'

airbnb = Business.create!(
    name:          'Assurup',
    legal_status:  'SAS',
    address:       "4 place de l'Opéra, 75002 Paris",
    phone:         '01 84 88 40 00'
)
airbnb.remote_logo_url = "https://www.assurup.com/resources/aws/img/assurup-images/logo-assurup/assurup-licorne-bleu.png"
airbnb.save!

aircall = Business.create!(
    name:          'Aircall',
    legal_status:  'SAS',
    address:       "11 Rue Saint-Georges, 75009 Paris",
    phone:         '01 76 36 06 95'
)
aircall.remote_logo_url = "https://cdn2.hubspot.net/hubfs/875767/Aircall_Logo_Icon-1.png"
aircall.save!

amazon = Business.create!(
    name:          'Qonto',
    legal_status:  'SAS',
    address:       '67 boulevard du General Leclerc, 92110 Clichy',
    phone:         '01 46 17 10 00',
)
amazon.remote_logo_url = 'https://qonto-assets.s3.amazonaws.com/homepage/Qonto_Meta_og_logo.png'
amazon.save!

apple = Business.create!(
    name:          'Luckey Homes',
    legal_status:  'SAS',
    address:       "7 Avenue d'Iéna, 75116 Paris",
    phone:         '01 56 52 96 00'
)
apple.remote_logo_url = "https://i0.wp.com/startup.info/wp-content/uploads/2017/05/luckey_homes.png?fit=810%2C810&ssl=1"
apple.save!

back_market = Business.create!(
    name:          'Back Market',
    legal_status:  'SAS',
    address:       '154 boulevard Macdonald, 75019 Paris',
    phone:         '01 42 00 10 20'
)

bankin = Business.create!(
    name:          'Bankin (Perspecteev)',
    legal_status:  'SAS',
    address:       '4 Rue de la Pierre Levée, 75011 Paris',
    phone:         '01 42 00 10 20'
)
bankin.remote_logo_url = "https://pbs.twimg.com/profile_images/687283232266678272/RaflJ7ay.png"
bankin.save!

blablacar = Business.create!(
    name:          'Blablacar',
    legal_status:  'SAS',
    address:       '6 Rue Ménars, 75002 Paris',
    phone:         '01 42 00 10 20'
)

deezer = Business.create!(
    name:          'Deezer',
    legal_status:  'SAS',
    address:       "12 Rue d'Athènes, 75009 Paris",
    phone:         '01 55 80 69 00'
)

delicorner = Business.create!(
    name:          'Delicorner',
    legal_status:  'SAS',
    address:       '18 Boulevard Montmartre, 75009 Paris',
    phone:         '01 49 70 05 72'
)

deliveroo = Business.create!(
    name:          'Deliveroo France',
    legal_status:  'SAS',
    address:       '1bis avenue de la République, 75011 Paris',
    phone:         '09 77 55 03 30'
)

facebook = Business.create!(
    name:          'Star Of Service',
    legal_status:  'SAS',
    address:       '6 Rue Ménars, 75002 Paris',
    phone:         '01 42 00 10 20'
)
# facebook.remote_logo_url = "https://pbs.twimg.com/profile_images/614044930286206976/z8cT5n8D.jpg"
# facebook.save!

free = Business.create!(
    name:          'Free (Groupe Iliad)',
    legal_status:  'SA',
    address:       "16 rue de la Ville-l'Évêque, 75008 Paris",
    phone:         '01 73 50 20 00'
)

frichti = Business.create!(
    name:          'Frichti',
    legal_status:  'SAS',
    address:       '5 Rue Charlot, 75003 Paris',
    phone:         '01 76 35 01 74'
)
frichti.remote_logo_url = "https://cdn.shopify.com/s/files/1/0832/9391/t/171/assets/pictoFrichtiYellow.png?0"
frichti.save!

google = Business.create!(
    name:          'Algolia',
    legal_status:  'SARL',
    address:       '8 rue Londres, 75009 Paris',
    phone:         '01 42 68 53 00'
)
google.remote_logo_url = "https://marketplace.magento.com/media/catalog/product/a/l/algolia-square_1_2_1_1_1_1_1_1_1_1_11.png"
google.save!

netflix = Business.create!(
    name:          'Afrostream',
    legal_status:  'SAS',
    address:       "148 rue de l'Université, 75007 Paris",
    phone:         '01 42 68 53 00'
)

ovh = Business.create!(
    name:          'OVH',
    legal_status:  'SARL',
    address:       '19 Place Françoise Dorin, 75017 Paris',
    phone:         '01 42 68 53 00'
)

side = Business.create!(
    name:          'Side',
    legal_status:  'SAS',
    address:       '40 Rue de la Folie-Regnault, 75011 Paris',
    phone:         '01 76 34 02 96'
)

spotify = Business.create!(
    name:          'Spotify France',
    legal_status:  'SARL',
    address:       '166 rue Faubourg Saint-Honoré, 75008 Paris',
    phone:         '01 47 64 11 04 '
)
spotify.remote_logo_url = "https://upload.wikimedia.org/wikipedia/fr/d/d1/Spotify_logo_sans_texte.svg.png"
spotify.save!

uber = Business.create!(
    name:          'Heech',
    legal_status:  'SAS',
    address:       '5 rue Charlot, 75003 Paris',
    phone:         '01 42 68 53 00'
)
uber.remote_logo_url = "https://images.ctfassets.net/37l920h5or7f/5veFGObZjqmQY8qKu6auAW/abe271ddb25ae87d1212a4da798d3229/asset-030.jpg?fm=jpg&q=70&w=1600"
uber.save!

veepee = Business.create!(
    name:          'Veepee',
    legal_status:  'SAS',
    address:       '162 Rue Ambroise Croizat, 93200 Saint-Denis',
    phone:         '0 809 10 88 88'
)
veepee.remote_logo_url = "https://image.winudf.com/v2/image1/Y29tLnF0bS5zY2FuX2ljb25fMTU1MTgxNDQ2NF8wMTE/icon.png?w=170&fakeurl=1"
veepee.save!

vestiaire_collective = Business.create!(
    name:          'Vestiaire Collective',
    legal_status:  'SAS',
    address:       '33 bld du General Martial Valin, 75015 Paris',
    phone:         '09 70 25 37 37'
)

puts 'Creating users...'

airbnb_user = User.create!(
    first_name: 'Jeremy',
    last_name:  'Dahan',
    email:      'jeremy@assurup.fr',
    password:   '134569',
    business:    airbnb
)

amazon_user = User.create!(
    first_name: 'Alexandre',
    last_name:  'Prot',
    email:      'alex@qonto.eu',
    password:   '134569',
    business:    amazon
)

aircall_user = User.create!(
    first_name: 'Olivier',
    last_name:  'Pailhes',
    email:      'olivier@aircall.io',
    password:   '134569',
    business:    aircall
)

apple_user = User.create!(
    first_name: 'Aurélien',
    last_name:  'Malfait',
    email:      'bome.contact@gmail.com',
    password:   '134569',
    business:    apple
)

blablacar_user = User.create!(
    first_name: 'Frédéric',
    last_name:  'Mazzela',
    email:      'fred@blablacar.fr',
    password:   '134569',
    business:    blablacar
)

delicorner_user = User.create!(
    first_name: 'Antoine',
    last_name:  'Tran',
    email:      'antoine@delicorner.co',
    password:   '134569',
    business:    delicorner
)

deliveroo_user = User.create!(
    first_name: 'Hugues',
    last_name:  'Decosse',
    email:      'will@deliveroo.com',
    password:   '134569',
    business:    deliveroo
)

facebook_user = User.create!(
    first_name: 'Lucas',
    last_name:  'Lambertini',
    email:      'lucas@starofservice.com',
    password:   '134569',
    business:    facebook
)
facebook.remote_logo_url = "https://pbs.twimg.com/profile_images/614044930286206976/z8cT5n8D.jpg"
facebook.save!

free_user = User.create!(
    first_name: 'Xavier',
    last_name:  'Niel',
    email:      'xavier@free.fr',
    password:   '134569',
    business:    free
)

google_user = User.create!(
    first_name: 'Nicolas',
    last_name:  'Dessaignerry',
    email:      'nicolas@algolia.com',
    password:   '134569',
    business:    google
)

uber_user = User.create!(
    first_name: 'Teddy',
    last_name:  'Pellerin',
    email:      'teddy@heetch.fr',
    password:   '134569',
    business:    uber
)

side_user = User.create!(
    first_name: 'David',
    last_name:  'Benzaken',
    email:      'david@side.co',
    password:   '134569',
    business:    side
)

spotify_user = User.create!(
    first_name: 'Alexis',
    last_name:  'De Gemini',
    email:      'alexis@deezer.fr',
    password:   '134569',
    business:    deezer
)

veepee_user = User.create!(
    first_name: 'Jacques-Antoine',
    last_name:  'Granjon',
    email:      'jag@veepee.fr',
    password:   '134569',
    business:    veepee
)

user_as_lawyer = User.create!(
    first_name: 'Serge',
    last_name:  'Vatine',
    email:      'serge@bold.co',
    password:   '134567'
)

puts 'Creating a law firm...'

random_law_firm = LawFirm.create!(
    name:            'Bold Avocats',
    address:         '19, rue des Petites-Ecuries, 75010',
    city:            'Paris',
    phone:           '01 53 42 63 00',
    firm_speciality: 'Droit des affaires',
)
random_law_firm.remote_logo_url = "http://wearebold.co/wp-content/uploads/2018/01/@2xbol_LOGO.png"
random_law_firm.save!

puts 'Creating a lawyer...'

bold_lawyer = Lawyer.create!(
    job:         'Avocat',
    speciality:  'Droit pénal des entreprises',
    user:        user_as_lawyer,
    law_firm:    random_law_firm
)

puts 'Creating cases...'

case_one = Case.create!(
    title:          'Assurup c. Groupama',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En cours',
    fees:           45000,
    user:           airbnb_user,
    lawyer:         bold_lawyer
)

case_two = Case.create!(
    title:          "Lucky Homes c. Mairie de Paris",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En attente',
    fees:            15000,
    user:           apple_user,
    lawyer:         bold_lawyer
)

case_three = Case.create!(
    title:          'Blablacar c. Confebus',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:           7500,
    user:           blablacar_user,
    lawyer:         bold_lawyer
)

case_four = Case.create!(
    title:          'Star Of Service c. CNIL',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            11500,
    user:           facebook_user,
    lawyer:         bold_lawyer
)

case_five = Case.create!(
    title:          'Algolia c. Internet Explorer',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            71500,
    user:           google_user,
    lawyer:         bold_lawyer
)

case_six = Case.create!(
    title:          "Algolia c. Early Birds",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            91500,
    user:           google_user,
    lawyer:         bold_lawyer
)

case_seven = Case.create!(
    title:          'Heetch c. Taxis Parisiens',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            13500,
    user:           uber_user,
    lawyer:         bold_lawyer
)

case_eight = Case.create!(
    title:          'Heetch c. Taxis Marseillais',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            15000,
    user:           uber_user,
    lawyer:         bold_lawyer
)

case_nine = Case.create!(
    title:          'Heetch c. Kapten',
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            9500,
    user:           uber_user,
    lawyer:         bold_lawyer
)

case_ten = Case.create!(
    title:          "Qonto c. Etat français",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            111500,
    user:           amazon_user,
    lawyer:         bold_lawyer
)

case_eleven = Case.create!(
    title:          "Free c. Bfm Tv",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En cours',
    fees:            23600,
    user:           free_user,
    lawyer:         bold_lawyer
)

case_twelve = Case.create!(
    title:          "Deezer c. M Pokora",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En cours',
    fees:            100000,
    user:           spotify_user,
    lawyer:         bold_lawyer
)

case_thirteen = Case.create!(
    title:          "Qonto c. Windows",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            10000,
    user:           amazon_user,
    lawyer:         bold_lawyer
)

case_fourteen = Case.create!(
    title:          "Veepee c. DGCCRF",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En cours',
    fees:            10899,
    user:           veepee_user,
    lawyer:         bold_lawyer
)

case_fifteen = Case.create!(
    title:          "Deliveroo c. JustEat",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            10899,
    user:           deliveroo_user,
    lawyer:         bold_lawyer
)

case_sixteen = Case.create!(
    title:          "Side c. Sephora",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En cours',
    fees:            10899,
    user:           side_user,
    lawyer:         bold_lawyer
)

case_seventeen = Case.create!(
    title:          "Deliveroo c. Coursiers",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'En cours',
    fees:            10899,
    user:           deliveroo_user,
    lawyer:         bold_lawyer
)

case_eighteen = Case.create!(
    title:          "Delicorner c. LeBonCoin",
    practice_area:  'Droit des affaires',
    description:    'Lorem ipsum',
    status:         'Terminé',
    fees:            10899,
    user:           delicorner_user,
    lawyer:         bold_lawyer
)

puts 'Creating jurisdictions...'

mediateur = Jurisdiction.create!(
    name:            'Médiateur de la République',
    address:         'Paris'
)

huissier = Jurisdiction.create!(
    name:            'Me Frédéric Nadjar',
    address:         'Paris'
)

TC = Jurisdiction.create!(
    name:            'T.com. Paris',
    address:         '1 Quai de la Corse, 75004 Paris'
)

cour_d_appel = Jurisdiction.create!(
    name:            "CA Paris",
    address:         '10 Boulevard du Palais, 75001 Paris'
)

puts 'Creating procedures...'

procedure_one = Procedure.create!(
    name:                 'Médiation - Phase 1',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('01/02/2018'),
    end_date:              Date.parse('27/02/2018'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0,
    case:                  case_one,
    jurisdiction:          mediateur
)

procedure_two = Procedure.create!(
    name:                 'Médiation - Phase 2',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('01/04/2018'),
    end_date:              Date.parse('12/04/2018'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0,
    case:                  case_one,
    jurisdiction:          mediateur
)

procedure_three = Procedure.create!(
    name:                 'Médiation - Phase 3',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('01/09/2019'),
    status:                'En attente',
    number_of_documents:   1,
    cost:                  0,
    case:                  case_one,
    jurisdiction:          mediateur
)

procedure_five = Procedure.create!(
    name:                 'Saisine huissier',
    grievance:            'Lorem impsum',
    legal_action:         'Procédure en contentieux',
    deadline:              30,
    start_date:            Date.parse('17/6/2019'),
    end_date:              Date.parse('17/6/2019'),
    status:                'Terminée',
    number_of_documents:   2,
    cost:                  177.90,
    case:                  case_one,
    jurisdiction:          huissier
)

procedure_four = Procedure.create!(
    name:                 'Concurrence déloyale (déf.)',
    grievance:            'Notre activité ne concurrence pas celle des bus car nous ne visons pas à organiser un transport',
    legal_action:         'Procédure en contentieux',
    deadline:              30,
    start_date:            Date.parse('19/10/2018'),
    end_date:              Date.parse('13/8/2019'),
    status:                'Gagnée',
    number_of_documents:   5,
    cost:                  74.50,
    case:                  case_one,
    jurisdiction:          TC
)

procedure_six = Procedure.create!(
    name:                 'Appel (demandeur)',
    grievance:            'Je trouve la décision rendue en première instance peu fondée',
    legal_action:         'Procédure en contentieux',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'En attente',
    number_of_documents:   5,
    cost:                  225.00,
    case:                  case_one,
    jurisdiction:          cour_d_appel
)

procedure_seven = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'En attente',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_two,
    jurisdiction:          mediateur
)

procedure_eight = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_three,
    jurisdiction:          mediateur
)

procedure_nine = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_four,
    jurisdiction:          mediateur
)

procedure_ten = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_five,
    jurisdiction:          mediateur
)

procedure_eleven = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_six,
    jurisdiction:          mediateur
)

procedure_twelve = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_seven,
    jurisdiction:          mediateur
)

procedure_thirteen = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_eight,
    jurisdiction:          mediateur
)

procedure_fourteen = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_nine,
    jurisdiction:          mediateur
)

procedure_fifteen = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_ten,
    jurisdiction:          mediateur
)

procedure_sixteen = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_eleven,
    jurisdiction:          mediateur
)

procedure_seventeen = Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_twelve,
    jurisdiction:          mediateur
)

Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_thirteen,
    jurisdiction:          mediateur
)

Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_fourteen,
    jurisdiction:          mediateur
)

Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_fifteen,
    jurisdiction:          mediateur
)

Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_sixteen,
    jurisdiction:          mediateur
)

Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_seventeen,
    jurisdiction:          mediateur
)

Procedure.create!(
    name:                 'Médiation',
    grievance:            'Lorem ipsum',
    legal_action:         'Procédure amiable',
    deadline:              30,
    start_date:            Date.parse('20/8/2019'),
    status:                'Archivée',
    number_of_documents:   1,
    cost:                  0.00,
    case:                  case_eighteen,
    jurisdiction:          mediateur
)

puts 'Creating documents...'

document_one = Document.create!(
    name: 'Extrait de Kbis',
    category: 'Document de société',
    user: airbnb_user,
    remote_storage_url: url_kbis
)

document_two = Document.create!(
    name: 'Statuts de la société',
    category: 'Document de société',
    user: airbnb_user,
    remote_storage_url: url_statuts
)

document_three = Document.create!(
    name: 'Jugement Tribunal de commerce',
    category: 'Décision de justice',
    user: airbnb_user,
    remote_storage_url: url_jugement
)

document_four = Document.create!(
    name: 'Conclusions',
    category: 'Conclusions',
    user: airbnb_user,
    remote_storage_url: url_conclusions_one
)

document_five = Document.create!(
    name: 'Conclusions Me Braffman',
    category: 'Conclusions Adverses',
    user: airbnb_user,
    remote_storage_url: url_conclusions_two
)

document_five_bis = Document.create!(
    name: 'Lettre recommandée avec accusé de réception',
    category: 'Correspondance',
    user: airbnb_user,
    remote_storage_url: url_letter
)

document_six = Document.create!(
    name: 'Mise en demeure',
    category: 'Correspondance',
    user: airbnb_user,
    remote_storage_url: url_mise_en_demeure
)

document_seven = Document.create!(
    name: 'Lettre partie adverse n°1',
    category: 'Correspondance',
    user: airbnb_user,
    remote_storage_url: url_letter
)

document_eight = Document.create!(
    name: 'Réponse partie adverse n°1',
    category: 'Correspondance',
    user: airbnb_user,
    remote_storage_url: url_letter
)

document_nine = Document.create!(
    name: 'Lettre partie adverse n°2',
    category: 'Correspondance',
    user: airbnb_user,
    remote_storage_url: url_letter
)

document_ten = Document.create!(
    name: 'Réponse partie adverse n°2',
    category: 'Correspondance',
    user: airbnb_user,
    remote_storage_url: url_letter
)

puts 'Creating case_docs...'

case_doc_one = CaseDoc.create!(
  document_id: document_one.id,
  case_id: case_one.id,
  accepted: true
)
# case_doc_one.document = document_one
# case_doc_one.case = case_one

case_doc_two = CaseDoc.create!(
  document_id: document_two.id,
  case_id: case_one.id,
  accepted: true
)
# case_doc_two.document = document_two
# case_doc_two.case = case_one

case_doc_three = CaseDoc.create!(
  document: document_three,
  case: case_one,
  accepted: true
)

case_doc_four = CaseDoc.create!(
  document: document_four,
  case: case_one
)

case_doc_five = CaseDoc.create!(
  document: document_five,
  case: case_one
)

case_doc_five_bis = CaseDoc.create!(
  document: document_five_bis,
  case: case_one
)

case_doc_six = CaseDoc.create!(
  document: document_six,
  case: case_one
)

case_doc_seven = CaseDoc.create!(
  document: document_seven,
  case: case_one
)

case_doc_eight = CaseDoc.create!(
  document: document_eight,
  case: case_one
)

case_doc_nine = CaseDoc.create!(
  document: document_nine,
  case: case_one
)

case_doc_ten = CaseDoc.create!(
  document: document_ten,
  case: case_one
)

puts 'Creating events...'

10.times do
  case_one_event = Event.new(
    title: sample_events.sample,
    description: "Pas de description",
    created_at: (rand*365).days.ago,
    case: case_one
  )
  case_one_event.save!
end

10.times do
    case_two_event = Event.new(
        title: sample_events.sample,
        description: "Pas de description",
        created_at: (rand*365).days.ago,
        case: case_one
    )
    case_two_event.save!
end

10.times do
    case_three_event = Event.new(
      title: sample_events.sample,
      description: "Pas de description",
      created_at: (rand*365).days.ago,
      case: case_one
    )
    case_three_event.save!
end


puts 'Creating 10 notifications...'
# create_table "notifications", force: :cascade do |t|
#     t.bigint "case_id"
#     t.string "receiver_type"
#     t.bigint "receiver_id"
#     t.string "content"
#     t.boolean "read", default: false
# ['Décision de justice', 'Conclusions', 'Correspondance', 'Docs perso', 'Document de société', 'Facture']


notif1 = Notification.new(
    case: case_one,
    receiver_type: "User",
    receiver: airbnb_user,
    content: "Nouveau document : pièce d'identité",
    read: true
)

notif1.save!

notif2 = Notification.new(
    case: case_two,
    receiver_type: "User",
    receiver: amazon_user,
    content: "Nouveau document : bilan comptable",
    read: true
)

notif2.save!

notif3 = Notification.new(
    case: case_four,
    receiver_type: "User",
    receiver: facebook_user,
    content: "Nouveau document :  bulletin de paie",
    read: true
)

notif3.save!

notif4 = Notification.create!(
    case: case_fourteen,
    receiver_type: "User",
    receiver: veepee_user,
    content: "Document refusé : avis-d'impôts",
    read: true
)

puts '- - - - - - - - - - - - - - - -'

puts 'Finished!'
