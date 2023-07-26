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
        <li>CFO services</li>
        <li>For profit and nonprofit accounting</li>
        <li>Customizing and implementing accounting systems</li>
        <li>Audit and tax support</li>
        <li>Federal grant compliance</li>
        <li>Overhead analysis</li>
        <li>Hiring and training staff</li>
    </ul>
'
ActionText::RichText.create!(record_type: 'Service', record_id: service1.id, name: 'rich_description', body: service1_description)

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
ActionText::RichText.create!(record_type: 'Service', record_id: service2.id, name: 'rich_description', body: service2_description)

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
ActionText::RichText.create!(record_type: 'Service', record_id: service3.id, name: 'rich_description', body: service3_description)

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
ActionText::RichText.create!(record_type: 'Service', record_id: service4.id, name: 'rich_description', body: service4_description)

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
    <div>Effective date: January 1, 2023</div>
    <div><br/></div>
    <div>Athira LLC ("us", "we", or "our") operates the www.athirasolutions.com website (the "Service").
    This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.</div>
    <div><br/></div>
    <div>We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, accessible from www.athirasolutions.com</div>
    <div class="terms__subtitle">Definitions</div>
    <ul>
        <li><strong>Personal Data:</strong> data about a living individual who can be identified from those data (or from those and other information either in our possession or likely to come into our possession)</li>
        <li><strong>Usage Data:</strong> data collected automatically either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit)</li>
        <li><strong>Cookies:</strong> small pieces of data stored on your device (computer or mobile device)</li>
        <li><strong>Data Controller:</strong> the natural or legal person who (either alone or jointly or in common with other persons) determines the purposes for which and the manner in which any personal information are, or are to be, processed -- for the purpose of this Privacy Policy, we are a Data Controller of your Personal Data</li>
        <li><strong>Data Processsor:</strong> (aka Service Provider) means any natural or legal person who processes the data on behalf of the Data Controller -- we may use the services of various Service Providers in order to process your data more effectively</li>
        <li><strong> Data Subject:</strong> any living individual who is using our Service and is the subject of Personal Data</li>
    </ul>
    <div class="terms__subtitle">Information Collected and Used</div>
    <div>We collect several different types of information for various purposes to provide and improve our Service to you.</div>
    <div class="terms__subtitle terms__subtitle--smaller">Personal Data</div>
    <div>While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). Personally identifiable information may include, but is not limited to:</div>
    <ul>
        <li>Email address</li>
        <li>First name and last name</li>
        <li>Phone number</li>
        <li>Cookies and usage data</li>
    </ul>
    <div>We may use your Personal Data to contact you with newsletters, marketing or promotional materials and other information that may be of interest to you. You may opt out of receiving any, or all, of these communications from us by contacting us.</div>
    <div class="terms__subtitle terms__subtitle--smaller">Usage Data</div>
    <div>We may also collect information how the Service is accessed and used ("Usage Data"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</div>
    <div class="terms__subtitle terms__subtitle--smaller">Tracking & Cookies Data</div>
    <div>We use cookies and similar tracking technologies to track the activity on our Service and hold certain information.</div>
    <div><br/></div>
    <div>Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.</div>
    <div><br/></div>
    <div>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.</div>
    <div><br/></div>
    <div>Examples of Cookies we use:</div>
    <ul>
        <li><strong>Session Cookies:</strong> We use Session Cookies to operate our Service.</li>
        <li><strong>Preference Cookies:</strong> We use Preference Cookies to remember your preferences and various settings.</li>
        <li><strong>Security Cookies:</strong> We use Security Cookies for security purposes.</li>
    </ul>
    <div class="terms__subtitle">Use of Data</div>
    <div>Athira LLC uses the collected data for various purposes:</div>
    <ul>
        <li>To provide and maintain our Service</li>
        <li>To notify you about changes to our Service</li>
        <li>To allow you to participate in interactive features of our Service when you choose to do so</li>
        <li>To provide customer support</li>
        <li>To gather analysis or valuable information so that we can improve our Service</li>
        <li>To monitor the usage of our Service</li>
        <li>To detect, prevent and address technical issues</li>
        <li>To provide you with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information</li>
    </ul>
    <div class="terms__subtitle">Legal Basis for Processing Personal Data Under General Data Protection Regulation (GDPR)</div>
    <div>If you are from the European Economic Area (EEA), Athira LLC legal basis for collecting and using the personal information described in this Privacy Policy depends on the Personal Data we collect and the specific context in which we collect it.</div>
    <div><br/></div>
    <div>Athira LLC may process your Personal Data because:</div>
    <ul>
        <li>We need to perform a contract with you</li>
        <li>You have given us permission to do so</li>
        <li>The processing is in our legitimate interests and it\'s not overridden by your rights</li>
        <li>To comply with the law</li>
    </ul>
    <div class="terms__subtitle">Retention of Data</div>
    <div>Athira LLC will retain your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</div>
    <div><br/></div>
    <div>Athira LLC will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of our Service, or we are legally obligated to retain this data for longer time periods.</div>
    <div class="terms__subtitle">Transfer of Data</div>
    <div>Your information, including Personal Data, may be transferred to — and maintained on — computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</div>
    <div><br/></div>
    <div>If you are located outside United States and choose to provide information to us, please note that we transfer the data, including Personal Data, to United States and process it there.</div>
    <div><br/></div>
    <div>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</div>
    <div><br/></div>
    <div>Athira LLC will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</div>
    <div class="terms__subtitle">Disclosure of Data</div>
    <div class="terms__subtitle terms__subtitle--smaller">Business Transaction</div>
    <div>If Athira LLC is involved in a merger, acquisition or asset sale, your Personal Data may be transferred. We will provide notice before your Personal Data is transferred and becomes subject to a different Privacy Policy.</div>
    <div class="terms__subtitle terms__subtitle--smaller">Disclosure For Law Enforcement</div>
    <div>Under certain circumstances, Athira LLC may be required to disclose your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</div>
    <div class="terms__subtitle terms__subtitle--smaller">Legal Requirements</div>
    <div>Athira LLC may disclose your Personal Data in the good faith belief that such action is necessary to:</div>
    <ul>
        <li>To comply with a legal obligation</li>
        <li>To protect and defend the rights or property of Athira LLC</li>
        <li>To prevent or investigate possible wrongdoing in connection with the Service</li>
        <li>To protect the personal safety of users of the Service or the public</li>
        <li>To protect against legal liability</li>
    </ul>
    <div class="terms__subtitle">Security of Data</div>
    <div>The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</div>
    <div class="terms__subtitle">"Do Not Track" Signals Under California Online Privacy Protection Act (CalOPPA)</div>
    <div>We do not support Do Not Track ("DNT"). Do Not Track is a preference you can set in your web browser to inform websites that you do not want to be tracked.</div>
    <div><br/></div>
    <div>You can enable or disable Do Not Track by visiting the Preferences or Settings page of your web browser.</div>
    <div class="terms__subtitle">Your Data Protection Rights Under General Data Protection Regulation (GDPR)</div>
    <div>If you are a resident of the European Economic Area (EEA), you have certain data protection rights. Athira LLC aims to take reasonable steps to allow you to correct, amend, delete, or limit the use of your Personal Data.</div>
    <div><br/></div>
    <div>If you wish to be informed what Personal Data we hold about you and if you want it to be removed from our systems, please contact us.</div>
    <div><br/></div>
    <div>In certain circumstances, you have the following data protection rights:</div>
    <ul>
        <li><strong>The right to access, update or to delete the information we have on you.</strong> Whenever made possible, you can access, update or request deletion of your Personal Data directly within your account settings section. If you are unable to perform these actions yourself, please contact us to assist you.</li>
        <li><strong>The right of rectification.</strong> You have the right to have your information rectified if that information is inaccurate or incomplete.</li>
        <li><strong>The right to object.</strong> You have the right to object to our processing of your Personal Data.</li>
        <li><strong>The right of restriction.</strong> You have the right to request that we restrict the processing of your personal information.</li>
        <li><strong>The right to data portability.</strong> You have the right to be provided with a copy of the information we have on you in a structured, machine-readable and commonly used format.</li>
        <li><strong>The right to withdraw consent.</strong> You also have the right to withdraw your consent at any time where Athira LLC relied on your consent to process your personal information.</li>
    </ul>
    <div>Please note that we may ask you to verify your identity before responding to such requests.</div>
    <div><br/></div>
    <div>You have the right to complain to a Data Protection Authority about our collection and use of your Personal Data. For more information, please contact your local data protection authority in the European Economic Area (EEA).</div>
    <div class="terms__subtitle">Service Providers</div>
    <div>We may employ third party companies and individuals to facilitate our Service ("Service Providers"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.</div>
    <div><br/></div>
    <div>These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.</div>
    <div class="terms__subtitle">Analytics</div>
    <div>We may use third-party Service Providers to monitor and analyze the use of our Service.</div>
    <div><br/></div>
    <div>Google Analytics:</div>
    <ul>
        <li>Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.</li>
        <li>You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity.</li>
        <li>For more information on the privacy practices of Google, please visit the Google Privacy & Terms web page: https://policies.google.com/privacy?hl=en</li>
    </ul>
    <div class="terms__subtitle">Links To Other Sites</div>
    <div>Our Service may contain links to other sites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.</div>
    <div><br/></div>
    <div>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</div>
    <div class="terms__subtitle">Children\'s Privacy</div>
    <div>Our Service does not address anyone under the age of 18 ("Children").</div>
    <div><br/></div>
    <div>We do not knowingly collect personally identifiable information from anyone under the age of 18. If you are a parent or guardian and you are aware that your child has provided us with Personal Data, please contact us. If we become aware that we have collected Personal Data from children without verification of parental consent, we take steps to remove that information from our servers.</div>
    <div class="terms__subtitle">Changes to This Privacy Policy</div>
    <div>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</div>
    <div><br/></div>
    <div>We will let you know via email and/or a prominent notice on our Service, prior to the change becoming effective and update the "effective date" at the top of this Privacy Policy.</div>
    <div><br/></div>
    <div>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</div>
    <div class="terms__subtitle">Contact</div>
    <div>If you have any questions about this Privacy Policy, please contact us:</div>
    <ul>
        <li>By email: info@athirasolutions.com</li>
    </ul>
'

ActionText::RichText.create!(record_type: 'Term', record_id: term1.id, name: 'rich_description', body: term1_description)
