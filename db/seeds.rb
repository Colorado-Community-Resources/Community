# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

puts "Seeding admins..."

# Create sample admins
Admin.find_or_create_by!(username: "admin1") do |admin|
  admin.email = "admin1@example.com"
  admin.firstName = "Admin"
  admin.password_digest = "adminpass123!"
end

Admin.find_or_create_by!(username: "admin2") do |admin|
  admin.email = "admin2@example.com"
  admin.firstName = "SuperAdmin"
  admin.password_digest = "supers!Ecur9e"
end

admin3 = Admin.find_or_create_by!(username: "admin3") do |admin|
  admin.email = "admin3@example.com"
  admin.firstName = "AdminThree"
  admin.password_digest = "!adminpasS123"
end

admin4 = Admin.find_or_create_by!(username: "admin4") do |admin|
  admin.email = "admin4@example.com"
  admin.firstName = "AdminFour"
  admin.password_digest = "Qdmin=ass123"
end

admin5 = Admin.find_or_create_by!(username: "admin5") do |admin|
  admin.email = "admin5@example.com"
  admin.firstName = "AdminFive"
  admin.password_digest = "adminpass123"
end

admin6 = Admin.find_or_create_by!(username: "admin6") do |admin|
  admin.email = "admin6@example.com"
  admin.firstName = "AdminSix"
  admin.password_digest = "adminpass123"
end

puts "Seeding organizations..."

