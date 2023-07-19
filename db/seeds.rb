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

Service.destroy_all

service1 = Service.create!(
    name: 'Finance Transformation',
    short_description: 'Build a finance and accounting function for operational excellence'
)
service1.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/finance_accounting_black.png')),
    filename: 'finance_accounting_black.png'
)

service1_description = '
    <div>A transparent and insightful finance function is essential to the foundation of a strong business. We help you design the infrastructure you need to build, manage, and scale your organization.</div>
    <div><br/></div>
    <ul>
        <li>COO and CFO services</li>
        <li>Expertise in for profit and nonprofit accounting</li>
        <li>Customizing and implementing accounting systems</li>
        <li>Audit and tax support</li>
        <li>Federal grant compliance</li>
        <li>Grant and subgrant management</li>
        <li>Overhead analysis</li>
        <li>Hiring and training staff</li>
    </ul>
'
ActionText::RichText.create!(record_type: 'Service', record_id: service1.id, name: 'rich_long_description', body: service1_description)

service2 = Service.create!(
    name: 'Tools for Management',
    short_description: 'Design and deploy effective tools for decision making'
)
service2.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/tools_management_black.png')),
    filename: 'tools_management_black.png'
)

service2_description = '
    <div>Understanding and tracking your organization’s performance is critical when it comes to making informed, mission-driven decisions. We design and deploy effective decision making tools that align to your company’s needs.</div>
    <div><br/></div>
    <ul>
        <li>Forecasting and budgeting</li>
        <li>Project tracking and impact reporting</li>
        <li>Dashboard metrics and measures</li>
        <li>Time and expense reporting</li>
        <li>Corporate policies and procedures</li>
        <li>Performance management and measurement</li>
        <li>HRIS implementation</li>
        <li>CLM implementation</li>
    </ul>
'
ActionText::RichText.create!(record_type: 'Service', record_id: service2.id, name: 'rich_long_description', body: service2_description)

service3 = Service.create!(
    name: 'Business Development',
    short_description: 'Identify and explore business growth opportunities'
)
service3.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/business_development_black.png')),
    filename: 'business_development_black.png'
)

service3_description = '
    <div>Navigating through a changing environment to grow your organization is challenging at best. We help identify and develop new growth opportunities in a collaborative and systematic way while ensuring alignment with internal and external stakeholders.</div>
    <div><br/></div>
    <ul>
        <li>Strategic planning</li>
        <li>Scenario-based planning</li>
        <li>New revenue generation</li>
        <li>Landscape and customer research</li>
        <li>Testing and product refinement</li>
        <li>Pricing strategy</li>
    </ul>
'
ActionText::RichText.create!(record_type: 'Service', record_id: service3.id, name: 'rich_long_description', body: service3_description)

service4 = Service.create!(
    name: 'Diagnostic and Advisory Services',
    short_description: 'Assess your business and implement best practices for continued growth'
)
service4.icon.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/services/diagnostic_advisory_black.png')),
    filename: 'diagnostic_advisory_black.png'
)

service4_description = '
    <div>Developing a plan for the future begins with an in-depth and rigorous assessment of the current state of your organization with a critical eye for compliance and best practices. We draw upon our experience with top-tier organizations to help formulate unique solutions for your specific needs.&nbsp;</div>
    <div><br/></div>
    <ul>
        <li>Self-assessment</li>
        <li>Change management</li>
        <li>Regulatory compliance</li>
        <li>Risk management</li>
        <li>Best practices</li>
        <li>Delegation of authority</li>
        <li>Board governance &amp; bylaws</li>
        <li>Business advisory</li>
    </ul>
'
ActionText::RichText.create!(record_type: 'Service', record_id: service4.id, name: 'rich_long_description', body: service4_description)

Review.destroy_all

review1 = Review.create!(
    company_name: 'Aluve',
    body: 'instrumental in developing our brand identity and effectively communicating our unique story... highly recommend her advice, experience, and creative approach.'
)
review1.logo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/reviews/aluve_review.png')),
    filename: 'aluve_review.png'
)

review2 = Review.create!(
    company_name: 'Datakind',
    body: 'advisor and thought partner to our entire leadership team... wicked smarts, measured approach and experience solving the trickiest of nonprofit challenges... at the top of my speed dial.'
)
review2.logo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/reviews/datakind_review.png')),
    filename: 'datakind_review.png'
)

review3 = Review.create!(
    company_name: 'Peacefirst',
    body: 'incredible partner to our team... able to quickly get up to speed with our org context and values... skilled in developing strategy through implementation - a unique combination.'
)
review3.logo.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/reviews/peacefirst_review.png')),
    filename: 'peacefirst_review.png'
)

Company.destroy_all

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

# TODO seed rich_description
Leader.destroy_all

leader1 = Leader.create!(
    name: 'M Ria Shah',
    title: 'Owner'
)
leader1.headshot.attach(
    io: File.open(File.join(Rails.root, 'app/assets/images/leaders/m_ria_shah.jpg')),
    filename: 'm_ria_shah.jpg'
)

leader1_description = '
    <div>Ria is the founder/managing director, true GSD’er and creative mind at Athira. She is a global finance and operations professional with over 20 years of experience with international nonprofit, digital marketplace, higher education, auditing, and consulting -- specializing in the startup and growth phase. She is dedicated to helping entrepreneurial organizations achieve strategic growth with a goal of having a measurable and meaningful impact in a short period of time.</div>
    <div><br/></div>
    <div>Ria has served as a COO and CFO for global nonprofit organizations, built finance and operations support solutions from the ground up, worked with organizations to develop new businesses in times of change, served as an adjunct lecturer in finance and accounting, and spent several years consulting for a Big4 firm.&nbsp;</div>
    <div><br/></div>
    <div>Ria serves on the board of directors as Treasurer for the Congressional Hunger Center, a Washington, DC-based organization committed to fighting hunger by developing leaders and advocating for public policies. She has previously served on the board for Digital Green Foundation, a global development organization focused on poverty alleviation through tech innovation for the small-holder farmer, and Asian American LEAD, an organization on a mission to support low income youth with educational empowerment and leadership development. Ria earned a BS in Accounting and Finance and an MS in Accounting from Trinity University.&nbsp;</div>
'

ActionText::RichText.create!(record_type: 'Leader', record_id: leader1.id, name: 'rich_description', body: leader1_description)

ImageCarousel.destroy_all

image_carousel1 = ImageCarousel.create!(
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

term1 = Term.create!(
    title: 'Privacy Policy'
)
term1_description = '
Foo bar baz
'
ActionText::RichText.create!(record_type: 'Term', record_id: term1.id, name: 'rich_description', body: term1_description)
