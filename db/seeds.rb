# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Service.destroy_all
Review.destroy_all
Company.destroy_all
Leader.destroy_all
ImageCarousel.destroy_all
AdminUser.destroy_all

service1 = Service.create!(
    name: 'Finance & Accounting Transformation',
    short_description: 'Build a financial function for operational excellence',
    long_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sit amet porttitor tortor. Maecenas mollis rhoncus lacus sed vehicula. Duis laoreet fermentum ex, nec scelerisque mauris cursus ac. Mauris vel euismod quam. Etiam auctor sapien cursus enim feugiat mattis. Aenean ac orci sit amet metus porta feugiat euismod in ligula. Curabitur sagittis rhoncus purus vitae feugiat. Cras volutpat id eros sit amet lobortis. Etiam sollicitudin lacus quis mauris mattis, nec aliquam nulla scelerisque. Curabitur lacinia at diam tincidunt porta. Duis eu facilisis erat, eget porta nunc.',
    icon_url: 'https://www.gdurl.com/TVHd'
)

service2 = Service.create!(
    name: 'Tools for Management',
    short_description: 'Design and deploy effective tools for decision making',
    long_description: 'Proin blandit quam eros, nec mollis nibh scelerisque sed. Vestibulum auctor condimentum dolor nec pharetra. Aenean tempor mattis feugiat. Nunc dictum tincidunt velit, id faucibus lorem hendrerit id. Maecenas sed mollis sem, ac suscipit nisl. Nam placerat nulla vitae massa finibus hendrerit. Suspendisse semper risus augue, non efficitur diam tincidunt ullamcorper.',
    icon_url: 'https://www.gdurl.com/8FqW'
)

service3 = Service.create!(
    name: 'Business Development',
    short_description: 'Identify and explore business growth opportunities',
    long_description: 'Fusce pretium, sem a ullamcorper auctor, velit magna vestibulum turpis, ut posuere mi ex a libero. Sed molestie venenatis turpis, non luctus erat porta id. Nullam sed orci et dolor hendrerit rhoncus sit amet in nisi. Morbi nunc dui, bibendum vel erat sed, lacinia mattis metus. Nam volutpat efficitur sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus eget ex pulvinar, euismod quam id, imperdiet libero.',
    icon_url: 'https://www.gdurl.com/JFmf'
)

service4 = Service.create!(
    name: 'Diagnostic and Advisory Services',
    short_description: 'Assess your business and implement best practices for growth',
    long_description: 'Phasellus at semper sapien. Nam efficitur venenatis tortor, at convallis neque pharetra id. Ut a sapien ac velit condimentum dignissim. Donec sollicitudin consequat pulvinar. Etiam rhoncus ex id pharetra laoreet. In vehicula est a purus pulvinar, eu vulputate elit scelerisque. Nullam eu maximus felis, et vulputate massa. Duis faucibus sagittis est, vel rhoncus nulla ornare ut. Sed pellentesque orci ac arcu vulputate, eget venenatis nisl hendrerit.',
    icon_url: 'https://www.gdurl.com/QUHu'
)

review1 = Review.create!(
    reviewer_name: 'TODO Peacefirst Reviewer Name',
    reviewer_description: 'TODO Peacefirst Reviewer Title',
    reviewer_location: 'TODO Peacefirst Comapny Name',
    title: 'Review',
    body: 'Athira did wonders for our company. Our company culture has been focused and driven towards our new goals.',
    logo_url: 'https://www.gdurl.com/ca_Z'
)

review2 = Review.create!(
    reviewer_name: 'TODO Datakind Reviewer Name',
    reviewer_description: 'TODO Datakind Reviewer Title',
    reviewer_location: 'TODO Datakind Company Name',
    title: 'Review',
    body: 'After a year of working with Athira, I have saved hundreds of thousands of dollars in scaling costs for services that I would have otherwise spent on pricey consultants.',
    logo_url: 'https://www.gdurl.com/YDNB'
)

review3 = Review.create!(
    reviewer_name: 'TODO Aluve Reviewer Name',
    reviewer_description: 'TODO Aluve Reviewer Title',
    reviewer_location: 'TODO Aluve Company Name',
    title: 'Review',
    body: 'I have nothing but wonderful things to say about my time working with Ria.',
    logo_url: 'https://gdurl.com/HsWQ'
)

company1 = Company.create!(
    name: 'Athira',
    headline: 'Light The Fire, Grow Your Dream',
    short_description: 'Athira crafts business support solutions to help your organization reach its goals. Our approach is to understand your business’s growth challenges, design and implement tailored solutions, and equip your employees with the knowledge to operate independently and successfully.',
    long_description: 'Athira is a different kind of company. We craft business support solutions to help entrepreneurial organizations scale to meet new and more ambitious goals. Our approach is to quickly understand your growth challenges, design and implement tailored solutions, and equip your employees with the knowledge to operate independently and successfully. Our style is centered on collaboration and creativity, but with a dose of realism. We listen to our clients, help them build a strategy for growth, and provide them with the tools to make clear and effective decisions. Backed by hard-won experience and thought leadership, you can trust Athira to kindle new life into your organization.',
    about_image_url: 'https://gdurl.com/lE1l'
)

leader1 = Leader.create!(
    name: 'M Ria Shah',
    title: 'Owner',
    description: 'Ria is the founder/managing director, true GSD’er and creative mind at Athira. She is a global finance and operations professional with 20 years of experience with international nonprofit, digital marketplace, higher education, auditing, and consulting -- specializing in the startup and growth phase. She is dedicated to helping entrepreneurial organizations achieve strategic growth with a goal of having a measurable and meaningful impact in short period of time. Ria has served as a CFO, helped decentralize an international nonprofit, served on the board of Asian American LEAD, lectured on all things finance, and did time consulting for a Big 4 firm. Ria has a BS in Accounting and Finance and an MS in Accounting from Trinity University. She’s also a die-hard Houston sports fan.',
    headshot_url: 'https://gdurl.com/kXW5'
)

image_carousel1 = ImageCarousel.create!(
    location: 'home',
    urls: [
        'https://gdurl.com/5zPG',
        'https://gdurl.com/HMft',
        'https://gdurl.com/Sk2c'
    ],
    headlines: [ 'TODO Headline 1', 'TODO Headline 2', 'TODO Headline 3' ]
)

AdminUser.create!(email: 'rsmease@gmail.com', password: 'password', password_confirmation: 'password')