# Create sample organizations
Organization.find_or_create_by!(email: "info@agapelife.org") do |org|
  org.org_name = "Agape Life Church: Food Assistance"
  org.category = "Food"
  org.street = "5970 W 60th Ave"
  org.city = "Arvada"
  org.org_state = "CO"
  org.zipcode = 80003
  org.phoneNumber = "303-431-6481"
  org.webLink = "https://agapelife.org/"
  org.servicesSummary = "Provides a food pantry and hosts a monthly TEFAP (The Emergency Food Assistance Program) food distribution site."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@CoTable.org") do |org|
  org.org_name = "Community Table: Emergency Food"
  org.category = "Food"
  org.street = "8555 W 57th Ave"
  org.city = "Arvada"
  org.org_state = "CO"
  org.zipcode = 80002
  org.phoneNumber = "303-424-6685"
  org.webLink = "https://cotable.org/"
  org.servicesSummary = "Provides emergency food to individuals and families. Each client selects a supply of food based on household size. Families and individuals may use this program when needed."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "westyoffice@gmail.com") do |org|
  org.org_name = "Westminster Presbyterian Church: Food Pantry"
  org.category = "Food"
  org.street = "3990 W 79th Ave"
  org.city = "Westminster"
  org.org_state = "CO"
  org.zipcode = 80030
  org.phoneNumber = "303-429-8508"
  org.webLink = "https://westypres.org/fish-food-pantry/"
  org.servicesSummary = "Offers a food pantry that provides a prepacked box of non-perishable items. Clients can receive a food box once a month. Provides enough food for four days."  
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "assistance@growinghome.org") do |org|
  org.org_name = "Growing Home: Food Pantry"
  org.category = "Food"
  org.street = "3489 W 79th Ave, #112"
  org.city = "Westminster"
  org.org_state = "CO"
  org.zipcode = 80030
  org.phoneNumber = "303-426-0560"
  org.webLink = "https://growinghome.org/food-pantry-updates/"
  org.servicesSummary = "Provides food for individuals and families twice a month."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "gethelp@theactioncenter.org") do |org|
  org.org_name = "Action Center: Food Pantry"
  org.category = "Food"
  org.street = "8745 W 14th Ave"
  org.city = "Lakewood"
  org.org_state = "CO"
  org.zipcode = 80215
  org.phoneNumber = "303-237-7704"
  org.webLink = "http://theactioncenter.org/"
  org.servicesSummary = "Offers a community food pantry that individuals can utilize once a month."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "jesses@summithousing.us") do |org|
  org.org_name = "Summit Combined Housing Authority:Pre-Purchase Housing Classes and Counseling"
  org.category = "Housing"
  org.street = "331 West Main Street, Suite 100"
  org.city = "Frisco "
  org.org_state = "CO"
  org.zipcode = 80443
  org.phoneNumber = "970-668-4178"
  org.webLink = "https://www.summithousing.us/"
  org.servicesSummary = "Offers down payment assistance through low-interest loans for primary residences in Summit County"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@peaceworksinc.co") do |org|
  org.org_name = "Peace Works:Domestic Violence/Sexual Assault Safe House and Crisis Line"  
  org.category = "Housing"
  org.street = "25997 Conifer Rd"
  org.city = "Conifer"
  org.org_state = "CO"
  org.zipcode = 80433
  org.phoneNumber = "303-838-8181"
  org.webLink = "https://peaceworksinc.co/services/"
  org.servicesSummary = "Provides female survivors of domestic violence/sexual assault and their children with:Emergency shelter, Food, Case management, Counseling, Support."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "INFO@CCDENVER.ORG") do |org|
  org.org_name = "Archdiocesan Housing Committee:Subsidized Housing"
  org.category = "Housing"
  org.street = "17414 W 10th Ave"
  org.city = "Golden"
  org.org_state = "CO"
  org.zipcode = 80401
  org.phoneNumber = "303-830-0215"
  org.webLink = "https://ccdenver.org/housing/"
  org.servicesSummary = "Provides one-bedroom units for seniors and individuals with physical disabilities."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@mwhsolutions.org") do |org|
  org.org_name = "Metro West Housing Solutions:Affordable Housing"
  org.category = "Housing"
  org.street = "5800 W Alameda Ave"
  org.city = "Lakewood"
  org.org_state = "CO"
  org.zipcode = 80226
  org.phoneNumber = "303-987-7580"
  org.webLink = "https://www.mwhs.org/communities/"
  org.servicesSummary = "Offers affordable studio,1, 2 and 3-bedroom apartment homes. Housing Choice Vouchers (Section 8) are accepted"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "contact@copovertylawproject.org") do |org|
  org.org_name = "Housing Legal Advice for Young Adults"
  org.category = "Housing"
  org.street = "520 W Colfax Ave"
  org.city = "Denver"
  org.org_state = "CO"
  org.zipcode = 80204
  org.phoneNumber = "303-532-2641"
  org.webLink = "https://www.copovertylawproject.org/"
  org.servicesSummary = "Connects individuals with pro bono volunteer attorneys in need of housing or general legal services and advice."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@tepeyachealth.org") do |org|
  org.org_name = "Tepeyac Community Health Center"
  org.category = "Healthcare"
  org.street = "2101 E 48th Ave"
  org.city = "Denver"
  org.org_state = "CO"
  org.zipcode = 80216
  org.phoneNumber = " 303-458-5302"
  org.webLink = "https://www.tepeyachealth.org/"
  org.servicesSummary = "Providea primary care, dental, behavioral health, maternal and women’s health, pediatrics and a variety of health promotion."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "coverageassist@healthdistrict.org") do |org|        
  org.org_name = "Health District of Northern Larimer County: Health Insurance Information" 
  org.category = "Healthcare"
  org.street = "144 N Mason St, Ste 7"
  org.city = "Fort Collins"
  org.org_state = "CO"
  org.zipcode = 80524
  org.phoneNumber = "970-530-0120"
  org.webLink = "http://larimerhealthconnect.org/"
  org.servicesSummary = "Helps people find the best options for health insurance to meet their health needs and budget. Provides assistance in understanding options offered through Connect for Health Colorado and can assist with determining eligibility for Health First Colorado (Medicaid) and CHP+ and Medicare. May be able to help people find free or low-cost prescription medications."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "healthaccess@htop.org") do |org|
  org.org_name = "Hilltop Community Resources: Health Insurance Information and Counseling" 
  org.category = "Healthcare"
  org.street = "1129 Colorado Ave"
  org.city = "Grand Junction"
  org.org_state = "CO"
  org.zipcode = 81501
  org.phoneNumber = "970-244-0850"
  org.webLink = "http://hilltopshealthaccess.org/"
  org.servicesSummary = "Provides unbiased information and in-person assistance for the Marketplace and other health plan options. Health Access is a certified assistance site for Connect for Health Colorado."
  org.avgStarValue = "admin"
  org.admin_username = ""
