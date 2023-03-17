# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.destroy_all
AdminUser.create!(email: 'rsmease@gmail.com', password: 'ryanAdminPasssword092561', password_confirmation: 'ryanAdminPasssword092561')
AdminUser.create!(email: 'mriashah@gmail.com', password: 'riaAdminPasswordAthiraSolutions', password_confirmation: 'riaAdminPasswordAthiraSolutions')

# TODO seed rich_long_description
Service.destroy_all

service1 = Service.create!(
    name: 'Finance Transformation',
    short_description: 'Build a finance and accounting function for operational excellence'
)
service1.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/finance_accounting_black.png')),
    filename: 'finance_accounting_black.png'
)

service2 = Service.create!(
    name: 'Tools for Management',
    short_description: 'Design and deploy effective tools for decision making'
)
service2.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/tools_management_black.png')),
    filename: 'tools_management_black.png'
)

service3 = Service.create!(
    name: 'Business Development',
    short_description: 'Identify and explore business growth opportunities'
)
service3.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/business_development_black.png')),
    filename: 'business_development_black.png'
)

service4 = Service.create!(
    name: 'Diagnostic and Advisory Services',
    short_description: 'Assess your business and implement best practices for continued growth'
)
service4.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/diagnostic_advisory_black.png')),
    filename: 'diagnostic_advisory_black.png'
)


# TODO remove reviewer name, description, location
# TODO rename title column to company_name
Review.destroy_all

review1 = Review.create!(
    title: 'Aluve',
    body: 'instrumental in developing our brand identity and effectively communicating our unique story... highly recommend her advice, experience, and creative approach.'
)
review1.logo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/reviews/aluve_review.png')),
    filename: 'aluve_review.png'
)

review2 = Review.create!(
    title: 'Datakind',
    body: 'advisor and thought partner to our entire leadership team... wicked smarts, measured approach and experience solving the trickiest of nonprofit challenges... at the top of my speed dial.'
)
review2.logo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/reviews/datakind_review.png')),
    filename: 'datakind_review.png'
)

review3 = Review.create!(
    title: 'Peacefirst',
    body: 'incredible partner to our team... able to quickly get up to speed with our org context and values... skilled in developing strategy through implementation - a unique combination.'
)
review3.logo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/reviews/peacefirst_review.png')),
    filename: 'peacefirst_review.png'
)

Company.destroy_all

# TODO hide LinkedIn and Facebook if they are null
company1 = Company.create!(
    name: 'Athira',
    headline: 'Light The Fire, Grow Your Dream',
    short_description: 'Athira crafts business support solutions to help your organization reach its goals. Our approach is to understand your business’s growth challenges, design and implement tailored solutions, and equip your employees with the knowledge to operate independently and successfully.',
    long_description: 'Athira is a different kind of company. We craft business support solutions to help entrepreneurial organizations scale to meet new and more ambitious goals. Our approach is to quickly understand your growth challenges, design and implement tailored solutions, and equip your employees with the knowledge to operate independently and successfully. Our style is centered on collaboration and creativity, but with a dose of realism. We listen to our clients, help them build a strategy for growth, and provide them with the tools to make clear and effective decisions. Backed by hard-won experience and thought leadership, you can trust Athira to kindle new life into your organization.'
)
company1.about_image.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/company/about_image.png')),
    filename: 'about_image.png'
)

Leader.destroy_all

# TODO seed rich_description
leader1 = Leader.create!(
    name: 'M Ria Shah',
    title: 'Owner'
)
leader1.headshot.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/leaders/m_ria_shah.jpg')),
    filename: 'm_ria_shah.jpg'
)

ImageCarousel.destroy_all

# TODO remove location field, we are not using it
image_carousel1 = ImageCarousel.create!(
    location: 'home',
    headlines: [ 'Crafting business support solutions', 'To empower entrepreneurial organizations', 'Reach goals for sustainable growth' ]
)
image_carousel1.images.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/image_carousels/home/home_carousel1.png')),
    filename: 'home_carousel1.png'
)
image_carousel1.images.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/image_carousels/home/home_carousel2.png')),
    filename: 'home_carousel3.png'
)
image_carousel1.images.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/image_carousels/home/home_carousel3.png')),
    filename: 'home_carousel3.png'
)

Term.destroy_all

# TODO seed rich description
term1 = Term.create!(
    title: 'Privacy Policy'
)