end

Organization.find_or_create_by!(email: "info@doctorscare.org") do |org|
  org.org_name = "Doctors Care: Medicaid/Medicare Application Assistance"
  org.category = "Healthcare"
  org.street = "609 W Littleton Blvd, Ste 100"
  org.city = "Littleton"
  org.org_state = "CO"
  org.zipcode = 80120
  org.phoneNumber = "720-458-6185"
  org.webLink = "http://doctorscare.org/"
  org.servicesSummary = "Assists individuals with the application process for Medicaid and subsidized insurance plans through the Connect for Health Colorado online marketplace. Health coverage guides help patients apply for Medicaid, tax-credits for private plans, and other financial assistance programs. Serves as a Connect for Health Colorado Assistance Site and a Certified Medicaid Application Assistance Site."
  org.avgStarValue = "admin"
  org.admin_username = ""
end

Organization.find_or_create_by!(email: "nchacarecoordination.alliance@nocoha.org") do |org| 
  org.org_name = "North Colorado Health Alliance: Health Insurance Enrollment Assistance"   
  org.category = "Healthcare"
  org.street = "2930 11th Ave"
  org.city = "Evans"
  org.org_state = "CO"
  org.zipcode = 80620
  org.phoneNumber = "970-350-4673"
  org.webLink = "http://northcoloradohealthalliance.org/"
  org.servicesSummary = "Provides assistance to individuals seeking health coverage through the Connect for Health Colorado website. Offers on-site assistance from trained professionals throughout the process of searching for and purchasing the best health insurance for each individual online."
  org.avgStarValue = "admin"
  org.admin_username = ""
end

Organization.find_or_create_by!(email: "general@morganfamilycenter.org") do |org|
  org.org_name = "Morgan County Family Center: General Assistance"
  org.category = "Healthcare"
  org.street = "411 Main St, Ste 100"
  org.city = "Fort Morgan"
  org.org_state = "CO"
  org.zipcode = 80701
  org.phoneNumber = "970-867-9606"
  org.webLink = "http://morganfamilycenter.org/how-we-serve/family-support-programs/emergency-financial-assistance/"
  org.servicesSummary = "Provides general assistance, including: parenting information and referrals and certified application assistance (Medicaid, CHP+ enrollment)."
  org.avgStarValue = "admin"
  org.admin_username = ""
end

Organization.find_or_create_by!(email: "adulted@springinstitute.org") do |org|
  org.org_name = "Spring Institute for Intercultural Learning"
  org.category = "Education"
  org.street = "1373 Grant St"
  org.city = "Denver"
  org.org_state = "CO"
  org.zipcode = 80203
  org.phoneNumber = "303-863-0188"
  org.webLink = "http://springinstitute.org/adult-education"
  org.servicesSummary = "Provides classes focused on community English Language Acquisition (ELA) and career coaching services for internationally trained professionals with backgrounds in healthcare and education industries."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "centro@archden.org") do |org|
  org.org_name = "Centro San Juan Diego: Adult Education"
  org.category = "Education"
  org.street = "2830 Lawrence St"
  org.city = "Denver"
  org.org_state = "CO"
  org.zipcode = 80205
  org.phoneNumber = "303-295-9470"
  org.webLink = "http://centrosanjuandiego.org/en/higher-education/"
  org.servicesSummary = "Provides the following adult education classes in Spanish: english as a Second Language Basic, intermediate computer classes, GED preparation, US citizenship, tax preparer certification and bachelor & Master degree programs with the Universidad Popular Autonoma del Estado de Puebla (UPAEP)."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "OlderAdultServices@bouldercolorado.gov") do |org|   
  org.org_name = "Boulder Older Adult Services"
  org.category = "Education"
  org.street = "909 Arapahoe Ave"
  org.city = "Boulder"
  org.org_state = "CO"
  org.zipcode = 80302
  org.phoneNumber = "303-441-3148"
  org.webLink = "http://boulderolderadultservices.com/"
  org.servicesSummary = "Programs and classes include: health and wellness, health and supportive services, lifelong learning, technology support and education, social programs, volunteer-led special interest groups, and congregate lunch service. Adults aged 60 or older."    
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@parentschallenge.org") do |org|
  org.org_name = "Parents Challenge: Scholarships"
  org.category = "Education"
  org.street = "2 N Cascade Ave, Ste 1280"
  org.city = "Colorado Springs"
  org.org_state = "CO"
  org.zipcode = 80903
  org.phoneNumber = "719-306-8557"
  org.webLink = "http://parentschallenge.org/"
  org.servicesSummary = "Provides scholarships to low-income families with a child who is attending, or wants to attend a: private school, public (traditional) school, public (charter) school or home- schooling program."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@peakparent.org") do |org|
  org.org_name = "Peak Parent Center: Disabled Youth Transition to College Services"        
  org.category = "Education"
  org.street = "917 E Moreno Ave, Ste 140"
  org.city = "Colorado Springs"
  org.org_state = "CO"
  org.zipcode = 80903
  org.phoneNumber = "719-531-9400"
  org.webLink = "http://peakparent.org/"
  org.servicesSummary = "Provides resources, training, and support to families and to youth with disabilities. Assists with: transition to college, post-secondary opportunities, how to plan for positive futures and how to access supports and services after leaving school."   
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "carolyn.sackariason@aspen.gov") do |org|
  org.org_name = "kids first:Childcare Resource Center"
  org.category = "Childcare"
  org.street = "215 N Garmisch Street"
  org.city = "Aspen"
  org.org_state = "CO"
  org.zipcode = 81611
  org.phoneNumber = "970-920-5363"
  org.webLink = "aspen.gov/235/Kids-First"
  org.servicesSummary = "Offers an early childhood resource center that supports quality, affordable childcare choices in Aspen."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "program@earlychildhoodoptions.org") do |org|        
  org.org_name = "early childhood options"
  org.category = "Childcare"
  org.street = "330 Fiedler Ave, Ste 208"
  org.city = "Dillion "
  org.org_state = "CO"
  org.zipcode = 80435
  org.phoneNumber = "970-4063076"
  org.webLink = "https://www.earlychildhoodoptions.org/"
  org.servicesSummary = "Early Childhood Options in Summit County offers resources for families and educators, including childcare, mental health services, and professional development in early childhood education."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "dovesnest96@gmail.com") do |org|
  org.org_name = "Doves Nest: Early Childcare and Education Center"
  org.category = "Childcare"
  org.street = "418 Pine St"
  org.city = "Dove Creek "
  org.org_state = "CO"
  org.zipcode = 81324
  org.phoneNumber = "970-677-2850"
  org.webLink = "N/A"
  org.servicesSummary = "Dove Nest's Services include: - Infant Care ( 2 months +) - Early childhood education/preschool - After school childcare - Summer/Holiday childcare -Curriculum"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "cmiller@familydevelopmentcenter.org") do |org|      
  org.org_name = "United Way of Weld County"
  org.category = "Childcare"
  org.street = "814 9th St"
  org.city = "Greeley"
  org.org_state = "CO"
  org.zipcode = 80631
  org.phoneNumber = "970-879-7330"
  org.webLink = "familydevelopmentcenter.org"
  org.servicesSummary = "Supports families with finding child care options and offers resources for child care providers."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "mcpcf@mesacounty.us") do |org|
  org.org_name = "Mesa County Partnership for Children and Families"
  org.category = "Childcare"
  org.street = "3270 D 1/2 Rd"
  org.city = "Clifton"
  org.org_state = "CO"
  org.zipcode = 81520
  org.phoneNumber = "970-563-3211"
  org.webLink = "https://childcare.mesacountypcf.org/welcome"
  org.servicesSummary = "Provides information on provider openings for: Full-time and part-time careBefore school care, after school careSummer care/camps"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "admin@mybrightfuture.org") do |org|
  org.org_name = "Bright Future Foundation: Domestic Violence / Sexual Assault Legal Advocacy"
  org.category = "Legal Resources"
  org.street = "1060 W Beaver Creek Blvd Ste 201"
  org.city = "Avon"
  org.org_state = "CO"
  org.zipcode = 81620
  org.phoneNumber = "970-949-7097"
  org.webLink = "https://mybrightfuture.org/advocacy/"
  org.servicesSummary = "Legal Advocacy to all impacted by domestic violence and sexual assault"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "02juvenileselfhelp@judicial.state.co.us") do |org|  
  org.org_name = "Second Judicial District: Juvenile Court Self-Help Center"
  org.category = "Legal Resources"
  org.street = "520 W Colfax Ave Rm 125"
  org.city = "Denver"
  org.org_state = "CO"
  org.zipcode = 80202
  org.phoneNumber = "303-606-2849"
  org.webLink = "https://www.coloradojudicial.gov/"
  org.servicesSummary = "Offers assistance with filing actions related to juvenile cases, such as: Adoption, Child custody, Expungement, Child support, Modification of parenting issues , Modification of child support, Grandparent custody / Grandparent visitation"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "info@alpinelegalservices.com") do |org|
  org.org_name = "Alpine Legal Services: Legal Counseling"
  org.category = "Legal Resources"
  org.street = "110 8th St"
  org.city = "Glenwood Springs"
  org.org_state = "CO"
  org.zipcode = 81601
  org.phoneNumber = "970-945-8858"
  org.webLink = "https://alpinelegalservices.org/"
  org.servicesSummary = "Depending on the specifics of the case, Alpine Legal Services may be able to help. Provides the following programs and legal services to people who live or work between Aspen and Parachute: Family law, Housing law, Elder law,Immigration"
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "vtaylor.wcls@gmail.com") do |org|
  org.org_name = "Weld County Legal Services:Legal Advice Night"
  org.category = "Legal Resources"
  org.street = "915 10th St"
  org.city = "Greeley"
  org.org_state = "CO"
  org.zipcode = 80631
  org.phoneNumber = "970-310-8367"
  org.webLink = "https://weldcountylegalservices.com/"
  org.servicesSummary = "Offers time to sit with a lawyer and get legal advice around a specific issue. Immigration attorneys are available to assist with immigration matters."        
  org.avgStarValue = ""
  org.admin_username = "admin"
end

Organization.find_or_create_by!(email: "bouldercourtselfhelp@judicial.state.co.us") do |org|
  org.org_name = "Boulder County Combined Court: Free Legal Resources"
  org.category = "Legal Resources"
  org.street = "1035 Kimbark St"
  org.city = "Longmont"
  org.org_state = "CO"
  org.zipcode = 80501
  org.phoneNumber = "303-441-3750"
  org.webLink = "N/A"
  org.servicesSummary = "Offers a variety of classes and legal resources."
  org.avgStarValue = ""
  org.admin_username = "admin"
end

puts "Seeding users..."

# Create sample users with valid age ranges
User.find_or_create_by!(username: "user1") do |user|
  user.email = "user1@example.com"
  user.first_name = "John"
  user.age_range = "19-24"
  user.password_digest = "A1b!cdefG"
  user.zipcode = 80202
end

User.find_or_create_by!(username: "user2") do |user|
  user.email = "user2@example.com"
  user.first_name = "Jane"
  user.age_range = "25-34"
  user.password_digest = "P@ssw0rd123!"
  user.zipcode = 80012
end

user3 = User.find_or_create_by!(username: "user3") do |user|
  user.email = "user3@example.com"
  user.first_name = "UserThree"
  user.age_range = "35-70"
  user.password_digest = "QwErTy9$"
  user.zipcode = 80012
end

user4 = User.find_or_create_by!(username: "user4") do |user|
  user.email = "user4@example.com"
  user.first_name = "UserFour"
  user.age_range = "25-34"
  user.password_digest = "StrongP@ss1!"
  user.zipcode = 80301
end

user5 = User.find_or_create_by!(username: "user5") do |user|
  user.email = "user5@example.com"
  user.first_name = "UserFive"
  user.age_range = "19-24"
  user.password_digest = "MyP@s9sw0rd!"
  user.zipcode = 822276
end

user6 = User.find_or_create_by!(username: "user6") do |user|
  user.email = "user6@example.com"
  user.first_name = "UserSix"
  user.age_range = "35-70"
  user.password_digest = "S3cur3P@ss!"
  user.zipcode = 80524
end

puts "Seeding events..."

# Create sample events
Event.find_or_create_by!(title: "Community Food Drive", eventDate: Date.today + 3) do |event|
  event.eventTime = "09:00"
  event.eventDescription = "Join us for a community food drive to support local food banks."
  event.street = "1234 Main St"
  event.city = "Denver"
  event.eventState = "CO"
  event.zipcode = 80202
  event.isVirtual = false
  event.meetingLink = nil
  event.eventstatus = true
  #event.organization_id = "org1@example.com"
  event.user_id = "user1"
  event.admin_id = "admin"
end

Event.find_or_create_by!(title: "Virtual Job Fair", eventDate: Date.today + 7) do |event|
  event.eventTime = "14:00"
  event.eventDescription = "A virtual job fair connecting local businesses with job seekers."
  event.street = "Virtual"
  event.city = "Denver"
  event.eventState = "CO"
  event.zipcode = 80203
  event.isVirtual = true
  event.meetingLink = "https://zoom.us"
  event.eventstatus = true
  #event.organizationId = "org2@example.com"
  event.user_id = "user2"
  event.admin_id = "admin"
end

Event.find_or_create_by!(title: "Virtual Tech Meetup", eventDate: Date.today + 5) do |event|
  event.eventTime = "14:00"
  event.eventDescription = "A virtual meetup for tech enthusiasts to network and discuss the latest trends."
  event.street = "1234 Security Drive"
  event.city = "Aurora"
  event.eventState = "CO"
  event.zipcode = 80014
  event.isVirtual = true
  event.meetingLink = "http://example.com/meetup"
  event.eventstatus = true
  #event.organizationId = "org2@example.com"
  event.user_id = "user2"
  event.admin_id = "admin"
end

Event.find_or_create_by!(title: "Neighborhood Cleanup", eventDate: Date.today + 10) do |event|
  event.eventTime = "08:00"
  event.eventDescription = "Help clean up our neighborhood park and surrounding areas."
  event.street = "5678 Park Ave"
  event.city = "Aurora"
  event.eventState = "CO"
  event.zipcode = 80012
  event.isVirtual = false
  event.meetingLink = nil
  event.eventstatus = true
  #event.organizationId = "org3@example.com"
  event.user_id = "user3"
  event.admin_id = "admin"
end

Event.find_or_create_by!(title: "Coding Bootcamp", eventDate: Date.today + 14) do |event|
  event.eventTime = "10:00"
  event.eventDescription = "A free coding bootcamp for beginners looking to learn programming."
  event.street = "3456 Elm St"
  event.city = "Boulder"
  event.eventState = "CO"
  event.zipcode = 80301
  event.isVirtual = false
  event.meetingLink = nil
  event.eventstatus = true
  #event.organizationId = "org4@example.com"
  event.user_id = "user4"
  event.admin_id = "admin"
end

Event.find_or_create_by!(title: "Mental Health Awareness Webinar", eventDate: Date.today + 7) do |event|
  event.eventTime = "12:00"
  event.eventDescription = "A webinar on mental health awareness and resources available in the community."
  event.street = "3245 Perspective Ave."
  event.city = "Denver"
  event.eventState = "CO"
  event.zipcode = 80231
  event.isVirtual = true
  event.meetingLink = "http://example.com/webinar"
  event.eventstatus = true
  #event.organizationId = "org5@example.com"
  event.user_id = "user5"
  event.admin_id = "admin"
end

Event.find_or_create_by!(title: "Back-to-School Supply Drive", eventDate: Date.today + 20) do |event|
  event.eventTime = "11:00"
  event.eventDescription = "Donate school supplies to help kids in need prepare for the new school year."
  event.street = "910 Willow St"
  event.city = "Fort Collins"
  event.eventState = "CO"
  event.zipcode = 80524
  event.isVirtual = false
  event.meetingLink = nil
  event.eventstatus = true
  #event.organizationId = "org6@example.com"
  event.user_id = "user6"
  event.admin_id = "admin"
end

puts "Finished seeding events!"

