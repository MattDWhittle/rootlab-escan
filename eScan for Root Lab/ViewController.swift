//
//  ViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 12/2/18.
//  Copyright © 2018 rootlab. All rights reserved.
//

// (TODO - Matt) Click New Button go back and reset everything, alert first
// (TODO - Matt) Timebox can you scroll the screen - recenter fine

// (TODO - Matt) Force resign keyboard when page index changes


// (TODO - Gary) Make Practitioner buttons smaller and same size, increase size of right column
// (TODO - Gary, looks like has no IBOutlet) Make email-to 32 size
// (TODO - Gary) Need logo as icon and change App Name to Fast Cast 3D
// (TODO - Gary) Top cover page scroll so it is not squished
// (TODO - Gary) Remove all pictures from the devices, we can add then later
// (TODO - Gary) Top Covers page needs to scroll so it is not all bunched up.
// (TODO - Gary) Disallow user to type into orthoses/richie brace descriptions
// (TODO - Gary) Can't click on 'Submit' in menu
// (TODO - Gary) Fix shipping/billing address size to not get cutoff
// (TODO - Gary) Check all keyboards for correct input keyboard type
// (TODO - Gary) Fix width of orthotic device description table
// (TODO - Gary) Should the richie brace/orthotic pages scroll when clicking on special instr?
// (TODO - Gary) Collapse keyboard when clicking on another menu item
// (TODO - Gary) Typing in business or facility name clears only first time (first name/last name work correctly so just need to apply to that field)
// (TODO - Gary) Make the delete practicioner dialog dismiss on click away, or make it impossible to click away from unless you cancel
// (TODO - Gary) Business or Facility Name is not initially required, but is once you click on it, then click away?
// (TODO - Gary) Add text for 'scan taken' or similar when a photo/escan is done
// (TODO - Gary) Don't allow editing of description of orthotics/richie braces

// (DONE - Gary) Business not a required field
// (DONE - Gary) 'Save as Default' practitioner doesn't update the menu on the left
// (DONE - Gary) Remove extra sections from Richie Brace options
// (DONE - Gary) Replace 'not taken' with 'reorder'
// (DONE - Gary) Fix spelling of "Orthotic Device" on prescription page
// (DONE - Gary) Save button on practitioner page
// (DONE - Gary) Make Practitioner page have a save button
// (DONE - Gary) Selecting "this is a reorder" permanently sets eScan to valid

// (TODO) Email Sent confirmation
// (TODO) Revive and complete Previos Orders Page
// (TODO) Take off photos of devices

// (QUESTION) Should there/is there a way to view the summary of the current prescription?
// (QUESTION) What to do if they want to retake a photo? Should they be able to delete?


// (DONE - Matt) Make Order management page backend
// (DONE - Matt) Reword error text when no internet
// (DONE - Matt) Orthotics pages and practitioner pages, many text boxes still need page liftage
// (DONE) recreate email error scenario
// (DONE - Matt) Products with extended top covers do not have the top cover defaults filled out.
// (DONE - Matt) Diagnosis should not be in instructions
// (DONE - Matt) Multi-sport plus says No Top Cover but should be FUll Length, says Poron but should be EVA, should be 1/8th but is None
// (DONE - Matt) Short Post Flange R or L from Posting Page Rearfoot post options should drop Flange
// (DONE - Matt) Lateral Post Flange R or L from Posting Page Rearfoot post options should drop Flange, add Flare, actually it does it on all of them
// (DONE - Matt) Rearfoot posting elevator 4 mm right showing up when 8mm right and left selected - recreate
// (DONE - Matt) Bottom cover material should read "Top cover Material" as in Bottom cover material NCN 1/8th
// (DONE - Matt) Orthotics pages and practitioner pages, many text boxes still need page liftage
// (DONE-MATT Keyboard Numbers for each number one)
// (No Action, FAD - Matt) Make email-to default selected
// (DONE - Matt) After resetEverything, practitioner dot still green
// (DONE - Matt) After patient weight supplied, practitioner dot still green even though no device chosen
// (DONE - GaryMatt) get rid of next button on submit/email page
// (DONE - GaryMatt) new order page index to orthotics/richie brace
// (DONE - GaryMatt) country not a required field
// (DONE - GaryMatt) practitioner title size scaled
// (DONE - GaryMatt) device reset of richie brace table view



//TODO
// (TODO) Better Pictures
// (TODO) Email created document
// (TODO) Submit Form - and review
// (TODO) HDPE should be default for
// (TODO) SOFT sport was wrong  - not graphite
// (TODO) logo on opening page
// (TODO) Remove back button from practitioner
// (TODO) more room on the right side practitioner page
// (TODO) add phone fax and website to bottom left corner


// (TODO) what does no top cover mean - have None as the first top cover
// (TODO) If none selected, all the other options are disabled

// (TODO) 2nd order, 2 dots are green and shouldn't be
// (TODO) 2nd order, right foot scan picture is missing



//MINIMUM VIABLE

// (TODO) Update orthoitic device pictures with real pictures

//(TODO) Orthosis Material:  Have "Per Weight" always available, if choose, type a weight in on that page.  Weight is autofilled



// (TODO) second scan only gets color working if goto wireframe first - only first

//(TODO)  Fix scrolling - This area will be too large and will have to scroll to fit on one page.
// (TODO) Validation- When L or R is selected EVA or Korex must be selected,

// (TODO) when expand view, make sure it doesn't expand off screen, scoll it up
// (IN PROGRESS) When No Post is selected, everything on the form greys out except Non Corrective Forefoot Post
// (TODO) Accomodative EVA - grey out edit button on orthosis material
// (TODO) Button says EDIT should say "Select and Modify"
//(TODO) "Order confirmation will be sent to this address" (next to email)
//(TODO) Highlight the buttons where action needs to be taken - if weight not supplied and need to choose material thickness, let them know
// (TODO) When change pactitioners, reset all grey/black fields
// (TODO) Check to see if the Material Order Items still match the new orthotic device screen
//(TODO) Accommondations - If heel pad selected, they have to select 1/16 or 1/8
//(TODO) Accommondations - make sure it says under heel pad  1/16 or 1/8 Poron
//(TODO) 4 ft reinforcement something - under accommodations
//  (TODO) cannot tell the button is disabled orthoticsPrescriptionViewController?.orthosisMaterialButton.isEnabled = theMOI.orthoticsMaterialSelection != 5;
// (TODO) Clicking here will erase the device name and open the keyboard forcing user to rename. It will then save in the My Devices menu under the new name.
//(TODO) Make a log in page
//(TODO) Corrections and Modifications if they choose as marked on cast, option to fill with Poron or not fill.  Then when print form out, put it on Top Covers and Extensions
//(TODO) transparent background on colors, buttons, and the logo
//(TODO) Add Poron under topcover, two buttons for 1/16 1/8, only one selected, not required
//(TODO) Add a "Ship to Patient" and an address - address only enabled if "Ship to Patient" enabled
//(TODO) Add stuff to My Devices - click on name
//Add a title box to practitioner page (Hold on this one)
// (TODO) Add Save on Practitioner Page so it can turn light green
// (TODO) Add a Save to My Devices on the orthotics prescription page, then rename device
// (TODO) Diabetic default - If you have a medial heel cup 3/16 diabetic - just means diabetic
// (TODO) if orthosis length vinyl top cover, what color default: Bronze is for functional, forest is for sports, Black is for dress
// (TODO) if default practitioner selected, scroll wheel is still on New Practitioner if you navigate to that page
// (TODO) Add red dots where things can be invald (isValid())
// (TODO) Validation - posting form - rearfoot post motion, one has to be selected,
// (TODO) Validation - Have to have heel cup both left and right
// (TODO) Validation - Rearfoot posting elevator, one must be selected
// (TODO) Corrections and modifications has to be the same if order two pairs - off same mold
// (TODO) if email / sftp fails sending, then show order not sent
// (TODO) password protect
// (TODO) The submit page - have some sort of signature and disclaimer
// (TODO) Submit page has the work order
// (TODO) (and don't allow to change) default email
// (TODO) Complaiance language
// (TODO) Order a second pair, and reorder
// (TODO) if left is checked anywhere, left scan is required
// (TODO) if right is checked anywhere, right scan is required
// (TODO) Add medical record number, not required, patient date.
// (TODO) Make a left right or bilateral
// (TODO) Default is left right
// (TODO) Delete records after a year
// (TODO) If Cannot save, fail startup
//(IN PROGRESS, need INT validation) make age wieght height gender are valid numbers
// (TODO) Clean up warnings
// (TODO) Clean up extra IBOutlets


// some push Early March
// (DONE) Competition stealing work - CC practitioner, puts the other companies address -  no problem, the other company wont get the 3d scans
// (DONE) Under shoe type, Extra Depth and High Heel should be two separate types
// (DONE) reset richie brace form
// (DONE) use mailcore, use correct email address
// (DONE) Complete work order pdf
// (DONE) get the mail working without the ipad email
// (DONE) email practitioner a copy of the work order without the scan files - don't CC
// (DONE) address needs to be required
// (DONE) click again shrink back down - orthotic device page
// (DONE) A “no Top Cover option needs to be put in.
// (DONE) Email Error should come up before it goes to the start page again. Currently it comes up when you go back to the Submit page on the next order. Basically it should let you know before you can move on.
// (DONE) Richie Brace Form
// (DONE) Under Corrections and modifications – Navicular Accommodation and Fill with Poron do not show up on the Prescription page when chosen until something else is chosen or refreshed maybe.
// (DONE) Change title from eScan to Scan
// (DONE) Under Posting –“CrepeRearfoot posting Elevator 4mm R” seems to come up, probably should just be the material as the Elevator comes up after if selected. Not sure how that is working.
// (DONE) Under top covers “Bottom Cover Material” seems to come up in front of all material choices except 1/16 EVA which does not show up at all.
// (DONE) Email button needs label centered.
// (DONE) Replace foot images with the ones that were sent that change from red to green.
// (DONE) Height, weight and shoe size default to numbers keyboard
// (DONE) Done button looks smooched, use same sizing and positioning as Scan button
// (DONE) When filling out and keyboard open can we move screen to place curser in boxes not shown without having to drop keyboard


//Thursday Feb 28 Push

// (DONE) UISwitches are smashed up on each other in small resolutions
// (DONE) All Poly Chart to Poly Page
// (DONE) EVA should default on when L or R is selected.
// (DONE) Under cushion flex How do I do an EVA post? It is basically no post options selected.
// (DONE) Disable submit button if everything isn't valid
// (DONE) include patient and practitioner information in order
// (DONE) Finish collecting data to send to document
// (DONE) update defaults from latest RX
// (DONE) In our defaults the extension length will always be the same as the top cover length. I.E. a full length top cover would have a full length extension and a sulcus length top cover would have a sulcus length extension.
// (DONE) take two scans should show that .... green dot
// (DONE) don't erase work on re-edit
// (DONE) make sure save patient data upon leaving screen even if next not
// (DONE) reset picker views
// (DONE) reorder button, if checked, scans aren't required, on scan page
// (DONE) Have My Devices know which device it was built from so it knows wether to use a medium firm crepe post or a firm crepe post
// (DONE) Patient page Next Button available when just arrive
// (DONE) "Extension Material" instead of "Material", Top Covers and Extensions
// (DONE) Add medical record # to patient
// (DONE) Make Delete practitioner work
//Wednesday Feb 27 Push2
// (DONE) Finish Order to text
// (DONE) remove Extrinsic (forefoot post)
// (DONE) read forms to stored stuff, picker views and text
// (DONE) finish resetEverything() - reset green dots, switches, text fields, and picker dots
// (DONE) Need to update 4 other labels not blank
// (DONE) rename “EVA Arch Fill” should read “EVA Bottom Fill”
// (DONE) make default "EVA bottom filter" work per above
// (DONE) Under SSC it says "Width and Heel cup per shoe gear" and "elevator per shoe gear" - should be: Width standard, Heel cup 12, Elevator 8mm
// (DONE) Womens Hole Heel : it says 10-12mm heel cup.  Do we want the default to be 10 or 12?  12
// (DONE) In Blake limited intrinsic forefoot correction You can just erase Limited
// (DONE) Women High-Heel What is miminal heel cup?  You can call it 0
// (DONE) If choose next day turnaround, be first line of work order
// (DONE) Top Covers ( Get rid of “and Extensions”, combine Top covers and Accomidations pages into one called Top covers)
// (DONE) orthotic descriptions should update after UiPicker edit
//Wednesday Feb 27 Push
// (DONE) Finish Defaults to Form (except outstanding questions)
// (DONE) saving orders to device all fields mapped on object
// (DONE) Need to read 4 other forms in readAllForms()
// (DONE) Finish Form to Order
// (DONE) what does  the 4/4 mean in posting - left and right 4 degree motion
// (DONE) Update Scan Page
//?????
//(DONE) When “Orthosis only” is selected no Forefoot Extension categories are available.
//(DONE) When “To Sulcus” is chosen, all Material and Thickness are available, but only Sulcus in the Length category.
//(DONE)When “Full Length” is chosen all categories open.
//(DONE)For thickness 1/8” is default.
//(DONE)For Length “Sulcus” should be default for Sulcus length top cover selection. Full Length should be default for Full Length Top Cover selection.
//(DONE) Click circles turn green
// (DONE) Only one can be chosen in this area (Material)
// (DONE) Revamp Top Covers Page
// (DONE) Remove Accommodations Button
//(DONE) Under cast Orientation remove the Line Vertical and the toggles that accompany it.
//(DONE) Remove “Forefoot Correction type” and “Intrinsic (balance cast)” and the toggles that accompany it.
//(DONE) Change to “Extrinsic Forefoot Correction (forefoot post)” with L & R toggles.
//(DONE) Under Modifications please add “Navicular Accommodation” with L & R Boxes for measurement and add a “Fill with Poron”
//(DONE) Change “accommodate on foot” to “Accommodate as indicated per photo or instruction.
//(DONE) Change “Orthosis Specification” to “Shell Specification”
//(DONE) Rush order, cannot choose 2 2 day, next day
// (DONE) Update "Really Cool Description" with real words
// (DONE) Logo link to website
// (DONE) Express shipping make it 3 day, 2 day, next day
//Monday 2-11 push3
// (DONE) New images
// (DONE) if delete to blank on practitioner page, tell them what type of field it is
//Monday 2-11 push2
// (DONE) orthotic descriptions should update after UiSwitch edit  (many are not delegating with target)
//Monday 2-11 push
// (DONE) Save Patient when leaving page, not only when clicking Next
//(DONE) Rush order - remove requested on or before
// (DONE) Non corrective forefoot post, if full width selected, others are not, and vice versa
// (DONE) PolyMax only can have a posting of Polypropylene
// (DONE) Add fill with Poron L/R to order object (Core Data)
// (DONE) Pictures in the scroll view
// (DONE) Posting Page: Birkocork is spelled wrong.
// (DONE) After “Styloid Accommodation” and “As marked on foot (include picture)” please add “Fill with Poron” and a yes/no toggle to each
// (DONE) default to this email:  scans@root-lab.com,
// (DONE) CC them if selected, and if valid email
// (DONE) 4. Orthosis specifications page:  Remove Fit to Enclosed Shoe
// (DONE) Have Prescription, scan, and submit Grayed out till required fields in Practitioner and patient are saved.
//Sunday's 2-10 push
// (DONE) Create Orthotic Device Page
// (DONE) Clicking a row expands it
// (DONE) Select and modify a row goes to the normal orthotics page
// (DONE) Orthotics Form Page Remove Edit Buttons, make titles clickable
// (DONE) Orthotics form page turn description lables into uitextviews
// (DONE) Changing the lights on orthotics form not perfect
// (DONE) Orthotics form change header based on selected device
// (DONE) Next takes you to the Scan page without having to select a device, same as the left hand menu.
// (DONE) Select & Modify chooses all the defaults for that device and takes you to the RX page to make changes.
// (DONE)  Select chooses all the defaults for that device and takes you straight to the Scan page bypassing the RX.
// (DONE) When you choose a category to edit the next button should take you to the next category
// (DONE) Back button take you to the main prescription page


//Saturday's 2-9 push
// (DONE) Change address to broken out by piece boxes
// (DONE) Remove Practitioner Labels
// (DONE) Editing a box wipes out label in box
// (DONE) Add a checkbox for send confirmation
// (DONE) Change Gray to Black
//Wednesday's push
// (DONE) Patient name needs to be there before allowed to proceed to orthotics
// (DONE) take of spell check from uitext views
// (DONE) keyboard hides field
// (DONE) Rush order shows 0,1,2 for scroll view
// (DONE) Green light turns green right when field modified, not when next clicked
// (DONE) Patient/Practitioner data changes right when field edited, not when next clicked
// (DONE) Nothing else can have a posting of Polypropylene
// (DONE) posting form - rearfoot post motion, only one selected
// (DONE) Rearfoot posting elevator, only one allowed to be selected 8mm default normally
// (DONE) Rearfoot post options, cannot do a long and a short

// (DONE) change other label on heel cup height to "Other heel cup Height"
// (DONE) Need a areScansDone() for green dot
// (DONE) Pinch gesture not working both eview and eview mesh
// (DONE) Make sure that spellcheck is turned off
// (DONE) orthosis specifications label too big
// (DONE) Have practitioner page automatically turn green
// (DONE) once two fields are populated, green light on patient shows up
// (DONE) Cheif complaint diagnosis be 1 line
// (DONE) Top covers:Vinyl, leather, eva, NCN, Diabetic re the options accross the top, only one can be selected, and you choose the color or thicknesss, one must be selected
// (DONE) Make sure the billing address has more than one line (same with shipping)
// (DONE) Scan button near home button, larger and clearer
// (DONE) Reset button same
// (DONE) Last name is required field Practitioner Page
// (DONE) Phone number is a required field
// (DONE) Shipping address a required field
// (DONE) Email address required
// (DONE) Billing address required
// (DONE) Add a checkbox shipping address same as billing address
// (DONE) Ft way far away from text box (patient page)
// (DONE) Change Diabetic to (1/16 and 1/8 together)
//Single scrolldown with all the options for top covers and extensions
// (DONE) Poron always capatalized - check
// (DONE) lighter shade of grey on menu bar
// (DONE) Cannot do both intrinsic and extrinsic forefoot correction type
// (DONE) Change "fit to enclosed shoe" to "Fit to shoe (must send a shoe)"
// (DONE) Change "As marked on cast" to "As marked on foot (picture must accompany)"
// (DONE) First letter Cap for the name Patient and Practitioner
// (DONE) Top covers and extensions - Add None to Thickness, Extension Length, and Extension Material
// (DONE) If one of them are selected, all 3 have to be selected
// (DONE) From 10 to 22 increments of 2 - make it a scroll - heel cup height
// (DONE) Be able to click on orthotics and have it not ask "Richie Brace?"
// (DONE) Lets say if Rearfoot posting elevator is not complete, its section lights up red, the posting on the orthotics summary lights up red and the Presection on the summary is not checked
// (DONE) Put stars by what is required and what isn't
// (DONE) eScan
// (DONE) Cannot next from chief complaint page
// (DONE) make it so : material thickness or weight is required
// (DONE) Left hand menu click on things and it works
// (DONE_ Combine cheif complaint diagnosis with / additional instructions
// (DONE)If heel cup height other type in, deselct UISwitches, vice versa, per left right
// (DONE) Add white and naturl poly, make Natural the default (on top)
// (DONE) Add the word width after anterior width description// (DONE) Top covers and extensions shows 0,1,2 for scroll views
// (DONE) Add left and right on all items in the Orthosis Specification form
// (DONE) On medial arch fill, only one selected per foot, and one must be selected, and standard is the default
// (DONE)  deselect vertical if inverted or everted selected
// (DONE)  deselect inverted if vertical or everted selected
// (DONE)  deselect everted if vertical or inverted selected
// (DONE) Put inch sign on polypropelene
// (DONE)Orthotics button label still off
// (DONE) text too small text view comments instructions
// (DONE) First name,  last name Practitioner Page
// (DONE) First name,  last name 2 different boxes (Patient Page)
// (DONE) Add date order creation
// (DONE) weight pounds
// (DONE) height feet/inches
// (DONE) back to 4, but if one selected, deselect the others
// (DONE) Per weight is an option (if weight is supplied) as the default, otherwise it says  choose one


//To talk about
//contact network solutions ask about server - sftp yes thiers, no WIX



import UIKit
import CoreData
import PDFKit
import Foundation
import UIKit
import GLKit
import MessageUI
import ImageIO

protocol MeshViewDelegate: class {
    
    func meshViewWillDismiss()
    func meshViewDidDismiss()
    func meshViewDidRequestColorizing(_ mesh: STMesh,  previewCompletionHandler: @escaping () -> Void, enhancedCompletionHandler: @escaping () -> Void) -> Bool
}

let openingPageIndex = 0;
let orderManagementPageIndex = 1;
let practitionerManagementPageIndex = 2;
let newPractitionerPageIndex = 3;
let patientManagementPageIndex = 4;

let newOrderTypePageIndex = 5;
let orthoticsFormPageIndex = 6;
let richieBraceFormPageIndex = 7;
let scanFormPageIndex = 8;
let reviewAndSubmitPageIndex = 9;

let orthoticsMaterialFormPageIndex = 10;
let orthoticsCorrectionsFormPageIndex = 11;
let orthoticsSpecificationsFormPageIndex = 12;
let orthoticsPostingFormPageIndex = 13;
let orthoticsTopCoversAndExtensionsFormPageIndex = 14;
let orthoticsRushOrderFormPageIndex = 15;
//    let orthoticsRushOrderFormPageIndex = 15;
let orthoticsChiefComplaintFormPageIndex = 17;
let orthoticsAccommodationsAndAdditionsFormPageIndex = 18;

let escanningPageIndex = 19;
let eViewingMeshPageIndex = 20;

let orthoticsDeviceFormPageIndex = 21;

var setImagePictureHeight = CGFloat(0);

let screenSize = UIScreen.main.bounds

let genderPickerViewValues = ["Gender", "Male", "Female"]

var persistedData: [NSManagedObject] = []
var persistedDataDefaults: [NSManagedObject] = []

var order : Order = Order();
var allOrders : [Order] = [];
var myDevices : [Order] = [];
var currentOrder = 0
var defaults : Defaults? = nil;
var amScanningLeftFoot = false;
var leftFootEscanDone = false;
var rightFootEscanDone = false;
var richieBraceHasBeenSelected = false;
var orthoticsHasBeenSelected = false;
var keyboardMovement = 0.0;
var keyboardFrame: NSValue? = nil;


let orthosisMaterialPolypropyleneIndex = 0;
let orthosisMaterialGraphiteCompositeIndex = 1;
let orthosisMaterialFiberglassCompositeIndex = 2;
let orthosisMaterialAcrylicIndex = 3;
let orthosisMaterialHighDensityProlyetheleneIndex = 4;
let orthosisMaterialEVAIndex = 5;

let orthoticMateriaPickerMap: [Int] =
    [0, 0, 1, 2, 3,
     0, 0, 0, 4, 1,
     1, 1, 1, 0, 0,
     0, 0, 0, 0, 4, 4, 4, 4, 5];


let orthoticMaterialDescriptionMap: [String] =
[
    "Polypropylene",
    "PolyMax™",
    "Graphite",
    "Fiberglass",
    "Acrylic",
    
    "Multi-Sport™",
    "Multi-Sport-Plus™",
    "Soft-Sport™",
    "Soft-Sport-Flex™",
    "SSC™",
    
    "Men's Dress",
    "Women's Casual",
    "Women's High-Heel",
    "Hole-Heel™",
    "Cobra",
    
    "Blake 25º",
    "Blake 35º",
    "Blake 45º",
    "Modified UCBL",
    "Cushion-Flex™",
    "Cushion-Flex-Control™",
    "Diaba-Flex™",
    "Diaba-Flex-Control™",
    "Accommodative"
]

let anteriorWidthPickerData: [String] =
    ["Extra Narrow width","Narrow width","Standard width","Wide width","Extra wide width", "Full width"];

let postingRearfootPostTypePickerData: [String] =
    ["No Post","Crepe","Birkocork™","Acrylic"];

let postingRearfootPostPolypropeleneTypePickerData: [String] =
    ["No Post","Polypropelene"];

let orthosisSpecificationHeelCupLeftPickerData: [String] =
    ["Left", "10", "12", "14", "16", "18", "20", "22", "30"];

let orthosisSpecificationHeelCupRightPickerData: [String] =
    ["Right", "10", "12", "14", "16", "18", "20", "22", "30"];

let orthosisMaterialColorLabels: [String] =
    ["Natural","White"];

let patientShoeTypeLabels: [String] =
["Shoe Type", "Athletic", "Boot", "Casual", "Dress", "Extra depth", "High Heel"];

let orthosisMaterialTypeLabels: [String] =
    ["Polypropylene","Graphite Composite (TL-2100)","Fiberglass Composite (TL-Silver)","Acrylic (Polydor)","High-Density Polyethylene (HDPE)","Accomodative - EVA Only"];

let orthosisPolypropyleneColorLabels: [String] =
    ["Natural","White"];

let orthosisPolypropyleneLabels: [String] =
    [
//    "Extremely Flexible Per weight",
//     "Very Flexible Per weight",
//     "Flexible Per weight",
//     "Semi Rigid Per weight",
//     "Rigid Per weight",
//     "Very Rigid Per weight",
//     "Extremely Rigid Per weight",
     "Per weight","1/8\"","5/32\"","3/16\"","1/4\""];

let orthosisGraphiteCompositeLabels: [String] =
    ["Per weight",".070 semi-flexible",".090 semi-rigid",".110 rigid",".110 ultra strength"];

let orthosisFiberglassCompositeLabels: [String] =
    ["Per weight",".085 semi-rigid",".110 rigid"];

let orthosisAcrylicColorLabels: [String] =
    ["Amber","Pink","Green"];

let orthosisAcrylicLabels: [String] =
    ["Per weight","3mm","3.5mm","4mm","5mm"];

let orthosisHighDensityPolyetheleneLabels: [String] =
    ["Per weight","2mm","3mm","4mm"];

let orthosisAccomodativeEVALabels: [String] =
    ["EVA"];


let rushOrderExpressShippingPickerData: [String] =
    ["Express Shipping", "3 day", "2 day", "Next day"];

var imagePicker: UIImagePickerController!
enum ImageSource {
    case photoLibrary
    case camera
}

struct DynamicOptions {
    var newTrackerIsOn = true
    var newTrackerSwitchEnabled = true
    
    var highResColoring = false
    var highResColoringSwitchEnabled = false
    
    var newMapperIsOn = true
    var newMapperSwitchEnabled = true
    
    var highResMapping = true
    var highResMappingSwitchEnabled = true
}

// Volume resolution in meters
struct Options {
    // The initial scanning volume size will be 0.5 x 0.5 x 0.5 meters
    // (X is left-right, Y is up-down, Z is forward-back)
    var initVolumeSizeInMeters: GLKVector3 = GLKVector3Make(0.5, 0.5, 0.5)
    
    // The maximum number of keyframes saved in keyFrameManager
    var maxNumKeyFrames: Int = 48
    
    // Colorizer quality
    var colorizerQuality: STColorizerQuality = STColorizerQuality.normalQuality
    
    // Take a new keyframe in the rotation difference is higher than 30 degrees.
    var maxKeyFrameRotation: CGFloat = CGFloat(30 * (Double.pi / 180)) // 30 degrees
    
    // Take a new keyframe if the translation difference is higher than 30 cm.
    var maxKeyFrameTranslation: CGFloat = 0.3 // 30cm
    
    // Threshold to consider that the rotation motion was small enough for a frame to be accepted
    // as a keyframe. This avoids capturing keyframes with strong motion blur / rolling shutter.
    var maxKeyframeRotationSpeedInDegreesPerSecond: CGFloat = 1
    
    // Whether we should use depth aligned to the color viewpoint when Structure Sensor was calibrated.
    // This setting may get overwritten to false if no color camera can be used.
    var useHardwareRegisteredDepth: Bool = false
    
    // Whether to enable an expensive per-frame depth accuracy refinement.
    // Note: this option requires useHardwareRegisteredDepth to be set to false.
    var applyExpensiveCorrectionToDepth: Bool = true
    
    // Whether the colorizer should try harder to preserve appearance of the first keyframe.
    // Recommended for face scans.
    var prioritizeFirstFrameColor: Bool = true
    
    // Target number of faces of the final textured mesh.
    var colorizerTargetNumFaces: Int = 50000
    
    // Focus position for the color camera (between 0 and 1). Must remain fixed one depth streaming
    // has started when using hardware registered depth.
    let lensPosition: CGFloat = 0.75
}

enum ScannerState: Int {
    
    case cubePlacement = 0    // Defining the volume to scan
    case scanning            // Scanning
    case viewing            // Visualizing the mesh
    case donothing            // should be off
}

// SLAM-related members.
struct SlamData {
    
    var initialized = false
    var showingMemoryWarning = false
    
    var prevFrameTimeStamp: TimeInterval = -1
    
    var scene: STScene? = nil
    var tracker: STTracker? = nil
    var mapper: STMapper? = nil
    var cameraPoseInitializer: STCameraPoseInitializer? = nil
    var initialDepthCameraPose: GLKMatrix4 = GLKMatrix4Identity
    var cubePose: GLKMatrix4 = GLKMatrix4Identity
    var keyFrameManager: STKeyFrameManager? = nil
    var scannerState: ScannerState = .cubePlacement
//    var scannerState: ScannerState = .donothing

    var volumeSizeInMeters = GLKVector3Make(Float.nan, Float.nan, Float.nan)
}

// Utility struct to manage a gesture-based scale.
struct PinchScaleState {
    
    var currentScale: CGFloat = 1
    var initialPinchScale: CGFloat = 1
}

func keepInRange(_ value: Float, minValue: Float, maxValue: Float) -> Float {
    if value.isNaN {
        return minValue
    }
    if value > maxValue {
        return maxValue
    }
    if value < minValue {
        return minValue
    }
    return value
}

struct AppStatus {
    let pleaseConnectSensorMessage = "Please connect Structure Sensor."
    let pleaseChargeSensorMessage = "Please charge Structure Sensor."
    let needColorCameraAccessMessage = "This app requires camera access to capture color.\nAllow access by going to Settings → Privacy → Camera."
    
    enum SensorStatus {
        case ok
        case needsUserToConnect
        case needsUserToCharge
    }
    
    // Structure Sensor status.
    var sensorStatus: SensorStatus = .ok
    
    // Whether iOS camera access was granted by the user.
    var colorCameraIsAuthorized = true
    
    // Whether there is currently a message to show.
    var needsDisplayOfStatusMessage = false
    
    // Flag to disable entirely status message display.
    var statusMessageDisabled = false
}

// Display related members.
struct DisplayData {
    
    // OpenGL context.
    var context: EAGLContext? = nil
    
    // OpenGL Texture reference for y images.
    var lumaTexture: CVOpenGLESTexture? = nil
    
    // OpenGL Texture reference for color images.
    var chromaTexture: CVOpenGLESTexture? = nil
    
    // OpenGL Texture cache for the color camera.
    var videoTextureCache: CVOpenGLESTextureCache? = nil
    
    // Shader to render a GL texture as a simple quad.
    var yCbCrTextureShader: STGLTextureShaderYCbCr? = nil
    var rgbaTextureShader: STGLTextureShaderRGBA? = nil
    
    var depthAsRgbaTexture: GLuint = 0
    
    // Renders the volume boundaries as a cube.
    var cubeRenderer: STCubeRenderer? = nil
    
    // OpenGL viewport.
    var viewport: [GLfloat] = [0, 0, 0, 0]
    
    // OpenGL projection matrix for the color camera.
    var colorCameraGLProjectionMatrix: GLKMatrix4 = GLKMatrix4Identity
    
    // OpenGL projection matrix for the depth camera.
    var depthCameraGLProjectionMatrix: GLKMatrix4 = GLKMatrix4Identity
    
    // Mesh rendering alpha
    var meshRenderingAlpha: Float = 0.8
}

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate, STSensorControllerDelegate,
STBackgroundTaskDelegate, MeshViewDelegate, UIGestureRecognizerDelegate, AVCaptureVideoDataOutputSampleBufferDelegate, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate {

    @IBOutlet weak var eview: EAGLView!
    
    @IBOutlet weak var enableNewTrackerSwitch: UISwitch!
    @IBOutlet weak var enableHighResolutionColorSwitch: UISwitch!
    @IBOutlet weak var enableNewMapperSwitch: UISwitch!
    @IBOutlet weak var enableHighResMappingSwitch: UISwitch!
    
    @IBOutlet weak var appStatusMessageLabel: UILabel!
    @IBOutlet weak var scanButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var trackingLostLabel: UILabel!
    @IBOutlet weak var enableNewTrackerView: UIView!
    @IBOutlet weak var instructionOverlay: UIView!
    @IBOutlet weak var calibrationOverlay: UIView!
    
    // Structure Sensor controller.
    var _sensorController: STSensorController!
    var _structureStreamConfig: STStreamConfig!
    
    var _slamState = SlamData.init()
    
    var _options = Options.init()
    
    var _dynamicOptions: DynamicOptions!
    
    // Manages the app status messages.
    var _appStatus = AppStatus.init()
    
    var _display: DisplayData? = DisplayData()
    
    // Most recent gravity vector from IMU.
    var _lastGravity: GLKVector3!
    
    // Scale of the scanning volume.
    var _volumeScale = PinchScaleState()
    
    // Mesh viewer controllers.
    var meshViewController: MeshViewController!
    
    // IMU handling.
    var _motionManager: CMMotionManager? = nil
    var _imuQueue: OperationQueue? = nil
    
    var _naiveColorizeTask: STBackgroundTask? = nil
    var _enhancedColorizeTask: STBackgroundTask? = nil
    var _depthAsRgbaVisualizer: STDepthToRgba? = nil
    
    var _useColorCamera = true
    var trackerShowingScanStart = false
    
    var avCaptureSession: AVCaptureSession? = nil
    var videoDevice: AVCaptureDevice? = nil
    var orthoticDeviceSelected = -1;

    
    @IBOutlet weak var eviewMesh: EAGLView!
    @IBOutlet weak var displayControl: UISegmentedControl!
    @IBOutlet weak var meshViewerMessageLabel: UILabel!
    
    weak var delegate : MeshViewDelegate?
    
    var contextMesh: EAGLContext? = nil
    var projectionMatrixMesh: GLKMatrix4 = GLKMatrix4Identity
    var volumeCenter = GLKVector3Make(0,0,0)
    var displayLink: CADisplayLink?
    var rendererMesh: MeshRenderer!
    var viewpointControllerMesh: ViewpointController!
    var viewportMesh = [GLfloat](repeating: 0, count: 4)
    var modelViewMatrixBeforeUserInteractions: GLKMatrix4?
    var projectionMatrixBeforeUserInteractions: GLKMatrix4?
    
    var mailViewController: MFMailComposeViewController?
    
    // force the view to redraw.
    var needsDisplay: Bool = false
    
    var _mesh: STMesh? = nil

    var _meshToSave: STMesh? = nil

    var mesh: STMesh?
    {
        get {
            return _mesh
        }
        set {
            _mesh = newValue
            
            if _mesh != nil {
                
                self.rendererMesh!.uploadMesh(_mesh!)
                self.trySwitchToColorRenderingMode()
                self.needsDisplay = true
            }
        }
    }

    
    deinit {
        avCaptureSession!.stopRunning()
        if EAGLContext.current() == _display!.context {
            EAGLContext.setCurrent(nil)
        }
        unregisterNotificationHandlers()
    }
    
    func unregisterNotificationHandlers() {
        
        NotificationCenter.default.removeObserver(self, name: UIApplication.didBecomeActiveNotification, object: nil)
    }
    
    func registerNotificationHandlers() {
        // Make sure we get notified when the app becomes active to start/restore the sensor state if necessary.
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil) { _ in self.appDidBecomeActive()}

      
    }
    
    
    var screenViewing = 0;
    var practitioners = [Practitioner]()
    var orders = [Order]()
    var patients = [Patient]()
    var photos = [FootPhoto]()
    var defaultPractitioner : Practitioner?
    var pages = [UIView]();
    var expandCurrentOrder = false;
    var activeDeviceIsOrthotic = false;
    var activeDeviceIsRichie = false;
    
    
    func updateImagesForValidOrthoticsForm() {
        orthoticsPrescriptionViewController?.updateImagesForValidOrthoticsForm();
    }
    
    var backStack = [Int?]();
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func resetValuesForNewOrder() {
        leftFootEscanDone = false;
        rightFootEscanDone = false;
        richieBraceHasBeenSelected = false;
        orthoticsHasBeenSelected = false;

    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (pickerView == patientGender) {
            return 3;
        } else if (pickerView == practitionerPicker) {
            return practitioners.count;
        } else if (pickerView == orthoticMaterialPicker) {
            let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
            if (theMOI.orthoticsMaterialSelection == orthosisMaterialPolypropyleneIndex) {
                return orthosisPolypropyleneLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialGraphiteCompositeIndex) {
                return orthosisGraphiteCompositeLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialFiberglassCompositeIndex) {
                return orthosisFiberglassCompositeLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialAcrylicIndex) {
                return orthosisAcrylicLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialHighDensityProlyetheleneIndex) {
                return orthosisHighDensityPolyetheleneLabels.count;
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialEVAIndex) {
                return orthosisAccomodativeEVALabels.count;
            }
        } else if (pickerView == patientShoeTypePicker) {
            return patientShoeTypeLabels.count;
        } else if (pickerView == orthoticSpecificationsHeelCupHeightLeftPicker) {
            return orthosisSpecificationHeelCupLeftPickerData.count;
        } else if (pickerView == orthoticSpecificationsHeelCupHeightRightPicker) {
            return orthosisSpecificationHeelCupRightPickerData.count;
        } else if (pickerView == orthoticSpecificationsAnteriorWidthLeftPicker) {
            return anteriorWidthPickerData.count;
        } else if (pickerView == postingRearfootPostTypePicker) {
            if (orthoticDeviceSelected == 1) {
                return postingRearfootPostPolypropeleneTypePickerData.count;
            } else {
                return postingRearfootPostTypePickerData.count
            }

        } else if (pickerView == orthoticSpecificationsAnteriorWidthRightPicker) {
            return anteriorWidthPickerData.count;
        } else if (pickerView == orthoticSpecificationsAnteriorWidthRightPicker) {
            return anteriorWidthPickerData.count;
        } else if (pickerView == rushOrderExpressShippingPicker) {
            return rushOrderExpressShippingPickerData.count;
        } else if (pickerView == orthoticMaterialColorPicker) {
            return orthosisMaterialColorLabels.count;
        }

        return 3;
    }
    
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let isWeightSupplied = Int((order.orderPatient?.weight) ?? 0) > 0;
        
        var pickerLabel: UILabel? = (view as? UILabel)
        if pickerLabel == nil {
            pickerLabel = UILabel()
            let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);
            if (row == 0) {
                pickerLabel?.font = UIFont(name: "Gil Sans-Bold", size: 24 * multiplier)
            } else {
                pickerLabel?.font = UIFont(name: "Gil Sans", size: 18 * multiplier)
            }
            pickerLabel?.textAlignment = .center
        }
        
        
        
        if (pickerView == patientGender) {
            pickerLabel?.text = genderPickerViewValues[row]
        } else if (pickerView == practitionerPicker) {
            pickerLabel?.text = practitioners[row].firstName! + " " + practitioners[row].lastName!
        } else if (pickerView == patientShoeTypePicker) {
            pickerLabel?.text = patientShoeTypeLabels[row]
        } else if (pickerView == orthoticSpecificationsAnteriorWidthLeftPicker) {
            pickerLabel?.text = anteriorWidthPickerData[row]
        } else if (pickerView == orthoticSpecificationsAnteriorWidthRightPicker) {
            pickerLabel?.text = anteriorWidthPickerData[row]
        } else if (pickerView == orthoticMaterialColorPicker) {
            pickerLabel?.text = orthosisMaterialColorLabels[row]
        } else if (pickerView == postingRearfootPostTypePicker) {
            if (orthoticDeviceSelected == 1) { // if polymax, should be polypropelene
                pickerLabel?.text = postingRearfootPostPolypropeleneTypePickerData[row];
            } else {
                pickerLabel?.text = postingRearfootPostTypePickerData[row]
            }
            
        } else if (pickerView == orthoticMaterialPicker) {
            let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
            if (theMOI.orthoticsMaterialSelection == orthosisMaterialPolypropyleneIndex) {
                
                pickerLabel?.text = isWeightSupplied || row > 0 ? orthosisPolypropyleneLabels[row] : "Choose one";
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialGraphiteCompositeIndex) {
                pickerLabel?.text = isWeightSupplied || row > 0 ?orthosisGraphiteCompositeLabels[row] : "Choose one";
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialFiberglassCompositeIndex) {
                pickerLabel?.text = isWeightSupplied || row > 0 ?orthosisFiberglassCompositeLabels[row] : "Choose one";
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialAcrylicIndex) {
                pickerLabel?.text = isWeightSupplied || row > 0 ?orthosisAcrylicLabels[row] : "Choose one";
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialHighDensityProlyetheleneIndex) {
                pickerLabel?.text = isWeightSupplied || row > 0 ?orthosisHighDensityPolyetheleneLabels[row] : "Choose one";
            } else if (theMOI.orthoticsMaterialSelection == orthosisMaterialEVAIndex) {
                pickerLabel?.text = orthosisAccomodativeEVALabels[0]; // Can only select EVA
            }
            
        } else if (pickerView == orthoticSpecificationsHeelCupHeightLeftPicker) {
            pickerLabel?.text = orthosisSpecificationHeelCupLeftPickerData[row]
        } else if (pickerView == orthoticSpecificationsHeelCupHeightRightPicker) {
            pickerLabel?.text = orthosisSpecificationHeelCupRightPickerData[row]
        } else if (pickerView == rushOrderExpressShippingPicker) {
            pickerLabel?.text = rushOrderExpressShippingPickerData[row]
        } else {
            pickerLabel?.text = String(row);
        }
        
        
        return pickerLabel!
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (pickerView == practitionerPicker) {
            let theSelection = practitionerPicker.selectedRow(inComponent: 0);
            if (theSelection == 0) {
                clearPractitionerForm();
            } else {
                let thePractitioner = practitioners[theSelection];
                readPractitionerToForm(thePractitioner: thePractitioner);
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (pickerView == postingRearfootPostTypePicker) {
            setEnabledPostingForm(enabled: postingRearfootPostTypePicker.selectedRow(inComponent: 0) != 0)
        } else if (pickerView == orthoticSpecificationsHeelCupHeightLeftPicker) {
            orthosisSpecificationsOtherLatmmLeft.text = "";
            orthosisSpecificationsOtherMedmmLeft.text = "";
        } else if (pickerView == orthoticSpecificationsHeelCupHeightRightPicker) {
            orthosisSpecificationsOtherLatmmRight.text = "";
            orthosisSpecificationsOtherMedmmRight.text = "";
        }
        
        

        changeValuesBasedOnChangedInput();

        //TODO fill in xxx here
        //print(myPickerViewData[row])
    }

    func clearPractitionerForm() {
        practitionerNameInput.text = "*First Name";
        practitionerLastNameInput.text = "*Last Name";
        practitionerBillingAddress1.text = "*Address 1";
        practitionerBillingAddress2.text = "Address 2";
        practitionerBillingAddressCity.text = "*City";
        practitionerBillingAddressState.text = "*State";
        practitionerBillingAddressZip.text = "*Zip";
        practitionerBillingAddressCountry.text = "Country";
        practitionerBillingAddressFacilityName.text = "Business or Facility Name";
        

        practitionerShippingAddress1.text = "*Address 1";
        practitionerShippingAddress2.text = "Address 2";
        practitionerShippingAddressCity.text = "*City";
        practitionerShippingAddressState.text = "*State";
        practitionerShippingAddressZip.text = "*Zip";
        practitionerShippingAddressCountry.text = "Country";
        practitionerShippingAddressFacilityName.text = "Business or Facility Name";
        practitionerPhoneInput.text = "*Phone";
        practitionerEmailInput.text = "*Email";
        newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
        newPractitionerUseEmailForCC.isOn = true;
        

        practitionerNameInput.textColor = .gray;
        practitionerLastNameInput.textColor = .gray;
        practitionerBillingAddress1.textColor = .gray;
        practitionerBillingAddress2.textColor = .gray;
        practitionerBillingAddressCity.textColor = .gray;
        practitionerBillingAddressState.textColor = .gray;
        practitionerBillingAddressZip.textColor = .gray;
        practitionerBillingAddressCountry.textColor = .gray;
        practitionerBillingAddressFacilityName.textColor = .gray;
        practitionerShippingAddress1.textColor = .gray;
        practitionerShippingAddress2.textColor = .gray;
        practitionerShippingAddressCity.textColor = .gray;
        practitionerShippingAddressState.textColor = .gray;
        practitionerShippingAddressZip.textColor = .gray;
        practitionerShippingAddressCountry.textColor = .gray;
        practitionerShippingAddressFacilityName.textColor = .gray;
        practitionerPhoneInput.textColor = .gray;
        practitionerEmailInput.textColor = .gray;

        refreshPractitionerNameLabel();

    }

    func clearPatientForm() {
        patientNameLabel.text = "";
        patientNameInput.text = "";
        patientLastNameInput.text = "";
        patientAgeInput.text = "";
        patientHeightInput.text = "";
        patientHeightInchesInput.text = "";
        patientWeightInput.text = "";
        patientShoeSizeInput.text = "";
        patientMedicalRecordNumberInput.text = "";
        patientGender.selectRow(0, inComponent: 0, animated: false);
        patientShoeTypePicker.selectRow(0, inComponent: 0, animated: false);
        order.orderPatient = nil;
    }
    
    func clearScanForm() {
        escanLeftFootUIButton.setImage(UIImage(named: "ScanL.png"), for: UIControl.State.normal)
        escanRightFootUIButton.setImage(UIImage(named: "ScanR.png"), for: UIControl.State.normal)
        reorderUISwitch.isOn = false;
        for iUiImageView in reorderScrollView.subviews {
            let theImageView = (iUiImageView as! UIImageView);
            //Only remove the images we put in, not the scrollbars
            if (theImageView.bounds.size.height == setImagePictureHeight) {
                theImageView.removeFromSuperview();
            }
        }
        
    }
    
    func clearOrthoticDeviceForm() {
        orthoticDeviceSelected = -1;
        orthoticsDeviceViewController?.resetTableView();
    }
    
    func clearRichieBraceForm() {
        richieBraceHasBeenSelected = false;
        richieBraceViewController?.clearThisRichieBraceForm();
    }
    
    func clearCorrectionsAndModificationsForm() {
        correctionsAndModificationsMedialHeelSkiveLeft.text = "";
        correctionsAndModificationsIntrinsicMetatarsalPadMmRight.text = "";
        correctionsAndModificationsIntrinsicMetatarsalPadMmLeft.text = "";
        correctionsAndModificationsStyloidAccomLeft.text = "";
        correctionsAndModificationsStyloidAccomRight.text = "";
        correctionsAndModificationsAsMarkedOnCastLeft.text = "";
        correctionsAndModificationsAsMarkedOnCastRight.text = "";
        correctionsAndModificationsNavicularAccomLeft.text = "";
        correctionsAndModificationsNavicularAccomRight.text = "";
        correctionsAndModificationsMedialHeelSkiveRight.text = "";
        correctionsAndModificationsPlantarFaciaAccomLeft.text = "";
        correctionsAndModificationsPlantarFaciaAccomRight.text = "";
        correctionsAndModificationsAddLatHeelExpansionLeft.text = "";
        correctionsAndModificationsAddLatHeelExpansionRight.text = "";
        correctionsAndModificationsCastOrientationEvertedLeft.text = "";
        correctionsAndModificationsCastOrientationEvertedRight.text = "";
        correctionsAndModificationsCastOrientationInvertedLeft.text = "";
        correctionsAndModificationsCastOrientationInvertedRight.text = "";
        correctionsAndModificationsFillWIthPoronLeftUISwitch.isOn = false;
        correctionsAndModificationsFillWIthPoronRightUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn = false;
        correctionsAndModificationsNavicularFillWIthPoronLeftUISwitch.isOn = false;
        correctionsAndModificationsNavicularFillWIthPoronRightUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn = false;
        correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn = false;
    }
    
    func readPractitionerToForm(thePractitioner: Practitioner!) {
        practitionerNameInput.text = thePractitioner.firstName;
        practitionerLastNameInput.text = thePractitioner.lastName;
        
        practitionerBillingAddress1.text = thePractitioner.billingAddress1;
        practitionerBillingAddress2.text = thePractitioner.billingAddress2;
        practitionerBillingAddressCity.text = thePractitioner.billingAddressCity;
        practitionerBillingAddressState.text = thePractitioner.billingAddressState;
        practitionerBillingAddressZip.text = thePractitioner.billingAddressZip;
        practitionerBillingAddressCountry.text = thePractitioner.billingAddressCountry;
        practitionerBillingAddressFacilityName.text = thePractitioner.billingAddressFacilityName;
        practitionerShippingAddress1.text = thePractitioner.shippingAddress1;
        practitionerShippingAddress2.text = thePractitioner.shippingAddress2;
        practitionerShippingAddressCity.text = thePractitioner.shippingAddressCity;
        practitionerShippingAddressState.text = thePractitioner.shippingAddressState;
        practitionerShippingAddressZip.text = thePractitioner.shippingAddressZip;
        practitionerShippingAddressCountry.text = thePractitioner.shippingAddressCountry;
        practitionerShippingAddressFacilityName.text = thePractitioner.shippingAddressFacilityName;
        newPractitionerSameAsBillingAddressUiSwitch.isOn = thePractitioner.useShippingAddressForBillingAddress;
        newPractitionerUseEmailForCC.isOn = thePractitioner.useEmailForCC;
        
        
        practitionerBillingAddress1.textColor = practitionerBillingAddress1.text == "*Address 1" ? .gray : .black
        practitionerBillingAddress2.textColor = practitionerBillingAddress2.text == "Address 2" ? .gray : .black
        practitionerBillingAddressCity.textColor = practitionerBillingAddressCity.text == "*City" ? .gray : .black
        practitionerBillingAddressState.textColor = practitionerBillingAddressState.text == "*State" ? .gray : .black
        practitionerBillingAddressZip.textColor = practitionerBillingAddressZip.text == "*Zip" ? .gray : .black
        practitionerBillingAddressCountry.textColor = practitionerBillingAddressCountry.text == "Country" ? .gray : .black
        practitionerBillingAddressFacilityName.textColor = practitionerBillingAddressFacilityName.text == "Business or Facility Name" ? .gray : .black
        
        practitionerShippingAddress1.textColor = practitionerShippingAddress1.text == "*Address 1" ? .gray : .black
        practitionerShippingAddress2.textColor = practitionerShippingAddress2.text == "Address 2" ? .gray : .black
        practitionerShippingAddressCity.textColor = practitionerShippingAddressCity.text == "*City" ? .gray : .black
        practitionerShippingAddressState.textColor = practitionerShippingAddressState.text == "*State" ? .gray : .black
        practitionerShippingAddressZip.textColor = practitionerShippingAddressZip.text == "*Zip" ? .gray : .black
        practitionerShippingAddressCountry.textColor = practitionerShippingAddressCountry.text == "Country" ? .gray : .black
        practitionerShippingAddressFacilityName.textColor = practitionerShippingAddressFacilityName.text == "Business or Facility Name" ? .gray : .black
        
        practitionerPhoneInput.text = thePractitioner.phone;
        practitionerEmailInput.text = thePractitioner.email;
        
        newPractitionerUseEmailForCC.isOn = thePractitioner.useEmailForCC;
        newPractitionerSameAsBillingAddressUiSwitch.isOn = thePractitioner.useShippingAddressForBillingAddress;

        refreshPractitionerNameLabel();

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        makePdf2AndEmail();

        pages.append(openingPage)              // 0
        pages.append(orderManagement)          // 1
        pages.append(practitionerManagement)   // 2
        pages.append(practitionerManagement)          // 3
        pages.append(patientManagement)        // 4

        pages.append(newOrderTypeForm)         // 5
        pages.append(orthoticsForm)            // 6
        pages.append(richieBraceForm)          // 7
        pages.append(scanForm)                 // 8
        pages.append(reviewAndSubmitForm)      // 9

        pages.append(orthoticsMaterialForm)               // 10
        pages.append(orthoticsCorrectionsForm)            // 11
        pages.append(orthoticsSpecificationsForm)         // 12
        pages.append(orthoticsPostingForm)                // 13
        pages.append(orthoticsTopCoversAndExtensionsForm) // 14
        pages.append(orthoticsRushOrderForm)         // 15
        pages.append(orthoticsRushOrderForm)              // 16
        pages.append(orthoticsCommentsInstructionsForm)   // 17
        pages.append(orthoticsAccommodationsAndAdditionsForm) // 18
        pages.append(orthoticsAccommodationsAndAdditionsForm) // 19
        pages.append(orthoticsAccommodationsAndAdditionsForm) // 20
        pages.append(orthoticDeviceForm) // 21



        defaultPractitioner = nil;
        
        orderManagement.isHidden = true;
        practitionerManagement.isHidden = true;
        patientManagement.isHidden = true;
        newOrderTypeForm.isHidden = true;
        orthoticsForm.isHidden = true;
        orthoticsMaterialForm.isHidden = true;
        orthoticsCorrectionsForm.isHidden = true;
        orthoticsSpecificationsForm.isHidden = true;
        orthoticsPostingForm.isHidden = true;
        orthoticsTopCoversAndExtensionsForm.isHidden = true;
        orthoticsRushOrderForm.isHidden = true;
        orthoticDeviceForm.isHidden = true;
        orthoticsCommentsInstructionsForm.isHidden = true;
        orthoticsAccommodationsAndAdditionsForm.isHidden = true;
        scanForm.isHidden = true;
        reviewAndSubmitForm.isHidden = true;
        richieBraceForm.isHidden = true;
        areYouSureView.isHidden = true;
        menuView.isHidden = true;
        backNextView.isHidden = true;
        
        emailErrorLabel.text = "";

        
        self.preferredContentSize.width = screenSize.width;
        self.preferredContentSize.height = screenSize.height;
        view.frame.size.width = screenSize.width;
        view.frame.size.height = screenSize.height;

        loadOrdersFromCoreData();

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        order.addToOrderMaterialItemList(MaterialOrderItem.init(entity: NSEntityDescription.entity(forEntityName: "MaterialOrderItem", in:context)!, insertInto: context));
        
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        theMOI.orthoticsMaterialPickerSelection = -1;
        
        let multiplier : CGFloat = 1 - ((1 - (screenSize.width / 2048)) / 2);

        if (multiplier != 1) {
            newOrderButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            existingOrderButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            nextButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            backButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            orthoticsButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            richieBraceButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            deletePractitionerButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            defaultPractitionerButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            savePractitionerButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            okDeletePractitioner.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            cancelDeletePractitioner.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            submitEmailButton.titleLabel?.font =  UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            newPractitionerLabel.font = UIFont(name: "Gil Sans-Bold", size: 80 * multiplier)
            
            commentsTextArea.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            
            welcomeLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            newOrderLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            patientLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            patientNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            
            patientLastNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            materialLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            materialNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            eScanLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            eScanNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            submitLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthoticMaterialTypeLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            areYouSureLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            areYouSureDeletePractitioner.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            reorderLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisMaterialColorLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            commentsInstructionsLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            orthosisChiefComplaintDiagnosisLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)

            emailErrorLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            
            newPractitionerSameAsBillingAddressLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)

            patientDetailsLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            patientDetailsNameLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsAgeLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsGenderLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsHeightLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsHeightInchesLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsHeightFeetLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsWeightLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsShoeSizeLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientDetailsMedicalRecordNumberLabel.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)



            
           

            
            

            practitionerNameInput.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerLastNameInput.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerEmailInput.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerPhoneInput.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddressFacilityName.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddress1.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddress2.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddressCity.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddressState.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddressZip.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerBillingAddressCountry.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddressFacilityName.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddress1.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddress2.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddressCity.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddressState.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddressZip.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            practitionerShippingAddressCountry.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            patientNameInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientLastNameInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientAgeInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientWeightInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientHeightInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientHeightInchesInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientShoeSizeInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)
            patientMedicalRecordNumberInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)

            orthoticsPrescriptionLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            orthoticDeviceLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            orthosisChiefComplaintDiagnosisInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)

            
            patientGender.delegate = self;
            patientGender.dataSource = self;
            practitionerPicker.delegate = self;
            practitionerPicker.dataSource = self;
            postingRearfootPostTypePicker.delegate = self;
            postingRearfootPostTypePicker.dataSource = self;
            
            //orthoticsMaterialPicker defined in storyboard
            
            for i in 0 ..<  orthoticsMaterialForm.subviews.count {
                let iSubview = orthoticsMaterialForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }

            for i in 0 ..<  orthoticsCorrectionsForm.subviews.count {
                let iSubview = orthoticsCorrectionsForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }

            for i in 0 ..<  orthoticsRushOrderForm.subviews.count {
                let iSubview = orthoticsRushOrderForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }

            for i in 0 ..<  orthoticsTopCoversAndExtensionsForm.subviews.count {
                let iSubview = orthoticsTopCoversAndExtensionsForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }
            
            for i in 0 ..<  orthoticsPostingForm.subviews.count {
                let iSubview = orthoticsPostingForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }
            
            for i in 0 ..<  orthoticsSpecificationsForm.subviews.count {
                let iSubview = orthoticsSpecificationsForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
                }
            }
            
            for i in 0 ..<  newOrderTypeForm.subviews.count {
                let iSubview = newOrderTypeForm.subviews[i];
                if (iSubview is UILabel) {
                    (iSubview as! UILabel).font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
                }
            }
        }
        
        
        patientWeightInput.keyboardType = .numberPad
        patientHeightInput.keyboardType = .numberPad
        patientHeightInchesInput.keyboardType = .numberPad
        patientAgeInput.keyboardType = .numberPad
        patientShoeSizeInput.keyboardType = .numberPad

        practitionerBillingAddressZip.keyboardType = .numberPad
        practitionerShippingAddressZip.keyboardType = .numberPad
        practitionerPhoneInput.keyboardType = .numberPad
        correctionsAndModificationsCastOrientationInvertedLeft.keyboardType = .numberPad
        correctionsAndModificationsCastOrientationInvertedRight.keyboardType = .numberPad
        correctionsAndModificationsCastOrientationEvertedLeft.keyboardType = .numberPad
        correctionsAndModificationsCastOrientationEvertedRight.keyboardType = .numberPad
        correctionsAndModificationsPlantarFaciaAccomLeft.keyboardType = .numberPad
        correctionsAndModificationsPlantarFaciaAccomRight.keyboardType = .numberPad
        correctionsAndModificationsStyloidAccomLeft.keyboardType = .numberPad
        correctionsAndModificationsStyloidAccomRight.keyboardType = .numberPad
        correctionsAndModificationsNavicularAccomLeft.keyboardType = .numberPad
        correctionsAndModificationsNavicularAccomRight.keyboardType = .numberPad
        correctionsAndModificationsAsMarkedOnCastLeft.keyboardType = .numberPad
        correctionsAndModificationsAsMarkedOnCastRight.keyboardType = .numberPad
        correctionsAndModificationsAddLatHeelExpansionLeft.keyboardType = .numberPad
        correctionsAndModificationsAddLatHeelExpansionRight.keyboardType = .numberPad
        correctionsAndModificationsMedialHeelSkiveLeft.keyboardType = .numberPad
        correctionsAndModificationsMedialHeelSkiveRight.keyboardType = .numberPad
        correctionsAndModificationsIntrinsicMetatarsalPadMmLeft.keyboardType = .numberPad
        correctionsAndModificationsIntrinsicMetatarsalPadMmRight.keyboardType = .numberPad
        orthosisSpecificationsOtherMedmmLeft.keyboardType = .numberPad
        orthosisSpecificationsOtherMedmmRight.keyboardType = .numberPad
        orthosisSpecificationsOtherLatmmLeft.keyboardType = .numberPad
        orthosisSpecificationsOtherLatmmRight.keyboardType = .numberPad
        postingHeelLiftLeft.keyboardType = .numberPad
        postingHeelLiftRight.keyboardType = .numberPad
        postingRearfootPostMotionOtherDegreesLeft.keyboardType = .numberPad
        postingRearfootPostMotionOtherDegreesRight.keyboardType = .numberPad
        postingRearfootPostingElevatorOthermmLeft.keyboardType = .numberPad
        postingRearfootPostingElevatorOthermmRight.keyboardType = .numberPad

        loadPractitionersFromCoreData();
        clearPractitionerForm();
        loadDefaultPractitionerFromCoreData();
        loadMyDevicesFromCoreData();


        
        practitionerNameInput.delegate = self
        practitionerLastNameInput.delegate = self
        practitionerPhoneInput.delegate = self
        practitionerEmailInput.delegate = self
        practitionerBillingAddress1.delegate = self
        practitionerBillingAddress2.delegate = self
        practitionerBillingAddressCity.delegate = self
        practitionerBillingAddressState.delegate = self
        practitionerBillingAddressZip.delegate = self
        practitionerBillingAddressCountry.delegate = self
        practitionerBillingAddressFacilityName.delegate = self
        practitionerShippingAddress1.delegate = self
        practitionerShippingAddress2.delegate = self
        practitionerShippingAddressCity.delegate = self
        practitionerShippingAddressState.delegate = self
        practitionerShippingAddressZip.delegate = self
        practitionerShippingAddressCountry.delegate = self
        practitionerShippingAddressFacilityName.delegate = self
        patientNameInput.delegate = self
        patientLastNameInput.delegate = self
        patientAgeInput.delegate = self
        patientHeightInput.delegate = self
        patientHeightInchesInput.delegate = self
        patientWeightInput.delegate = self
        orthosisChiefComplaintDiagnosisInput.delegate = self
        patientShoeSizeInput.delegate = self
        patientMedicalRecordNumberInput.delegate = self
        correctionsAndModificationsCastOrientationInvertedLeft.delegate = self
        correctionsAndModificationsCastOrientationInvertedRight.delegate = self
        correctionsAndModificationsCastOrientationEvertedLeft.delegate = self
        correctionsAndModificationsCastOrientationEvertedRight.delegate = self
        correctionsAndModificationsPlantarFaciaAccomRight.delegate = self
        correctionsAndModificationsPlantarFaciaAccomLeft.delegate = self
        correctionsAndModificationsStyloidAccomRight.delegate = self
        correctionsAndModificationsStyloidAccomLeft.delegate = self
        correctionsAndModificationsAsMarkedOnCastRight.delegate = self
        correctionsAndModificationsAsMarkedOnCastLeft.delegate = self
        correctionsAndModificationsAddLatHeelExpansionRight.delegate = self
        correctionsAndModificationsAddLatHeelExpansionLeft.delegate = self
        correctionsAndModificationsMedialHeelSkiveRight.delegate = self
        correctionsAndModificationsMedialHeelSkiveLeft.delegate = self
        correctionsAndModificationsNavicularAccomLeft.delegate = self
        correctionsAndModificationsNavicularAccomRight.delegate = self
        orthosisSpecificationsOtherMedmmLeft.delegate = self
        orthosisSpecificationsOtherMedmmRight.delegate = self
        orthosisSpecificationsOtherLatmmLeft.delegate = self
        orthosisSpecificationsOtherLatmmRight.delegate = self
        postingHeelLiftLeft.delegate = self
        postingHeelLiftRight.delegate = self
        postingRearfootPostMotionOtherDegreesLeft.delegate = self
        postingRearfootPostMotionOtherDegreesRight.delegate = self
        postingRearfootPostingElevatorOthermmLeft.delegate = self
        postingRearfootPostingElevatorOthermmRight.delegate = self
        
        commentsTextArea.delegate = self;

        practitionerNameInput.autocorrectionType = UITextAutocorrectionType.no;
        practitionerLastNameInput.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddressFacilityName.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddressCountry.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddressCity.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddress1.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddress2.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddressState.autocorrectionType = UITextAutocorrectionType.no;
        practitionerBillingAddressZip.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddressFacilityName.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddressCountry.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddressCity.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddress1.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddress2.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddressState.autocorrectionType = UITextAutocorrectionType.no;
        practitionerShippingAddressZip.autocorrectionType = UITextAutocorrectionType.no;
        practitionerPhoneInput.autocorrectionType = UITextAutocorrectionType.no;
        practitionerEmailInput.autocorrectionType = UITextAutocorrectionType.no;
        patientNameInput.autocorrectionType = UITextAutocorrectionType.no;
        patientLastNameInput.autocorrectionType = UITextAutocorrectionType.no;
        patientAgeInput.autocorrectionType = UITextAutocorrectionType.no;
        patientHeightInput.autocorrectionType = UITextAutocorrectionType.no;
        patientHeightInchesInput.autocorrectionType = UITextAutocorrectionType.no;
        patientWeightInput.autocorrectionType = UITextAutocorrectionType.no;
        orthosisChiefComplaintDiagnosisInput.autocorrectionType = UITextAutocorrectionType.no;
        patientShoeSizeInput.autocorrectionType = UITextAutocorrectionType.no;
        patientMedicalRecordNumberInput.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsCastOrientationInvertedLeft.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsCastOrientationInvertedRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsCastOrientationEvertedLeft.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsCastOrientationEvertedRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsPlantarFaciaAccomRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsPlantarFaciaAccomLeft.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsStyloidAccomRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsStyloidAccomLeft.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsAsMarkedOnCastRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsAsMarkedOnCastLeft.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsAddLatHeelExpansionRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsAddLatHeelExpansionLeft.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsMedialHeelSkiveRight.autocorrectionType = UITextAutocorrectionType.no;
        correctionsAndModificationsMedialHeelSkiveLeft.autocorrectionType = UITextAutocorrectionType.no;
        orthosisSpecificationsOtherMedmmLeft.autocorrectionType = UITextAutocorrectionType.no;
        orthosisSpecificationsOtherMedmmRight.autocorrectionType = UITextAutocorrectionType.no;
        orthosisSpecificationsOtherLatmmLeft.autocorrectionType = UITextAutocorrectionType.no;
        orthosisSpecificationsOtherLatmmRight.autocorrectionType = UITextAutocorrectionType.no;
        postingHeelLiftLeft.autocorrectionType = UITextAutocorrectionType.no;
        postingHeelLiftRight.autocorrectionType = UITextAutocorrectionType.no;
        postingRearfootPostMotionOtherDegreesLeft.autocorrectionType = UITextAutocorrectionType.no;
        postingRearfootPostMotionOtherDegreesRight.autocorrectionType = UITextAutocorrectionType.no;
        postingRearfootPostingElevatorOthermmLeft.autocorrectionType = UITextAutocorrectionType.no;
        postingRearfootPostingElevatorOthermmRight.autocorrectionType = UITextAutocorrectionType.no;
        
        commentsTextArea.autocorrectionType = UITextAutocorrectionType.no;
       
        
        correctionsAndModificationsNavicularFillWIthPoronLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsNavicularFillWIthPoronRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        
        correctionsAndModificationsFillWIthPoronLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsFillWIthPoronRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillStandardLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillStandardRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsMedialArchFillMinimalRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        newPractitionerSameAsBillingAddressUiSwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        newPractitionerUseEmailForCC.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        
        
        
         postingRearfootPostMotion4DegreesMotionLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
         postingRearfootPostMotion4DegreesMotionRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostMotion0DegreesMotionLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostMotion0DegreesMotionRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostingElevator4mmRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostingElevator4mmLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostingElevator8mmRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostingElevator8mmLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsMedialPostFlangeRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsMedialPostFlangeLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsLateralPostFlangeRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsLateralPostFlangeLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsLongPostFlangeRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsLongPostFlangeLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsShortPostFlangeRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingRearfootPostOptionsShortPostFlangeLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingNonCorrectiveForefootPostFullWidthRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingNonCorrectiveForefootPostFullWidthLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingNonCorrectiveForefootPostMedialCornerRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingNonCorrectiveForefootPostLateralCornerRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
       
        rushOrder2DayTurnaroundUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        rushOrderNextDayTurnaroundUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        reorderUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)

        
        depthView.isHidden = true;
        eview.isHidden = true;
        eviewMesh.isHidden = true;
//        STSensorController.shared().delegate = self
        

        
        rendererMesh = MeshRenderer.init()
        
        viewpointControllerMesh = ViewpointController.init(screenSizeX: Float(self.eviewMesh.frame.size.width), screenSizeY: Float(self.eviewMesh.frame.size.height))
        
        registerForKeyboardNotifications()
        
        
        //TODO remove these to enable features
        existingOrderButton.isHidden = true;
        
        
//        sendEmailWithMailcore();
    }

    func loadPractitionersFromCoreData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Practitioner")
        do {
            persistedData = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        if (persistedData.count == 0) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let newPractitioner = Practitioner.init(entity: NSEntityDescription.entity(forEntityName: "Practitioner", in:context)!, insertInto: context);
            newPractitioner.firstName = "New";
            newPractitioner.lastName = "Practitioner"
            
            do {
                try context.save();
                practitioners.append(newPractitioner);
                appDelegate.saveContext();
            } catch let error as NSError {
                //TODO Cannot save, fail startup
                print("Could not save. \(error), \(error.userInfo)")
            }
        } else {
            //Load the practitioners array
            for i in 0 ..<  persistedData.count {
                let practitionerFromStorage = persistedData[i]
                if (practitionerFromStorage is Practitioner) {
                    practitioners.append(practitionerFromStorage as! Practitioner);
                }
                
            }
            
        }
    }
    
    func loadOrdersFromCoreData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Order")
        do {
            persistedData = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        do {
            try context.save();
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }
        if (persistedData.count > 0) {
            //Load the Orders array
            let sixMonthsAgo = Calendar.current.date(byAdding: .month, value: -6, to: Date())
            for i in 0 ..<  persistedData.count {
                let orderFromStorage = persistedData[i]
                if (orderFromStorage is Order) {
                    let orderFromStore = orderFromStorage as! Order;
                    if (orderFromStore.createDateTime != nil && orderFromStore.createDateTime! < sixMonthsAgo!) {
                        context.delete(orderFromStore);
                    } else if (orderFromStore.orderPatient == nil){
                        context.delete(orderFromStore);
                    } else {
                        orders.append(orderFromStore);
                    }
                }
                
            }
            
        }
        let newOrder = Order.init(entity: NSEntityDescription.entity(forEntityName: "Order", in:context)!, insertInto: context);
        newOrder.createDateTime = Date();
        order = newOrder;
        

        do {
            try context.save();
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }
        NSLog("There are " + String(orders.count) + " orders")
    }

    func loadDefaultPractitionerFromCoreData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequestDefaults =
            NSFetchRequest<NSManagedObject>(entityName: "Defaults")
        
        do {
            persistedDataDefaults = try context.fetch(fetchRequestDefaults)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        if (persistedDataDefaults.count == 0) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            defaults = Defaults.init(entity: NSEntityDescription.entity(forEntityName: "Defaults", in:context)!, insertInto: context);
            defaults?.defaultPractitioner = -1;
            do {
                try context.save();
                appDelegate.saveContext();
            } catch let error as NSError {
                //TODO Cannot save, fail startup
                print("Could not save. \(error), \(error.userInfo)")
            }
        } else {
            defaults = (persistedDataDefaults[0] as! Defaults);
            if (defaults!.defaultPractitioner != -1) {
                if (practitioners.count <= defaults!.defaultPractitioner ) {
                    //The default practitioner was deleted, ignore
                    defaults!.defaultPractitioner = -1;
                } else {
                    defaultPractitioner =  practitioners[Int(defaults!.defaultPractitioner)];
                    readPractitionerToForm(thePractitioner: defaultPractitioner)
                    practitionerPicker.selectRow(Int(defaults!.defaultPractitioner), inComponent: 0, animated: false);
                }
            }
            
        }
    }
    
    
    func saveRichieBraceToCoreData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        do {
            try context.save();
            
            let newRichieBrace = RichieBrace.init(entity: NSEntityDescription.entity(forEntityName: "RichieBrace", in:context)!, insertInto: context);

            let theValueToStore = richieBraceViewController?.medialHeelSkivePikerView.selectedRow(inComponent: 0);
            newRichieBrace.medialHeelSkive = Int16(theValueToStore ?? 0);
            newRichieBrace.navicularAccommodation = false;
            
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save Order. \(error), \(error.userInfo)")
        }
    }

    func saveMyDeviceToCoreData(nameOfDevice : String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        var deviceIndex = -1;
        var i = 0;
        
        order.deviceName = nameOfDevice;
        
        for device in myDevices {
            if (device.deviceName == order.deviceName) {
                deviceIndex = i;
            }
            i = i + 1;
        }
        
        do {
            if (deviceIndex > -1) {
                try context.save();
                updateMyDeviceFromOrder(myDeviceIndex: deviceIndex);
            } else {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let context = appDelegate.persistentContainer.viewContext
                
                let newDevice = Order.init(entity: NSEntityDescription.entity(forEntityName: "Order", in:context)!, insertInto: context);
                newDevice.addToOrderMaterialItemList(MaterialOrderItem.init(entity: NSEntityDescription.entity(forEntityName: "MaterialOrderItem", in:context)!, insertInto: context));

                copyOrderAToB(orderA: order, orderB: newDevice);
                try context.save();
                myDevices.append(newDevice);
            }

            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save Order. \(error), \(error.userInfo)")
        }
    }

    func loadMyDevicesFromCoreData() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Order")
        do {
            persistedData = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch My Devices. \(error), \(error.userInfo)")
        }
        if (persistedData.count > 0) {
            for i in 0 ..<  persistedData.count {
                let orderFromStorage = persistedData[i]
                if (orderFromStorage is Order) {
                    let theOrderToStore = orderFromStorage as! Order;
                    if (theOrderToStore.deviceName != nil && theOrderToStore.deviceName != "") {
                        myDevices.append(theOrderToStore);
                    }
                }
                
            }
            
        }
    }
    
    func updateOrderFromDevice(myDeviceIndex: Int) {
        let theDevice = myDevices[myDeviceIndex];
        copyOrderAToB(orderA:theDevice, orderB:order);
    }
    
    func copyOrderAToB(orderA: Order?, orderB: Order?) {
        let source = orderA!;
        let dest = orderB!;
        
        let aeef = dest.orderMaterialItemList![0] as! MaterialOrderItem;
        let beef = source.orderMaterialItemList![0] as! MaterialOrderItem;
        aeef.orthoticsMaterialPickerSelection = beef.orthoticsMaterialPickerSelection;
        aeef.orthoticsMaterialSelection = beef.orthoticsMaterialSelection;

        
        dest.accommodationsDancersPadLeft = source.accommodationsDancersPadLeft;
        dest.accommodationsDancersPadRight = source.accommodationsDancersPadRight;
        dest.accommodationsEva = source.accommodationsEva;
        dest.accommodationsEvaArchFillLeft = source.accommodationsEvaArchFillLeft;
        dest.accommodationsEvaArchFillRight = source.accommodationsEvaArchFillRight;
        dest.accommodationsHeelPadLEft = source.accommodationsHeelPadLEft;
        dest.accommodationsHeelPadRight = source.accommodationsHeelPadRight;
        dest.accommodationsHorseshoePadLeft = source.accommodationsHorseshoePadLeft;
        dest.accommodationsHorseshoePadRight = source.accommodationsHorseshoePadRight;
        dest.accommodationsKineticWedgeLeft = source.accommodationsKineticWedgeLeft;
        dest.accommodationsKineticWedgeRight = source.accommodationsKineticWedgeRight;
        dest.accommodationsKorex = source.accommodationsKorex;
        dest.accommodationsMedialArchReinforceLeft = source.accommodationsMedialArchReinforceLeft;
        dest.accommodationsMedialArchReinforceRight = source.accommodationsMedialArchReinforceRight;
        dest.accommodationsMetatarsalBarLeft = source.accommodationsMetatarsalBarLeft;
        dest.accommodationsMetatarsalBarRight = source.accommodationsMetatarsalBarRight;
        dest.accommodationsMetatarsalPadLeft = source.accommodationsMetatarsalPadLeft;
        dest.accommodationsMetatarsalPadRight = source.accommodationsMetatarsalPadRight;
        dest.accommodationsMetHeadAccommodationsLeft = source.accommodationsMetHeadAccommodationsLeft;
        dest.accommodationsMetHeadAccommodationsRight = source.accommodationsMetHeadAccommodationsRight;
        dest.accommodationsMortonsExtensionLeft = source.accommodationsMortonsExtensionLeft;
        dest.accommodationsMortonsExtensionRight = source.accommodationsMortonsExtensionRight;
        dest.accommodationsNeuromaPadLeft = source.accommodationsNeuromaPadLeft;
        dest.accommodationsNeuromaPadRight = source.accommodationsNeuromaPadRight;
        dest.accommodationsReverseMortonsExtensionLeft = source.accommodationsReverseMortonsExtensionLeft;
        dest.accommodationsReverseMortonsExtensionRight = source.accommodationsReverseMortonsExtensionRight;
        
//        dest.chiefComplaintDiagnosis = source.chiefComplaintDiagnosis;
//        dest.commentsInstructions = source.commentsInstructions;
        
        dest.correctionsAndModificationsAccommodatePerPhotoLeft = source.correctionsAndModificationsAccommodatePerPhotoLeft;
        dest.correctionsAndModificationsNoFillerLeft = source.correctionsAndModificationsNoFillerLeft;
        dest.correctionsAndModificationsNoFillerRight = source.correctionsAndModificationsNoFillerRight;
        dest.correctionsAndModificationsFillWithPoronLeft = source.correctionsAndModificationsFillWithPoronLeft;
        dest.correctionsAndModificationsFillWithPoronRight = source.correctionsAndModificationsFillWithPoronRight;
        dest.correctionsAndModificationsMedialHeelSkiveLeft = source.correctionsAndModificationsMedialHeelSkiveLeft;
        dest.correctionsAndModificationsMedialHeelSkiveRight = source.correctionsAndModificationsMedialHeelSkiveRight;
        dest.correctionsAndModificationsAccommodatePerPhotoLeft = source.correctionsAndModificationsAccommodatePerPhotoLeft;
        dest.correctionsAndModificationsAccommodatePerPhotoRight = source.correctionsAndModificationsAccommodatePerPhotoRight;
        dest.correctionsAndModificationsStyloidAccommodationLeft = source.correctionsAndModificationsStyloidAccommodationLeft;
        dest.correctionsAndModificationsStyloidAccommodationRight = source.correctionsAndModificationsStyloidAccommodationRight;
        dest.correctionsAndModificationsMedialArchFillMinimalLeft = source.correctionsAndModificationsMedialArchFillMinimalLeft;
        dest.correctionsAndModificationsMedialArchFillMinimalRight = source.correctionsAndModificationsMedialArchFillMinimalRight;
        dest.correctionsAndModificationsCastOrientationEvertedLeft = source.correctionsAndModificationsCastOrientationEvertedLeft;
        dest.correctionsAndModificationsCastOrientationEvertedRight = source.correctionsAndModificationsCastOrientationEvertedRight;
        dest.correctionsAndModificationsCastOrientationInvertedLeft = source.correctionsAndModificationsCastOrientationInvertedLeft;
        dest.correctionsAndModificationsCastOrientationInvertedRight = source.correctionsAndModificationsCastOrientationInvertedRight;
        dest.correctionsAndModificationsCastOrientationVerticalLeft = source.correctionsAndModificationsCastOrientationVerticalLeft;
        dest.correctionsAndModificationsCastOrientationVerticalRight = source.correctionsAndModificationsCastOrientationVerticalRight;
        dest.correctionsAndModificationsintrinsicMetatarsalPadLeft = source.correctionsAndModificationsintrinsicMetatarsalPadLeft;
        dest.correctionsAndModificationsintrinsicMetatarsalPadRight = source.correctionsAndModificationsintrinsicMetatarsalPadRight;
        dest.correctionsAndModificationsMedialArchFillStandardLeft = source.correctionsAndModificationsMedialArchFillStandardLeft;
        dest.correctionsAndModificationsMedialArchFillStandardRight = source.correctionsAndModificationsMedialArchFillStandardRight;
        dest.correctionsAndModificationsMedialArchFillDecreasedLeft = source.correctionsAndModificationsMedialArchFillDecreasedLeft;
        dest.correctionsAndModificationsMedialArchFillDecreasedRight = source.correctionsAndModificationsMedialArchFillDecreasedRight;
        dest.correctionsAndModificationsMedialArchFillIncreasedLeft = source.correctionsAndModificationsMedialArchFillIncreasedLeft;
        dest.correctionsAndModificationsMedialArchFillIncreasedRight = source.correctionsAndModificationsMedialArchFillIncreasedRight;
        dest.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft = source.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft;
        dest.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight = source.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight;
        dest.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft = source.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft;
        dest.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight = source.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight;

        dest.deviceName = source.deviceName;
        
        dest.orthosisMaterialColor = source.orthosisMaterialColor;
        dest.orthosisMaterialOption = source.orthosisMaterialOption;
        
        dest.orthosisSpecificationsOtherLatmmLeft = source.orthosisSpecificationsOtherLatmmLeft;
        dest.orthosisSpecificationsOtherMedmmLeft = source.orthosisSpecificationsOtherMedmmLeft;
        dest.orthosisSpecificationsAnteriorWidthLeft = source.orthosisSpecificationsAnteriorWidthLeft;
        dest.orthosisSpecificationsHeelCupHeightLeft = source.orthosisSpecificationsHeelCupHeightLeft;
        dest.orthosisSpecificationsHeelCupHeight18mmLeft = source.orthosisSpecificationsHeelCupHeight18mmLeft;
        dest.orthosisSpecificationsOtherHeelCupHeightLeft = source.orthosisSpecificationsOtherHeelCupHeightLeft;
        dest.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft = source.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft;
        dest.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft = source.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft;
        dest.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeLeft = source.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeLeft;
        dest.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeft = source.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeft;
        dest.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeft = source.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeft;
        dest.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeft = source.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeft;
        dest.orthosisSpecificationsOtherLatmmRight = source.orthosisSpecificationsOtherLatmmRight;
        dest.orthosisSpecificationsOtherMedmmRight = source.orthosisSpecificationsOtherMedmmRight;
        dest.orthosisSpecificationsAnteriorWidthRight = source.orthosisSpecificationsAnteriorWidthRight;
        dest.orthosisSpecificationsHeelCupHeightRight = source.orthosisSpecificationsHeelCupHeightRight;
        dest.orthosisSpecificationsHeelCupHeight18mmRight = source.orthosisSpecificationsHeelCupHeight18mmRight;
        dest.orthosisSpecificationsOtherHeelCupHeightRight = source.orthosisSpecificationsOtherHeelCupHeightRight;
        dest.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight = source.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight;
        dest.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight = source.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight;
        dest.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeRight = source.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeRight;
        dest.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactRight = source.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactRight;
        dest.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadRight = source.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadRight;
        dest.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadRight = source.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadRight;
        
        dest.postingRearfootPostMaterial = source.postingRearfootPostMaterial;
        dest.postingRearfootPostingElevatormmLeft = source.postingRearfootPostingElevatormmLeft;
        dest.postingHeelLiftLeft = source.postingHeelLiftLeft;
        dest.postingRearfootPostingElevator4mmLeft = source.postingRearfootPostingElevator4mmLeft;
        dest.postingRearfootPostingElevator8mmLeft = source.postingRearfootPostingElevator8mmLeft;
        dest.postingRearfootPostingElevatorOtherMmLeft = source.postingRearfootPostingElevatorOtherMmLeft;
        dest.postingRearfootPostMotion0DegreesMotionLeft = source.postingRearfootPostMotion0DegreesMotionLeft;
        dest.postingRearfootPostMotion4DegreesMotionLeft = source.postingRearfootPostMotion4DegreesMotionLeft;
        dest.postingRearfootPostOptionsLongPostFlangeLeft = source.postingRearfootPostOptionsLongPostFlangeLeft;
        dest.postingNonCorrectiveForefootPostFullWidthLeft = source.postingNonCorrectiveForefootPostFullWidthLeft;
        dest.postingRearfootPostOptionsShortPostFlangeLeft = source.postingRearfootPostOptionsShortPostFlangeLeft;
        dest.postingRearfootPostOptionsMedialPostFlangeLeft = source.postingRearfootPostOptionsMedialPostFlangeLeft;
        dest.postingRearfootPostMotionOtherMotionDegreesLeft = source.postingRearfootPostMotionOtherMotionDegreesLeft;
        dest.postingRearfootPostOptionsLateralPostFlangeLeft = source.postingRearfootPostOptionsLateralPostFlangeLeft
        dest.postingNonCorrectiveForefootPostMedialCornerLeft = source.postingNonCorrectiveForefootPostMedialCornerLeft;
        dest.postingNonCorrectiveForefootPostLateralCornerWidthLeft = source.postingNonCorrectiveForefootPostLateralCornerWidthLeft;
        dest.postingHeelLiftRight = source.postingHeelLiftRight;
        dest.postingRearfootPostingElevator4mmRight = source.postingRearfootPostingElevator4mmRight;
        dest.postingRearfootPostingElevator8mmRight = source.postingRearfootPostingElevator8mmRight;
        dest.postingRearfootPostingElevatorOtherMmRight = source.postingRearfootPostingElevatorOtherMmRight;
        dest.postingRearfootPostMotion0DegreesMotionRight = source.postingRearfootPostMotion0DegreesMotionRight;
        dest.postingRearfootPostMotion4DegreesMotionRight = source.postingRearfootPostMotion4DegreesMotionRight;
        dest.postingRearfootPostOptionsLongPostFlangeRight = source.postingRearfootPostOptionsLongPostFlangeRight;
        dest.postingNonCorrectiveForefootPostFullWidthRight = source.postingNonCorrectiveForefootPostFullWidthRight;
        dest.postingRearfootPostOptionsShortPostFlangeRight = source.postingRearfootPostOptionsShortPostFlangeRight;
        dest.postingRearfootPostOptionsMedialPostFlangeRight = source.postingRearfootPostOptionsMedialPostFlangeRight;
        dest.postingRearfootPostMotionOtherMotionDegreesRight = source.postingRearfootPostMotionOtherMotionDegreesRight;
        dest.postingRearfootPostOptionsLateralPostFlangeRight = source.postingRearfootPostOptionsLateralPostFlangeRight
        dest.postingNonCorrectiveForefootPostMedialCornerRight = source.postingNonCorrectiveForefootPostMedialCornerRight;
        dest.postingNonCorrectiveForefootPostLateralCornerRight = source.postingNonCorrectiveForefootPostLateralCornerRight;
        dest.postingRearfootPostingElevatormmRight = source.postingRearfootPostingElevatormmRight;
//
//        dest.rushOrder2DayTurnaround = source.rushOrder2DayTurnaround;
//        dest.rushOrderExpressShiping = source.rushOrderExpressShiping;
//        dest.rushOrderNextDayTurnaround = source.rushOrderNextDayTurnaround;

        dest.topCoversAndExtensionsTopCoverLength = source.topCoversAndExtensionsTopCoverLength;
        dest.topCoversAndExtensionsForefootExtensionsExtensionLength = source.topCoversAndExtensionsForefootExtensionsExtensionLength;
        dest.topCoversAndExtensionsBottomCoverForefootReinforcement = source.topCoversAndExtensionsBottomCoverForefootReinforcement;
        dest.topCoversAndExtensionsBottomCoverMaterialLeatherBrown = source.topCoversAndExtensionsBottomCoverMaterialLeatherBrown;
        dest.topCoversAndExtensionsBottomCoverMaterialLeatherBlack = source.topCoversAndExtensionsBottomCoverMaterialLeatherBlack;
        dest.topCoversAndExtensionsBottomCoverMaterialVinylForest = source.topCoversAndExtensionsBottomCoverMaterialVinylForest;
        dest.topCoversAndExtensionsBottomCoverMaterialVinylBronze = source.topCoversAndExtensionsBottomCoverMaterialVinylBronze;
        dest.topCoversAndExtensionsBottomCoverMaterialVinylBlack = source.topCoversAndExtensionsBottomCoverMaterialVinylBlack;
        dest.topCoversAndExtensionsForefootExtensionsThickness = source.topCoversAndExtensionsForefootExtensionsThickness;
        dest.topCoversAndExtensionsBottomCoverMaterialDiabetic = source.topCoversAndExtensionsBottomCoverMaterialDiabetic;
        dest.topCoversAndExtensionsForefootExtensionsMaterial = source.topCoversAndExtensionsForefootExtensionsMaterial;
        dest.topCoversAndExtensionsBottomCoverMaterialNcn116 = source.topCoversAndExtensionsBottomCoverMaterialNcn116;
        dest.topCoversAndExtensionsBottomCoverMaterialEva116 = source.topCoversAndExtensionsBottomCoverMaterialEva116;
        dest.topCoversAndExtensionsBottomCoverMaterialEVA116 = source.topCoversAndExtensionsBottomCoverMaterialEVA116;
        dest.topCoversAndExtensionsBottomCoverMaterialNcn18 = source.topCoversAndExtensionsBottomCoverMaterialNcn18;
        dest.topCoversAndExtensionsBottomCoverMaterialEva18 = source.topCoversAndExtensionsBottomCoverMaterialEva18;
        dest.topCoversAndExtensionsPoronUnderTopcover116 = source.topCoversAndExtensionsPoronUnderTopcover116;
        dest.topCoversAndExtensionsPoronUnderTopcover18 = source.topCoversAndExtensionsPoronUnderTopcover18;
        dest.topCoversAndExtensionsBottomCover116Eva = source.topCoversAndExtensionsBottomCover116Eva;
        dest.topCoversAndExtensionsTopCoverLength = source.topCoversAndExtensionsTopCoverLength;
        

        dest.orderPatient = source.orderPatient;
        dest.orderPractitioner = source.orderPractitioner;
        dest.orderPhotos = source.orderPhotos;
        dest.leftFootObj = source.leftFootObj;
        dest.rightFootObj = source.rightFootObj;
    }

    
    func updateMyDeviceFromOrder(myDeviceIndex: Int) {
        let theDevice = myDevices[myDeviceIndex];
        copyOrderAToB(orderA:order, orderB:theDevice);
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    @IBOutlet var openingPage: UIView!
    @IBOutlet var orderManagement: UIView!
    @IBOutlet var practitionerManagement: UIView!
    @IBOutlet var patientManagement: UIView!
    @IBOutlet var newOrderTypeForm: UIView!
    @IBOutlet var orthoticsForm: UIView!
    @IBOutlet var orthoticsMaterialForm: UIView!
    @IBOutlet var orthoticsCorrectionsForm: UIView!
    @IBOutlet var orthoticsSpecificationsForm: UIView!
    @IBOutlet var orthoticsPostingForm: UIView!
    @IBOutlet var orthoticsTopCoversAndExtensionsForm: UIView!
    @IBOutlet var orthoticsCommentsInstructionsForm: UIView!
    @IBOutlet var orthoticsRushOrderForm: UIView!
    @IBOutlet var orthoticsAccommodationsAndAdditionsForm: UIView!
    @IBOutlet var scanForm: UIView!
    @IBOutlet var reviewAndSubmitForm: UIView!
    @IBOutlet var richieBraceForm: UIView!
    @IBOutlet var areYouSureView: UIView!
    @IBOutlet var menuView: UIView!
    @IBOutlet var backNextView: UIView!
    @IBOutlet var orthoticDeviceForm: UIView!

    @IBOutlet var practitionerFinishedUIImageView: UIImageView!
    @IBOutlet var patientFinishedUIImageView: UIImageView!
    @IBOutlet var prescriptionFinishedUIImageView: UIImageView!
    @IBOutlet var eScanFinishedUIImageView: UIImageView!
    @IBOutlet var submitFinishedUIImageView: UIImageView!
    @IBOutlet var depthView: UIImageView!
    @IBOutlet var polyChartUIImageView: UIImageView!


    
    
    @IBOutlet var newOrderButton: UIButton!
    @IBOutlet var existingOrderButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var defaultPractitionerButton: UIButton!
    @IBOutlet var deletePractitionerButton: UIButton!
    @IBOutlet var savePractitionerButton: UIButton!
    @IBOutlet var orthoticsButton: UIButton!
    @IBOutlet var orthoticskButton: UIButton!
    @IBOutlet var richieBraceButton: UIButton!
    @IBOutlet var okDeletePractitioner: UIButton!
    @IBOutlet var cancelDeletePractitioner: UIButton!
    @IBOutlet var prescriptionButton: UIButton!
    @IBOutlet var escanFormButton: UIButton!
    @IBOutlet var escanLeftFootUIButton: UIButton!
    @IBOutlet var escanRightFootUIButton: UIButton!
    @IBOutlet var submitFormButton: UIButton!
    @IBOutlet var submitEmailButton: UIButton!

    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var newOrderLabel: UILabel!
    @IBOutlet var practitionerLabel: UILabel!
    @IBOutlet var practitionerNameLabel: UILabel!
    @IBOutlet var patientLabel: UILabel!
    @IBOutlet var newPractitionerLabel: UILabel!
    @IBOutlet var patientNameLabel: UILabel!
    @IBOutlet var patientLastNameLabel: UILabel!
    @IBOutlet var materialLabel: UILabel!
    @IBOutlet var materialNameLabel: UILabel!
    @IBOutlet var eScanLabel: UILabel!
    @IBOutlet var eScanNameLabel: UILabel!
    @IBOutlet var submitLabel: UILabel!
    @IBOutlet var newPractitionerSameAsBillingAddressLabel: UILabel!
    @IBOutlet var patientDetailsLabel: UILabel!
    @IBOutlet var patientDetailsNameLabel: UILabel!
    @IBOutlet var patientDetailsAgeLabel: UILabel!
    @IBOutlet var patientDetailsGenderLabel: UILabel!
    @IBOutlet var patientDetailsWeightLabel: UILabel!
    @IBOutlet var patientDetailsHeightLabel: UILabel!
    @IBOutlet var patientDetailsHeightInchesLabel: UILabel!
    @IBOutlet var patientDetailsHeightFeetLabel: UILabel!
    @IBOutlet var patientDetailsShoeSizeLabel: UILabel!
    @IBOutlet var patientDetailsMedicalRecordNumberLabel: UILabel!
    @IBOutlet var orthoticsPrescriptionLabel: UILabel!
    @IBOutlet var orthoticDeviceLabel: UILabel!
    @IBOutlet var orthosisChiefComplaintDiagnosisLabel: UILabel!
    @IBOutlet var orthoticMaterialTypeLabel: UILabel!
    @IBOutlet var areYouSureLabel: UILabel!
    @IBOutlet var areYouSureDeletePractitioner: UILabel!
    @IBOutlet var reorderLabel: UILabel!
    @IBOutlet var orthosisMaterialColorLabel: UILabel!
    @IBOutlet var commentsInstructionsLabel: UILabel!
    @IBOutlet var emailErrorLabel: UILabel!

    
    @IBOutlet var reorderScrollView: UIScrollView!

    
    @IBOutlet var practitionerNameInput: UITextField!
    @IBOutlet var practitionerLastNameInput: UITextField!
    @IBOutlet var practitionerPhoneInput: UITextField!
    @IBOutlet var practitionerEmailInput: UITextField!
    @IBOutlet var patientNameInput: UITextField!
    @IBOutlet var patientLastNameInput: UITextField!
    @IBOutlet var patientAgeInput: UITextField!
    @IBOutlet var patientHeightInput: UITextField!
    @IBOutlet var patientHeightInchesInput: UITextField!
    @IBOutlet var patientWeightInput: UITextField!
    @IBOutlet var patientShoeSizeInput: UITextField!
    @IBOutlet var patientMedicalRecordNumberInput: UITextField!
    @IBOutlet var practitionerBillingAddressFacilityName: UITextField!
    @IBOutlet var practitionerBillingAddress1: UITextField!
    @IBOutlet var practitionerBillingAddress2: UITextField!
    @IBOutlet var practitionerBillingAddressCity: UITextField!
    @IBOutlet var practitionerBillingAddressState: UITextField!
    @IBOutlet var practitionerBillingAddressZip: UITextField!
    @IBOutlet var practitionerBillingAddressCountry: UITextField!
    @IBOutlet var practitionerShippingAddressFacilityName: UITextField!
    @IBOutlet var practitionerShippingAddress1: UITextField!
    @IBOutlet var practitionerShippingAddress2: UITextField!
    @IBOutlet var practitionerShippingAddressCity: UITextField!
    @IBOutlet var practitionerShippingAddressState: UITextField!
    @IBOutlet var practitionerShippingAddressZip: UITextField!
    @IBOutlet var practitionerShippingAddressCountry: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationInvertedLeft: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationInvertedRight: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationEvertedLeft: UITextField!
    @IBOutlet var correctionsAndModificationsCastOrientationEvertedRight: UITextField!
    @IBOutlet var correctionsAndModificationsPlantarFaciaAccomRight: UITextField!
    @IBOutlet var correctionsAndModificationsPlantarFaciaAccomLeft: UITextField!
    @IBOutlet var correctionsAndModificationsStyloidAccomRight: UITextField!
    @IBOutlet var correctionsAndModificationsStyloidAccomLeft: UITextField!
    @IBOutlet var correctionsAndModificationsNavicularAccomRight: UITextField!
    @IBOutlet var correctionsAndModificationsNavicularAccomLeft: UITextField!
    @IBOutlet var correctionsAndModificationsAsMarkedOnCastRight: UITextField!
    @IBOutlet var correctionsAndModificationsAsMarkedOnCastLeft: UITextField!
    @IBOutlet var correctionsAndModificationsAddLatHeelExpansionRight: UITextField!
    @IBOutlet var correctionsAndModificationsAddLatHeelExpansionLeft: UITextField!
    @IBOutlet var correctionsAndModificationsMedialHeelSkiveRight: UITextField!
    @IBOutlet var correctionsAndModificationsMedialHeelSkiveLeft: UITextField!
    @IBOutlet var correctionsAndModificationsIntrinsicMetatarsalPadMmRight: UITextField!
    @IBOutlet var correctionsAndModificationsIntrinsicMetatarsalPadMmLeft: UITextField!
    @IBOutlet var orthosisSpecificationsOtherMedmmLeft: UITextField!
    @IBOutlet var orthosisSpecificationsOtherMedmmRight: UITextField!
    @IBOutlet var orthosisSpecificationsOtherLatmmLeft: UITextField!
    @IBOutlet var orthosisSpecificationsOtherLatmmRight: UITextField!
    @IBOutlet var orthosisChiefComplaintDiagnosisInput: UITextField!
    @IBOutlet var postingHeelLiftLeft: UITextField!
    @IBOutlet var postingHeelLiftRight: UITextField!
    @IBOutlet var postingRearfootPostMotionOtherDegreesLeft: UITextField!
    @IBOutlet var postingRearfootPostMotionOtherDegreesRight: UITextField!
    @IBOutlet var postingRearfootPostingElevatorOthermmLeft: UITextField!
    @IBOutlet var postingRearfootPostingElevatorOthermmRight: UITextField!

    @IBOutlet var escanScene: UIViewController!
    @IBOutlet var richieBraceScene: UIViewController!

    
    @IBOutlet var patientGender: UIPickerView!
    @IBOutlet var orthoticsFunctional: UIPickerView!
    @IBOutlet var practitionerPicker: UIPickerView!
    @IBOutlet var orthoticMaterialPicker: UIPickerView!
    @IBOutlet var orthoticMaterialColorPicker: UIPickerView!
    @IBOutlet var orthoticSpecificationsAnteriorWidthLeftPicker: UIPickerView!
    @IBOutlet var orthoticSpecificationsAnteriorWidthRightPicker: UIPickerView!
    @IBOutlet var orthoticSpecificationsHeelCupHeightLeftPicker: UIPickerView!
    @IBOutlet var orthoticSpecificationsHeelCupHeightRightPicker: UIPickerView!
    @IBOutlet var postingRearfootPostTypePicker: UIPickerView!
    @IBOutlet var patientShoeTypePicker: UIPickerView!
    @IBOutlet var rushOrderExpressShippingPicker: UIPickerView!

    @IBOutlet var correctionsAndModificationsFillWIthPoronLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsFillWIthPoronRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsNavicularFillWIthPoronLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsNavicularFillWIthPoronRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillIncreasedRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillStandardLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillStandardRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillDecreasedRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillMinimalLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsMedialArchFillMinimalRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeftUISwitch: UISwitch!
    @IBOutlet var orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeftUISwitch: UISwitch!
    @IBOutlet var newPractitionerSameAsBillingAddressUiSwitch: UISwitch!
    @IBOutlet var newPractitionerUseEmailForCC: UISwitch!

    @IBOutlet var postingRearfootPostMotion4DegreesMotionLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion4DegreesMotionRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion0DegreesMotionLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostMotion0DegreesMotionRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator4mmRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator4mmLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator8mmRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostingElevator8mmLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsMedialPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsMedialPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLateralPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLateralPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLongPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsLongPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsShortPostFlangeRightUISwitch: UISwitch!
    @IBOutlet var postingRearfootPostOptionsShortPostFlangeLeftUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostFullWidthRightUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostFullWidthLeftUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostMedialCornerRightUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostMedialCornerLeftUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostLateralCornerRightUISwitch: UISwitch!
    @IBOutlet var postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch: UISwitch!
    @IBOutlet var rushOrder2DayTurnaroundUISwitch: UISwitch!
    @IBOutlet var rushOrderNextDayTurnaroundUISwitch: UISwitch!
    @IBOutlet var reorderUISwitch: UISwitch!

    @IBOutlet var commentsTextArea: UITextView!

    @IBOutlet weak var imageTake: UIImageView!


    func orthoticDeviceClickEdit() {
        orthoticDeviceClickEditOrSelect();
        if (richieBraceHasBeenSelected) {
            changePageTo(pageTo: richieBraceFormPageIndex)
        } else {
            changePageTo(pageTo: orthoticsFormPageIndex)
        }

    }
    
    func orthoticDeviceClickSelect() {
        orthoticDeviceClickEditOrSelect();
        changePageTo(pageTo: scanFormPageIndex)
    }
    
    func setDefaultsBlake25Inverted() {
        correctionsAndModificationsCastOrientationInvertedLeft.text = "25";
        correctionsAndModificationsCastOrientationInvertedRight.text = "25";
    }
    
    func setDefaultsBlake35Inverted() {
        correctionsAndModificationsCastOrientationInvertedLeft.text = "35";
        correctionsAndModificationsCastOrientationInvertedRight.text = "35";
    }
    
    func setDefaultsBlake45Inverted() {
        correctionsAndModificationsCastOrientationInvertedLeft.text = "45";
        correctionsAndModificationsCastOrientationInvertedRight.text = "45";
    }
    
    func setDefaults3mmPlantarFasciaAccom() {
        correctionsAndModificationsPlantarFaciaAccomLeft.text = "3"
        correctionsAndModificationsPlantarFaciaAccomRight.text = "3"
    }

    
    func setDefaultsSemiRigidPolypropyleneShell() {
        orthoticMaterialPicker.selectRow(0, inComponent: 0, animated: false)
    }
    
    func setDefaults1_8thInchPolypropyleneShell() {
        orthoticMaterialPicker.selectRow(1, inComponent: 0, animated: false)
    }
    
    func setDefaults2mmHdpeShell() {
        orthoticMaterialPicker.selectRow(1, inComponent: 0, animated: false)
    }
    
    func setDefaultsSemiRigidGraphiteCompositeShell() {
        orthoticMaterialPicker.selectRow(2, inComponent: 0, animated: false)
    }
    
    func setDefaultsRigidGraphiteCompositeShell() {
        orthoticMaterialPicker.selectRow(2, inComponent: 0, animated: false)
    }
    
    func setDefaultsSemiRigidFiberglassCompositeShell() {
        orthoticMaterialPicker.selectRow(0, inComponent: 0, animated: false)
    }
    
    func setDefaultsSemiRigidAcrylicCompositeShell() {
        orthoticMaterialPicker.selectRow(0, inComponent: 0, animated: false)
    }

    func setDefaultsAnteriorWidthStandard() {
        //standard width
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
    }

    func setDefaultsAnteriorWidthNarrow() {
        //standard width
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
    }
    
    func setDefaultsAnteriorWidthExtraWide() {
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
    }
    
    func setDefaultsAnteriorWidthWide() {
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(3, inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(3, inComponent: 0, animated: false)
    }
    
    func setDefaultsAnteriorWidthFull() {
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(5, inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(5, inComponent: 0, animated: false)
    }

    func setDefaultsAccomodativeEVA() {
        orthoticMaterialPicker.selectRow(0, inComponent: 0, animated: false)
    }
    
    func setDefaultsMinimalHeelCup() {
        // what is minimal heel cup?  You can call it 0

        orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(0, inComponent: 0, animated: false)
        orthoticSpecificationsHeelCupHeightRightPicker.selectRow(0, inComponent: 0, animated: false)
    }
    
    func setDefaults10mmHeelCup() {
        orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(1, inComponent: 0, animated: false)
        orthoticSpecificationsHeelCupHeightRightPicker.selectRow(1, inComponent: 0, animated: false)
    }

    func setDefaults12mmHeelCup() {
        orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(2, inComponent: 0, animated: false)
        orthoticSpecificationsHeelCupHeightRightPicker.selectRow(2, inComponent: 0, animated: false)
    }

    func setDefaults14mmHeelCup() {
        orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
        orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
    }
    
    func setDefaults16mmHeelCup() {
        orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(4, inComponent: 0, animated: false)
        orthoticSpecificationsHeelCupHeightRightPicker.selectRow(4, inComponent: 0, animated: false)
    }

    func setDefaults30mmHeelCup() {
        orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(8, inComponent: 0, animated: false)
        orthoticSpecificationsHeelCupHeightRightPicker.selectRow(8, inComponent: 0, animated: false)
    }
    
    func setDefaultsDeepHeelCup() {
        //TODO what is deep?

    }
    
    func setDefaultsIntrinsicForefootCorrection() {
        //            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
        //            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
        
    }

    func setDefaultsLimitedIntrinsicForefootCorrection() {
        setDefaultsIntrinsicForefootCorrection();

    }
    
    func setDefaultsVerticalHeelBisection() {
        //            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
        //            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
    }
    
    func setDefaults44FirmCrepePost() {
        //4/4 firm crepe post
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn = true;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = true;
        postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
        
        //TODO how to say firm?
    }
    
    func setDefaults44MediumCrepePost() {
        //4/4 medium crepe post
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn = true;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = true;
        postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
        
        //TODO how to say medium?

    }

    func setDefaults00FirmCrepePost() {
        postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn = true;
        postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn = true;
        postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)

    }

    func setDefaultsShort44FirmCrepePost() {
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn = true;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = true;
        postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
        postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn = true;
        postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn = true;
    }
    
    func setDefaults44IntegratedPolypropylenePost() {
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn = true;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = true;
//        postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
    }
    
    func setDefaultsNoRearfootPost() {
        postingRearfootPostTypePicker.selectRow(0, inComponent: 0, animated: false)

    }
    
    func setDefaults00BirkocorkPost() {
        postingRearfootPostTypePicker.selectRow(2, inComponent: 0, animated: false)
        postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn = true;
        postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn = true;

    }

    func setDefaults8mmPostElevator() {
        //8mm post elevator
        postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
        postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
    }

    func setDefaults10mmPostElevator() {
        //10mm post elevator
        postingRearfootPostingElevatorOthermmLeft.text = "10";
        postingRearfootPostingElevatorOthermmRight.text = "10";
    }
    
    func setDefaultsStandardMedialArch() {
        correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn = true;
        correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn = true;
    }
    
    func setDefaultsMinimalMedialArch() {
        correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn = true;
        correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn = true;
    }

    func setDefaultsOthosisLengthVinylTopCoverFunctional() {
        //orthosis length vinyl top cover
        topCoversViewController?.topCoversAndExtensionsMaterialVinylBronzeUISwitch.isOn = true; topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
        
    }
    
    func setDefaultsOthosisLengthVinylTopCoverSport() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsMaterialVinylForestUISwitch.isOn = true;
        
    }
    
    func setDefaultsFullLengthVinylTopCoverSport() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsMaterialVinylForestUISwitch.isOn = true;
    }
    
    func setDefaults1_8thInchFullLengthEvaTopCover() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsMaterialEva18UISwitch.isOn = true;
    }
    
    func setDefaultsSulcusLengthVinylTopCoverDress() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(2, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsMaterialVinylBlackUISwitch.isOn = true;
        

    }
    
    func setDefaults1_16thInchFullLengthNcnTopCover() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsMaterialNcn116UISwitch.isOn = true;
        
    }
    
    func setDefaults316FullLengthDiabeticTopCover() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsDiabetic116Plastazone18UISwitch.isOn = true;

    }
    
    func setDefaults1_8thInchFullLengthNcnTopCover() {
        topCoversViewController?.topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsMaterialNcn18UISwitch.isOn = true;
        
    }

    func setDefaults1_8thInchEvaExtensionUnderForefoot() {
        topCoversViewController?.topCoversAndExtensionsForefootExtensionMaterialPicker.selectRow(4, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsForefootExtensionThicknessPicker.selectRow(3, inComponent: 0, animated: false)
 topCoversViewController?.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectRow(3, inComponent: 0, animated: false)
    }
    
    func setDefaults1_16thInchEvaExtensionUnderForefoot() {
        topCoversViewController?.topCoversAndExtensionsForefootExtensionMaterialPicker.selectRow(4, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsForefootExtensionThicknessPicker.selectRow(2, inComponent: 0, animated: false)

        topCoversViewController?.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectRow(3, inComponent: 0, animated: false)
    }
    
    func setDefaults1_16thInchPoronExtensionUnderForefoot() {
        topCoversViewController?.topCoversAndExtensionsForefootExtensionMaterialPicker.selectRow(2, inComponent: 0, animated: false)
        topCoversViewController?.topCoversAndExtensionsForefootExtensionThicknessPicker.selectRow(2, inComponent: 0, animated: false)
        //TODO check to see if should be to Sulcus
        topCoversViewController?.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectRow(0, inComponent: 0, animated: false)
    }
    
    func setEvaBottomFiller() {
        topCoversViewController?.topCoversAndExtensionsEvaArchFillLeftUISwitch.isOn = true;
        topCoversViewController?.topCoversAndExtensionsEvaArchFillRightUISwitch.isOn = true;
    }
    
    func setDefaultsFullEvaBottomFiller() {
        //TODO how?
    }
    
    func setWidthAndHeelCupPerShoeGear() {
        setDefaults12mmHeelCup();
        setDefaultsAnteriorWidthStandard();
        setDefaults8mmPostElevator();
//        Width standard, Heel cup 12, Elevator 8mm
    }
    func setDefaults1_16thInchEvaBottomCover() {
        topCoversViewController?.topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.isOn = true;
    }
    
    func set23mmMed21mmLatHeelCup() {
        orthosisSpecificationsOtherMedmmLeft.text="23";
        orthosisSpecificationsOtherMedmmRight.text="23";
        orthosisSpecificationsOtherLatmmLeft.text="21";
        orthosisSpecificationsOtherLatmmRight.text="21";
    }
    
    func orthoticDeviceClickEditOrSelect() {
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        
        if (theMOI.orthoticsMaterialPickerSelection == Int16(orthoticDeviceSelected)) {
            //No change, do not update things
            return;
        }
        
        // Update the default expanded item
        setExpandCurrentOrder(value: true);
        activeDeviceIsOrthotic = false;
        activeDeviceIsRichie = false;
        
        if (orthoticDeviceSelected >= 24) {
            //This is a my device
            updateOrderFromDevice(myDeviceIndex: orthoticDeviceSelected - 24)
        } else {
            theMOI.orthoticsMaterialPickerSelection = Int16(orthoticDeviceSelected);
        }
        
        theMOI.orthoticsMaterialSelection = Int16(orthoticMateriaPickerMap[Int(theMOI.orthoticsMaterialPickerSelection)]);
        
        
        if (richieBraceHasBeenSelected) {
            
            activeDeviceIsRichie = true;
            
            if (orthoticDeviceSelected == 0) { //Standard
//                Full flexion ankle hinge pivot,
                
                //black shell,
                richieBraceViewController?.afoBlack3mm.isOn = true;
                //35mm heel cup,
                richieBraceViewController?.heelCupHeightPickerView.selectRow(0, inComponent: 0, animated: false);

                //met. length EVA top cover,
                richieBraceViewController?.topCoverLengthPickerView.selectRow(0, inComponent: 0, animated: false);

                //heel stabilizer bar,
                
                //intrinsic forefoot correction.

                
            } else if (orthoticDeviceSelected == 1) { //Restricted Ankle Pivot
//                Limits ankle motion,
                
                //black shell,
                richieBraceViewController?.afoBlack3mm.isOn = true;

                //35mm heel cup,
                richieBraceViewController?.heelCupHeightPickerView.selectRow(0, inComponent: 0, animated: false);

                //met. length EVA top cover,
                richieBraceViewController?.topCoverLengthPickerView.selectRow(0, inComponent: 0, animated: false);

                //heel stabilizer bar,
                
                //intrinsic forefoot correction.

            } else if (orthoticDeviceSelected == 2) { //Dynamic Assist
//                Full flexion ankle hinge pivot with spring (Tamarack) hinges for dorsiflexion assistance ,
                
                //black shell,
                richieBraceViewController?.afoBlack3mm.isOn = true;

                //35mm heel cup,
                richieBraceViewController?.heelCupHeightPickerView.selectRow(0, inComponent: 0, animated: false);

                //sulcus length EVA top cover,
                richieBraceViewController?.topCoverLengthPickerView.selectRow(1, inComponent: 0, animated: false);

                //heel stabilizer bar,
                
                //intrinsic forefoot correction.

            }
        }
        else {
            // Assuming no 'my devices' can be richie braces
            activeDeviceIsOrthotic = true;
        }
        


        
        if (orthoticDeviceSelected >= 24) {
            setOrthosisMaterialFormFromOrder()
            setCorrectionsAndModificationsFromOrder()
            setOrthosisSpecificationFormFromOrder()
            setPostingFormFromOrder()
            setTopCoversAndExtensionsFormFromOrder()
            setRushOrderFormFromOrder()
            setCommentsInstructionsFormFromOrder()
            updateOrthosisScreenFromModel();
            changeValuesBasedOnChangedInput();
            return;
        }

        resetDueToOrthosisTypeChange();

        
        if (orthoticDeviceSelected == 0) { //Polypropylene
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44FirmCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsOthosisLengthVinylTopCoverFunctional();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 1) { //PolyMax
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44IntegratedPolypropylenePost()
            setDefaults8mmPostElevator();
            setDefaultsOthosisLengthVinylTopCoverFunctional();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 2) {//Graphite
            setDefaultsSemiRigidGraphiteCompositeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44FirmCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsOthosisLengthVinylTopCoverFunctional();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 3) {//Fiberglass
            setDefaultsSemiRigidFiberglassCompositeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44FirmCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsOthosisLengthVinylTopCoverFunctional();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 4) { //Acrylic
            setDefaultsSemiRigidAcrylicCompositeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44FirmCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsOthosisLengthVinylTopCoverFunctional();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 5) { //Multi Sport
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults16mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44MediumCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsOthosisLengthVinylTopCoverSport();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 6) { //Multi Sport Plus
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults16mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44MediumCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsFullLengthVinylTopCoverSport();
            setDefaults1_8thInchEvaExtensionUnderForefoot();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 7) { //Soft Sport
            setDefaults1_8thInchPolypropyleneShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults16mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44MediumCrepePost();
            setDefaults8mmPostElevator();
            setDefaults1_8thInchFullLengthEvaTopCover();
            setEvaBottomFiller();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 8) { //Soft Sport Flex
            setDefaults2mmHdpeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults16mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44MediumCrepePost();
            setDefaults8mmPostElevator();
            setDefaults1_8thInchFullLengthEvaTopCover();
            setEvaBottomFiller();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 9) { //SSC™
            setDefaultsRigidGraphiteCompositeShell();
            setWidthAndHeelCupPerShoeGear();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults00FirmCrepePost();
            setDefaults1_16thInchFullLengthNcnTopCover();
            setDefaults1_16thInchEvaExtensionUnderForefoot();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 10) { //Men's Dress
            setDefaultsSemiRigidGraphiteCompositeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults12mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaultsShort44FirmCrepePost();
            setDefaults8mmPostElevator();
            setDefaultsSulcusLengthVinylTopCoverDress();
            setDefaults1_16thInchPoronExtensionUnderForefoot();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 11) { //Women's Casual
            setDefaultsSemiRigidGraphiteCompositeShell();
            setDefaultsAnteriorWidthNarrow();
            setDefaults10mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaultsShort44FirmCrepePost();
            setDefaults10mmPostElevator();
            setDefaultsSulcusLengthVinylTopCoverDress();
            setDefaults1_16thInchPoronExtensionUnderForefoot();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 12) { //Women's High-Heel
            setDefaultsSemiRigidGraphiteCompositeShell();
            setDefaultsAnteriorWidthNarrow();
            setDefaultsMinimalHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaultsNoRearfootPost();
            setDefaultsSulcusLengthVinylTopCoverDress();
            setDefaults1_16thInchPoronExtensionUnderForefoot();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 13) { //Women's Hole-Heel™
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthNarrow();
            setDefaults12mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaultsNoRearfootPost();
            setDefaultsSulcusLengthVinylTopCoverDress();
            setDefaults1_16thInchPoronExtensionUnderForefoot();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 14) { //Cobra
            setDefaults1_8thInchPolypropyleneShell();
            setDefaultsAnteriorWidthNarrow();
            setDefaults12mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaultsNoRearfootPost();
            setDefaultsSulcusLengthVinylTopCoverDress();
            setDefaults1_16thInchPoronExtensionUnderForefoot();
            setDefaultsFullEvaBottomFiller();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 15) { //Blake 25
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthExtraWide();
            setDefaults3mmPlantarFasciaAccom();
            setDefaultsBlake25Inverted();
            
            set23mmMed21mmLatHeelCup();
            setDefaultsLimitedIntrinsicForefootCorrection();
            setDefaultsStandardMedialArch();
            
            setDefaults00BirkocorkPost();
            setDefaults8mmPostElevator();
            
            //no top cover
        } else if (orthoticDeviceSelected == 16) { //Blake 35˚
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthExtraWide();
            setDefaults3mmPlantarFasciaAccom();
            setDefaultsBlake35Inverted();
            
            set23mmMed21mmLatHeelCup();
            setDefaultsLimitedIntrinsicForefootCorrection();
            setDefaultsStandardMedialArch();
            
            setDefaults00BirkocorkPost();
            setDefaults8mmPostElevator();
            //no top cover
        } else if (orthoticDeviceSelected == 17) { //Blake 45˚
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthExtraWide();
            set23mmMed21mmLatHeelCup();
            setDefaults3mmPlantarFasciaAccom();
            setDefaultsBlake45Inverted();
            
            setDefaultsLimitedIntrinsicForefootCorrection();
            setDefaultsStandardMedialArch();
            
            setDefaults00BirkocorkPost();
            setDefaults8mmPostElevator();
            //no top cover
        } else if (orthoticDeviceSelected == 18) { //Modified UCBL
            setDefaultsSemiRigidPolypropyleneShell();
            setDefaultsAnteriorWidthWide();
            setDefaults30mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults00FirmCrepePost();
            setDefaults8mmPostElevator();
            
            //Minimal medial arch for UCBL
            setDefaultsMinimalMedialArch();
            
        } else if (orthoticDeviceSelected == 19) { //Cushion-Flex™
            setDefaults2mmHdpeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults1_8thInchFullLengthNcnTopCover();
            setEvaBottomFiller();
            setDefaultsStandardMedialArch();
            setDefaultsNoRearfootPost();
        } else if (orthoticDeviceSelected == 20) { //Cushion-Flex-Control™
            setDefaults2mmHdpeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44MediumCrepePost();
            setDefaults8mmPostElevator();
            setDefaults1_8thInchFullLengthNcnTopCover();
            setEvaBottomFiller();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 21) { //Diaba-Flex™
            setDefaults2mmHdpeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults316FullLengthDiabeticTopCover();
            setEvaBottomFiller();
            setDefaultsStandardMedialArch();
            setDefaultsNoRearfootPost();
        } else if (orthoticDeviceSelected == 22) { //Diaba-Flex-Control™
            setDefaults2mmHdpeShell();
            setDefaultsAnteriorWidthStandard();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaults44MediumCrepePost();
            setDefaults8mmPostElevator();
            setDefaults316FullLengthDiabeticTopCover();
            setEvaBottomFiller();
            setDefaultsStandardMedialArch();
        } else if (orthoticDeviceSelected == 23) { //Accommodative
            setDefaultsAccomodativeEVA();
            setDefaultsAnteriorWidthFull();
            setDefaults316FullLengthDiabeticTopCover();
            setDefaults14mmHeelCup();
            setDefaultsIntrinsicForefootCorrection();
            setDefaultsVerticalHeelBisection();
            setDefaultsNoRearfootPost();
            setDefaults316FullLengthDiabeticTopCover();
            setDefaults1_16thInchEvaBottomCover();
            setDefaultsStandardMedialArch();

        }
        
        
        readAllForms();
        updateOrthosisScreenFromModel();
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickRootLabLogo(sender: UIButton){
        if let url = URL(string: "http://www.root-lab.com/") {
            UIApplication.shared.openURL(url)
        }
    }
    
    @IBAction func NewOrderAction(sender: UIButton){
        changeValuesBasedOnChangedInput(force: true);
        if (defaultPractitioner != nil) {
            readPractitionerToForm(thePractitioner: defaultPractitioner);
            setValuesBasedOnPractitionerPageValid();
            changePageTo(pageTo: patientManagementPageIndex);
            setValuesBasedOnPatientPageValid();
        } else {
            changePageTo(pageTo: practitionerManagementPageIndex);
        }
    }
    
    @IBAction func ExistingOrderAction(sender: UIButton){
        //changePageTo(pageTo: orderManagementPageIndex);
    }
    @IBAction func ClickBackAction(sender: UIButton){
        if (screenViewing == escanningPageIndex) {
            changePageTo(pageTo: scanFormPageIndex)
        } else if (screenViewing == eViewingMeshPageIndex) {
            nextButton.titleLabel?.text = "Next";
            backButton.titleLabel?.text = "   Back   ";
            eviewMesh.isHidden = true;
            dismissEViewMesh();
            changePageTo(pageTo: scanFormPageIndex)
            changePageTo(pageTo: escanningPageIndex)

        } else if (
            screenViewing == orthoticsSpecificationsFormPageIndex ||
            screenViewing == orthoticsMaterialFormPageIndex ||
            screenViewing == orthoticsCorrectionsFormPageIndex ||
            screenViewing == orthoticsAccommodationsAndAdditionsFormPageIndex ||
            screenViewing == orthoticsRushOrderFormPageIndex ||
            screenViewing == orthoticsTopCoversAndExtensionsFormPageIndex ||
            screenViewing == orthoticsPostingFormPageIndex ||
            screenViewing == orthoticsChiefComplaintFormPageIndex
            ) {
            changePageTo(pageTo: orthoticsFormPageIndex);
            
        } else if (screenViewing == orthoticsFormPageIndex) {
            changePageTo(pageTo: orthoticsDeviceFormPageIndex)
        } else {
            changePageTo(pageTo: (backStack.popLast())!);
        }
    }

    func saveOrder() {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newOrder = Order.init(entity: NSEntityDescription.entity(forEntityName: "Order", in:context)!, insertInto: context);
        newOrder.addToOrderMaterialItemList(MaterialOrderItem.init(entity: NSEntityDescription.entity(forEntityName: "MaterialOrderItem", in:context)!, insertInto: context));

        copyOrderAToB(orderA: order, orderB: newOrder)
        
        do {
            try context.save();
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    func savePractitionerFromPage(setAsDefault: Bool) {
        var thePractitioner :(Practitioner);
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        if (practitionerPicker.selectedRow(inComponent: 0) == 0) {
            if (!isPractitionerPageValid()) {
                return;
            }
            thePractitioner = Practitioner.init(entity: NSEntityDescription.entity(forEntityName: "Practitioner", in:context)!, insertInto: context);
            practitioners.append(thePractitioner);
            
        } else {
            thePractitioner = practitioners[practitionerPicker.selectedRow(inComponent: 0)];
        }
        
        
        fromFormToPractitioner(thePractitioner: thePractitioner);
        
        
        practitionerPicker.reloadAllComponents();

        if (practitionerPicker.selectedRow(inComponent: 0) == 0) {
            practitionerPicker.selectRow(practitioners.count - 1, inComponent: 0, animated: false)
        }
        
        if (setAsDefault) {
            defaultPractitioner = thePractitioner;
            defaults?.defaultPractitioner = Int16(practitionerPicker.selectedRow(inComponent: 0));
        }
        
        appDelegate.saveContext()
        changePageTo(pageTo: patientManagementPageIndex);
        setValuesBasedOnPatientPageValid();
        
        refreshPractitionerNameLabel()
    }
    
    func fromFormToPractitioner(thePractitioner: Practitioner!) {
        
        thePractitioner.firstName = practitionerNameInput.text;
        thePractitioner.lastName = practitionerLastNameInput.text;
        thePractitioner.billingAddress1 = practitionerBillingAddress1.text;
        thePractitioner.billingAddress2 = practitionerBillingAddress2.text;
        thePractitioner.billingAddressCity = practitionerBillingAddressCity.text;
        thePractitioner.billingAddressState = practitionerBillingAddressState.text;
        thePractitioner.billingAddressZip = practitionerBillingAddressZip.text;
        thePractitioner.billingAddressCountry = practitionerBillingAddressCountry.text;
        thePractitioner.billingAddressFacilityName = practitionerBillingAddressFacilityName.text;
        thePractitioner.shippingAddress1 = practitionerShippingAddress1.text;
        thePractitioner.shippingAddress2 = practitionerShippingAddress2.text;
        thePractitioner.shippingAddressCity = practitionerShippingAddressCity.text;
        thePractitioner.shippingAddressState = practitionerShippingAddressState.text;
        thePractitioner.shippingAddressZip = practitionerShippingAddressZip.text;
        thePractitioner.shippingAddressCountry = practitionerShippingAddressCountry.text;
        thePractitioner.shippingAddressFacilityName = practitionerShippingAddressFacilityName.text;
        thePractitioner.phone = practitionerPhoneInput.text;
        thePractitioner.email = practitionerEmailInput.text;
        thePractitioner.useEmailForCC = newPractitionerUseEmailForCC.isOn;
        thePractitioner.useShippingAddressForBillingAddress = newPractitionerSameAsBillingAddressUiSwitch.isOn;
    }
    
    @IBAction func ClickNextAction(sender: UIButton){
        if (screenViewing == practitionerManagementPageIndex) {
            savePractitionerFromPage(setAsDefault: false);
            refreshPractitionerNameLabel();
        } else if (screenViewing == eViewingMeshPageIndex) {
            nextButton.titleLabel?.text = "Next";
            backButton.titleLabel?.text = "   Back   ";

            eviewMesh.isHidden = true;
            dismissEViewMesh();
            if (amScanningLeftFoot) {
//                let image = prepareScreenShotCurrentViewpointForUIImage();
//                if (image == nil) {
//                    escanLeftFootUIButton.setImage(image, for: UIControl.State.normal);
//                } else {
//                }
                escanLeftFootUIButton.setImage(UIImage(named: "ScannedL.png"), for: UIControl.State.normal);

                
                leftFootEscanDone = true;
                changeValuesBasedOnChangedInput();
            } else {
                rightFootEscanDone = true;
                escanRightFootUIButton.setImage(UIImage(named: "ScannedR.png"), for: UIControl.State.normal);

//                let image = prepareScreenShotCurrentViewpointForUIImage();
//                escanRightFootUIButton.setImage(image, for: UIControl.State.normal);

                changeValuesBasedOnChangedInput();
            }

            changePageTo(pageTo: scanFormPageIndex)

        } else if (screenViewing == patientManagementPageIndex) {
            setValuesBasedOnPatientPageValid();
            changePageTo(pageTo: newOrderTypePageIndex);
            readPatientForm();
        } else if (screenViewing == orthoticsFormPageIndex) {
            changePageTo(pageTo: orthoticsDeviceFormPageIndex);
            materialNameLabel.text = "Orthotics";
        } else if (screenViewing == richieBraceFormPageIndex) {
            changePageTo(pageTo: scanFormPageIndex);
            materialNameLabel.text = "Richie Brace";
        } else if (screenViewing == scanFormPageIndex) {
            changePageTo(pageTo: reviewAndSubmitPageIndex);
        } else if (screenViewing == reviewAndSubmitPageIndex) {
            //makePdf2();
            changePageTo(pageTo: openingPageIndex);
            resetEverything();

        } else if (screenViewing == orthoticsMaterialFormPageIndex) {
            changePageTo(pageTo: orthoticsCorrectionsFormPageIndex);
        } else if (screenViewing == orthoticsCorrectionsFormPageIndex) {
            changePageTo(pageTo: orthoticsSpecificationsFormPageIndex);
        } else if (screenViewing == orthoticsSpecificationsFormPageIndex) {
            changePageTo(pageTo: orthoticsPostingFormPageIndex);
        } else if (screenViewing == orthoticsPostingFormPageIndex) {
            changePageTo(pageTo: orthoticsTopCoversAndExtensionsFormPageIndex);
        } else if (screenViewing == orthoticsTopCoversAndExtensionsFormPageIndex) {
            changePageTo(pageTo: orthoticsChiefComplaintFormPageIndex);
        } else if (screenViewing == orthoticsChiefComplaintFormPageIndex) {
            changePageTo(pageTo: orthoticsRushOrderFormPageIndex);
        } else if (screenViewing == orthoticsRushOrderFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == orthoticsDeviceFormPageIndex) {
            changePageTo(pageTo: scanFormPageIndex);
        } else if (screenViewing == orthoticsAccommodationsAndAdditionsFormPageIndex) {
            changePageTo(pageTo: orthoticsFormPageIndex);
        } else if (screenViewing == escanningPageIndex) {
            changePageTo(pageTo: scanFormPageIndex);
        }
        
    }

    func readPatientForm() {
        let firstName = patientNameInput.text;
        let lastName = patientLastNameInput.text;
        if (!((firstName?.isEmpty)!) && !((lastName?.isEmpty)!)) {
            let age = patientAgeInput.text;
            let height = patientHeightInput.text;
            let heightInches = patientHeightInput.text;
            let weight = patientWeightInput.text;
            if (order.orderPatient == nil) {
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                let context = appDelegate.persistentContainer.viewContext
                
                let newPatient = Patient.init(entity: NSEntityDescription.entity(forEntityName: "Patient", in:context)!, insertInto: context);
                newPatient.firstName = firstName;
                newPatient.lastName = lastName;
                newPatient.gender = patientGender.selectedRow(inComponent: 0) == 0 ? "" : patientGender.selectedRow(inComponent: 0) == 1 ? "M" : "F";
                newPatient.age = Int16(age!) ?? 0;
                newPatient.height = Int16(height!) ?? 0;
                newPatient.heightInches = Int16(heightInches!) ?? 0;
                newPatient.weight = Int16(weight!) ?? 0;
                newPatient.shoeSize = Int16(patientShoeSizeInput!.text!) ?? 0;
                newPatient.medicalRecordNumber = patientMedicalRecordNumberInput!.text ?? "";
                //TODO replace
                //                    newPatient.shoeType = patientShoeTypeInput.text;
                
                order.orderPatient = newPatient
                do {
                    try context.save();
                    patients.append(newPatient);
                    appDelegate.saveContext();
                } catch let error as NSError {
                    //TODO Cannot save, fail startup
                    print("Could not save. \(error), \(error.userInfo)")
                }
            }
            order.orderPatient?.firstName = firstName;
            order.orderPatient?.lastName = lastName;
            order.orderPatient?.age = Int16(age!) ?? 0;
            order.orderPatient?.height = Int16(height!) ?? 0;
            order.orderPatient?.heightInches = Int16(heightInches!) ?? 0;
            order.orderPatient?.weight = Int16(weight!) ?? 0;
            order.orderPatient?.shoeSize = Int16(patientShoeSizeInput!.text!) ?? 0;
            order.orderPatient?.medicalRecordNumber = patientMedicalRecordNumberInput!.text ?? "";
            order.orderPatient?.shoeType = patientShoeTypeLabels[patientShoeTypePicker.selectedRow(inComponent: 0)];

        }
    }
    
    func setExpandCurrentOrder(value : Bool) {
        expandCurrentOrder = value;
    }
    
    func shouldExpandCurrentOrder() -> Bool {
        return expandCurrentOrder;
    }
    
    func resetEverything() {
        clearPractitionerForm();
        clearPatientForm();
        clearScanForm();
        clearOrthoticDeviceForm();
        clearRichieBraceForm();

        clearCorrectionsAndModificationsForm();
        
        // Reset default selection in orthotic device page
        setExpandCurrentOrder(value: false);
        activeDeviceIsOrthotic = false;
        activeDeviceIsRichie = false;
        
        resetDueToOrthosisTypeChange();
        
        
        practitionerFinishedUIImageView.image = UIImage(named: "unchecked.png");
        patientFinishedUIImageView.image = UIImage(named: "unchecked.png");
        prescriptionFinishedUIImageView.image = UIImage(named: "unchecked.png");
        eScanFinishedUIImageView.image = UIImage(named: "unchecked.png");
        submitFinishedUIImageView.image = UIImage(named: "unchecked.png");
        
        readPatientForm();
        
        emailErrorLabel.text = "";
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newOrder = Order.init(entity: NSEntityDescription.entity(forEntityName: "Order", in:context)!, insertInto: context);
        newOrder.createDateTime = Date();
        order = newOrder;
        order.addToOrderMaterialItemList(MaterialOrderItem.init(entity: NSEntityDescription.entity(forEntityName: "MaterialOrderItem", in:context)!, insertInto: context));
        
        do {
            try context.save();
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    @IBAction func ClickDeletePractitioner(sender: UIButton){
        areYouSureView.isHidden = false;
    }

    @IBAction func ClickSavePractitioner(sender: UIButton){
        savePractitionerFromPage(setAsDefault: false);
    }
    
    @IBAction func ClickDefaultPractitioner(sender: UIButton){
        savePractitionerFromPage(setAsDefault: true);
    }

    @IBAction func ClickOrthoticsForm(sender: UIButton){
        readAllForms();
        updateOrthosisScreenFromModel();

        orthoticsHasBeenSelected = true;
        richieBraceHasBeenSelected = false;

        changePageTo(pageTo: orthoticsDeviceFormPageIndex);
        
        materialNameLabel.text = "> Orthotics";
        orthoticDeviceLabel.text = "Orthotic Device"
    }

    @IBAction func ClickRichieBraceForm(sender: UIButton){
        materialNameLabel.text = "> Richie Brace";
        orthoticDeviceLabel.text = "Richie Brace"
        richieBraceHasBeenSelected = true;
        orthoticsHasBeenSelected = false;
        changePageTo(pageTo: orthoticsDeviceFormPageIndex)
    }
    
    func ClickOrthosisMaterial(){
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        orthoticMaterialTypeLabel.text = orthosisMaterialTypeLabels[Int(theMOI.orthoticsMaterialSelection)];
        orthoticMaterialColorPicker.isHidden = (Int(theMOI.orthoticsMaterialSelection) != 0)
        orthosisMaterialColorLabel.isHidden = (Int(theMOI.orthoticsMaterialSelection) != 0)
        polyChartUIImageView.isHidden = (Int(theMOI.orthoticsMaterialSelection) != 0);

        orthoticMaterialPicker.reloadAllComponents();
        changePageTo(pageTo: orthoticsMaterialFormPageIndex)
    }
    
    func ClickOrthosisCorrectionsAndModifications(){
        changePageTo(pageTo: orthoticsCorrectionsFormPageIndex)
    }
    
    func ClickOrthosisSpecifications(){
        changePageTo(pageTo: orthoticsSpecificationsFormPageIndex)
    }
    
    func setEnabledPostingForm(enabled: Bool) {
        postingRearfootPostingElevator4mmLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostingElevator8mmLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostingElevator4mmRightUISwitch.isEnabled =
        enabled;
        postingRearfootPostingElevator8mmRightUISwitch.isEnabled =
        enabled;
        
        
        postingRearfootPostMotion0DegreesMotionLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostMotion0DegreesMotionRightUISwitch.isEnabled =
        enabled;
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isEnabled =
        enabled;
        
        postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsLongPostFlangeRightUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsShortPostFlangeRightUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsLateralPostFlangeLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsLateralPostFlangeRightUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsMedialPostFlangeLeftUISwitch.isEnabled =
        enabled;
        postingRearfootPostOptionsMedialPostFlangeRightUISwitch.isEnabled =
        enabled;
        
        postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isEnabled =
        enabled;
        postingNonCorrectiveForefootPostFullWidthRightUISwitch.isEnabled =
        enabled;
        postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isEnabled =
        enabled;
        postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isEnabled =
        enabled;
        postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isEnabled =
        enabled;
        postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isEnabled =
        enabled;
    }
    
    func ClickOrthosisPosting(){
        setEnabledPostingForm(enabled: postingRearfootPostTypePicker.selectedRow(inComponent: 0) != 0)
        changePageTo(pageTo: orthoticsPostingFormPageIndex)
    }
    
    @IBAction func ClickOrthosisTopCoversAndExtensions(sender: UIButton){
        changePageTo(pageTo: orthoticsTopCoversAndExtensionsFormPageIndex)
    }
    
    func ClickOrthosisTopCoversAndExtensions(){
        changePageTo(pageTo: orthoticsTopCoversAndExtensionsFormPageIndex)
    }
    
    func ClickOrthosisRushOrder(){
        changePageTo(pageTo: orthoticsRushOrderFormPageIndex)
    }
    
    func ClickOrthosisCommentsInstructions(){
        changePageTo(pageTo: orthoticsChiefComplaintFormPageIndex)
    }
    
    func ClickOrthosisAccommodationsAndAdditions(){
        changePageTo(pageTo: orthoticsAccommodationsAndAdditionsFormPageIndex)
    }
    
    @IBAction func ClickNewOrderButton(sender: UIButton){
        //resetValuesForNewOrder();
        //changeValuesBasedOnChangedInput(force: true);
        //changePageTo(pageTo: orderManagementPageIndex)
    }
    
    @IBAction func ClickPractitionerManagementButton(sender: UIButton){
        changePageTo(pageTo: practitionerManagementPageIndex)
    }
    
    @IBAction func ClickPatientManagementButton(sender: UIButton){
        changePageTo(pageTo: patientManagementPageIndex)
        setValuesBasedOnPatientPageValid();
    }
    
    @IBAction func ClickSubmitButton(sender: UIButton){
        changePageTo(pageTo: reviewAndSubmitPageIndex)
    }
    
    @IBAction func ClickEscanButton(sender: UIButton){
        changePageTo(pageTo: scanFormPageIndex)
    }
    
    @IBAction func ClickOrderManagementButton(sender: UIButton){
        changePageTo(pageTo: newOrderTypePageIndex)
    }

    @IBAction func ClickOkDeletePractitioner(sender: UIButton){
        areYouSureView.isHidden = true;
        let selectedRow = practitionerPicker.selectedRow(inComponent: 0);
        if (selectedRow > 0) {
            let thePractitionerToDelete = practitioners[selectedRow];
            practitioners.remove(at: practitionerPicker.selectedRow(inComponent: 0));
            practitionerPicker.reloadAllComponents();
            practitionerPicker.selectRow(0, inComponent: 0, animated: true);
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            do {
                context.delete(thePractitionerToDelete);
                try context.save();
                appDelegate.saveContext();
            } catch let error as NSError {
                //TODO Cannot save, fail startup
                print("Could not save. \(error), \(error.userInfo)")
            }
            clearPractitionerForm();
            setValuesBasedOnPractitionerPageValid();
            changeValuesBasedOnChangedInput();
        }
    }

    @IBAction func ClickCancelDeletePractitioner(sender: UIButton){
        areYouSureView.isHidden = true;
    }

    @IBAction func ClickCorrectionsAndModificationsCastOrientationVerticalLeft(sender: UIButton){
//        if (correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn) {
//            correctionsAndModificationsCastOrientationInvertedLeft.text = "";
//            correctionsAndModificationsCastOrientationEvertedLeft.text = "";
//        }
    }
    
    @IBAction func ClickCorrectionsAndModificationsCastOrientationVerticalRight(sender: UIButton){
//        if (correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn) {
//            correctionsAndModificationsCastOrientationInvertedRight.text = "";
//            correctionsAndModificationsCastOrientationEvertedRight.text = "";
//        }
    }

    @IBAction func clickRushOrderNextDayTurnaround(sender: UIButton){
        if (rushOrderNextDayTurnaroundUISwitch.isOn) {
            rushOrder2DayTurnaroundUISwitch.isOn = false;
        }
        
        changeValuesBasedOnChangedInput();
    }

    @IBAction func clickRushOrder2DayTurnaround(sender: UIButton){
        if (rushOrder2DayTurnaroundUISwitch.isOn) {
            rushOrderNextDayTurnaroundUISwitch.isOn = false;
        }
        
        changeValuesBasedOnChangedInput();
    }

    @IBAction func ClickEditPractitioner(sender: UIButton){
        
    }


    func escanViewDidLoad() {
        
        calibrationOverlay.alpha = 0
        calibrationOverlay.isHidden = true
        calibrationOverlay.isUserInteractionEnabled = false
        
        instructionOverlay.alpha = 0
        instructionOverlay.isHidden = true
        instructionOverlay.isUserInteractionEnabled = false
        
        // Do any additional setup after loading the view.
        _slamState.initialized = false
        _enhancedColorizeTask = nil
        _naiveColorizeTask = nil
        
        setupGL()
        
        setupUserInterface()
        
        setupStructureSensor()
        
        setupIMU()
        
        // Later, we’ll set this true if we have a device-specific calibration
        _useColorCamera = STSensorController.approximateCalibrationGuaranteedForDevice()
        
        // Make sure we get notified when the app becomes active to start/restore the sensor state if necessary.
        NotificationCenter.default.addObserver(forName: UIApplication.didBecomeActiveNotification, object: nil, queue: nil) { _ in self.appDidBecomeActive()}
        
        initializeDynamicOptions()
        syncUIfromDynamicOptions()
    }
    
    func changePageTo(pageTo: Int?) {
        clearAllCarrotsFromLables();
        if (screenViewing == escanningPageIndex) {
            depthView.isHidden = true;
            eview.isHidden = true;
        } else if (screenViewing == eViewingMeshPageIndex) {
        } else {
            pages[screenViewing].isHidden = true;
            backStack.append(screenViewing);
        }
        if (pageTo == orthoticsDeviceFormPageIndex) {
            orthoticsDeviceViewController?.refreshMyDevices();
        }
        
        screenViewing = pageTo!
        if (pageTo == practitionerManagementPageIndex) {
            setValuesBasedOnPractitionerPageValid();
        }

        if (pageTo == escanningPageIndex) {
            escanViewDidLoad()
            let _ = connectToStructureSensorAndStartStreaming()

            eview.isHidden = false;
            depthView.isHidden = true;
            nextButton.isHidden = true;

//            if tryInitializeSensor() && STSensorController.shared().isConnected() {
//                tryStartStreaming()
//            }
            _slamState.scannerState = .cubePlacement
            eaglviewDidAppear();

        } else {
            pages[screenViewing].isHidden = false;
            nextButton.isHidden =
                screenViewing == newOrderTypePageIndex ||
            pageTo == reviewAndSubmitPageIndex;
        }

        menuView.isHidden = screenViewing == 0 || screenViewing == escanningPageIndex
            || screenViewing == eViewingMeshPageIndex;
        backNextView.isHidden = screenViewing == 0;
        
        setCarrot();
    }

    func setValuesBasedOnPractitionerPageValid() {
        let isValid = isPractitionerPageValid();
        
        nextButton.isEnabled = isValid;
        defaultPractitionerButton.isEnabled = isValid;
        savePractitionerButton.isEnabled = isValid;
        deletePractitionerButton.isEnabled = practitionerPicker.selectedRow(inComponent: 0) != 0;
        
        practitionerFinishedUIImageView.image = isValid ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");

    }

    func isPractitionerPageValid() -> Bool {
        return
            isNotEmptyAndIsNot(thisString: "*First Name", stringToTest: practitionerNameInput.text!) &&
            isNotEmptyAndIsNot(thisString: "*Last Name", stringToTest: practitionerLastNameInput.text!) &&
            isNotEmptyAndIsNot(thisString: "*Phone", stringToTest: practitionerPhoneInput.text!) &&
            isNotEmptyAndIsNot(thisString: "*Address 1", stringToTest: practitionerShippingAddress1.text!) &&
            isNotEmptyAndIsNot(thisString: "*City", stringToTest: practitionerShippingAddressCity.text!) &&
            isNotEmptyAndIsNot(thisString: "*State", stringToTest: practitionerShippingAddressState.text!) &&
            isNotEmptyAndIsNot(thisString: "*Zip", stringToTest: practitionerShippingAddressZip.text!) &&
            isNotEmptyAndIsNot(thisString: "*Address 1", stringToTest: practitionerBillingAddress1.text!) &&
            isNotEmptyAndIsNot(thisString: "*City", stringToTest: practitionerBillingAddressCity.text!) &&
            isNotEmptyAndIsNot(thisString: "*State", stringToTest: practitionerBillingAddressState.text!) &&
            isNotEmptyAndIsNot(thisString: "*Zip", stringToTest: practitionerBillingAddressZip.text!) &&

            isNotEmptyAndIsNot(thisString: "*Email", stringToTest: practitionerEmailInput.text!)

        
    }

    func isNotEmptyAndIsNot(thisString: String, stringToTest: String)-> Bool {
        return !stringToTest.isEmpty && stringToTest != thisString;
    }
    
    func setValuesBasedOnPatientPageValid() {
        let isValid = isPatientPageValid();
        nextButton.isEnabled = isValid;
        prescriptionButton.isEnabled = isValid;
        escanFormButton.isEnabled = isValid;
        submitFormButton.isEnabled = isValid;
        patientFinishedUIImageView.image = isValid ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");

        materialLabel.textColor = isValid ? .white : .darkGray;
        materialNameLabel.textColor = isValid ? .white : .darkGray;
        eScanLabel.textColor = isValid ? .white : .darkGray;
        eScanNameLabel.textColor = isValid ? .white : .darkGray;
        submitLabel.textColor = isValid ? .white : .darkGray;
        
        patientNameLabel.text = patientNameInput.text! + " " + patientLastNameInput.text!;
    }
    
    func isPatientPageValid() -> Bool {
        return !(patientNameInput.text?.isEmpty ?? false) &&
            !(patientLastNameInput.text?.isEmpty ?? false);
    }

    func eaglviewDidAppear() {
        // The framebuffer will only be really ready with its final size after the view appears.
        self.eview.setFramebuffer()
        
        setupGLViewport()
        
        updateAppStatusMessage()
        
        let defaults = UserDefaults.standard
        
//        if !defaults.bool(forKey: "instructionOverlay") {
//
//            let _ = Timer.schedule(10.0, handler: {_ in
//                self.instructionOverlay.isHidden = false
//                self.instructionOverlay.isUserInteractionEnabled = true
//                self.instructionOverlay.alpha = 1
//                let _ = Timer.schedule(15.0, handler: { _ in
//                    UIView.animate(withDuration: 0.3, animations: {
//
//                        self.instructionOverlay.alpha = 0
//                        self.instructionOverlay.isHidden = true
//                        self.instructionOverlay.isUserInteractionEnabled = false
//                    })
//                })
//            })
//        }
    }

    
    
    func setCarrot() {
        if (screenViewing == 2) {
            practitionerLabel.text = "> Practitioner";
        } else if (screenViewing == 3) {
            practitionerNameLabel.text = "> New";
        } else if (screenViewing == 4) {
            patientLabel.text = "> Patient";
        } else if (screenViewing == 5) {
            materialLabel.text = "> Prescription";
        } else if (screenViewing == 8) {
            eScanLabel.text = "> eScan";
        } else if (screenViewing == 9) {
            submitLabel.text = "> Submit";
        }
    }

    
    func clearAllCarrotsFromLables() {
        newOrderLabel.text = "New Order";
        practitionerLabel.text = "Practitioner";
        patientLabel.text = "Patient";
        materialLabel.text = "Prescription";
        eScanLabel.text = "Scan";
        submitLabel.text = "Submit";

    }

    func orthosisFormValid() -> Bool{
        return
            orthosisSomethingHasBeenSelected() &&
                (
            richieBraceHasBeenSelected ||
            (
        orthosisMaterialValid() &&
        correctionsAndModificationsValid() &&
        orthosisSpecificationsValid() &&
        postingValid() &&
        topCoversViewController?.topCoversAndExtensionsValid() ?? false &&
        accommodationsValid() &&
        rushOrderValid() &&
            chiefComplaintDiagnosisValid()
        ));
    }

    func orthosisSomethingHasBeenSelected() -> Bool {
        return orthoticDeviceSelected > -1;
    }
    
    func orthosisMaterialValid() -> Bool {
        let isWeightSupplied = Int((order.orderPatient?.weight) ?? 0) > 0;
        
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        let isEVAOnlyAllowedOrthosisMaterial = theMOI.orthoticsMaterialSelection == orthosisMaterialEVAIndex;

        return isWeightSupplied || orthoticMaterialPicker.selectedRow(inComponent: 0) > 0 || isEVAOnlyAllowedOrthosisMaterial;
    }
    func correctionsAndModificationsValid() -> Bool{
        return true;
    }
    func orthosisSpecificationsValid() -> Bool{
        return true;
    }
    func postingValid() -> Bool{
        return true;
    }

    func accommodationsValid() -> Bool{
        return true;
    }
    func rushOrderValid() -> Bool{
        return true;
    }
    func chiefComplaintDiagnosisValid() -> Bool{
        return true;
    }
    func escanFormValid()  -> Bool{
        return (leftFootEscanDone && rightFootEscanDone) || reorderUISwitch.isOn;
    }
    func everythingValid() -> Bool {
        return escanFormValid() && isPractitionerPageValid() &&
            isPatientPageValid() && orthosisFormValid();
    }
    
    func readPostingForm() {
        order.postingRearfootPostMaterial = Int16(postingRearfootPostTypePicker.selectedRow(inComponent: 0));
        
        order.postingHeelLiftLeft = Int16(postingHeelLiftLeft.text!) ?? Int16(0);
        order.postingHeelLiftRight = Int16(postingHeelLiftRight.text!) ?? Int16(0);
        order.postingRearfootPostMotionOtherMotionDegreesLeft = Int16(postingRearfootPostMotionOtherDegreesLeft.text!) ?? 0;
        order.postingRearfootPostMotionOtherMotionDegreesRight = Int16(postingRearfootPostMotionOtherDegreesRight.text!) ?? 0;
        order.postingRearfootPostingElevatorOtherMmLeft = Int16(postingRearfootPostingElevatorOthermmLeft.text!) ?? 0;
        order.postingRearfootPostingElevatorOtherMmRight = Int16(postingRearfootPostingElevatorOthermmRight.text!) ?? 0;

        order.postingRearfootPostingElevator4mmLeft = postingRearfootPostingElevator4mmLeftUISwitch.isOn;
        order.postingRearfootPostingElevator8mmLeft = postingRearfootPostingElevator8mmLeftUISwitch.isOn;
        order.postingRearfootPostingElevator4mmRight = postingRearfootPostingElevator4mmRightUISwitch.isOn;
        order.postingRearfootPostingElevator8mmRight =
            postingRearfootPostingElevator8mmRightUISwitch.isOn;
        
        order.postingRearfootPostMotion0DegreesMotionLeft =
              postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn;
        order.postingRearfootPostMotion0DegreesMotionRight =
            postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn;
        order.postingRearfootPostMotion4DegreesMotionLeft =
            postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn;
        order.postingRearfootPostMotion4DegreesMotionRight =
            postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn;
        
        order.postingRearfootPostOptionsLongPostFlangeLeft =
            postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsLongPostFlangeRight =
            postingRearfootPostOptionsLongPostFlangeRightUISwitch.isOn;
        order.postingRearfootPostOptionsShortPostFlangeLeft =
            postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsShortPostFlangeRight =
            postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn;
        order.postingRearfootPostOptionsLateralPostFlangeLeft =
            postingRearfootPostOptionsLateralPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsLateralPostFlangeRight =
            postingRearfootPostOptionsLateralPostFlangeRightUISwitch.isOn;
        order.postingRearfootPostOptionsMedialPostFlangeLeft =
            postingRearfootPostOptionsMedialPostFlangeLeftUISwitch.isOn;
        order.postingRearfootPostOptionsMedialPostFlangeRight =
            postingRearfootPostOptionsMedialPostFlangeRightUISwitch.isOn;

        order.postingNonCorrectiveForefootPostFullWidthLeft =
            postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn;
        order.postingNonCorrectiveForefootPostFullWidthRight =
            postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn;
        order.postingNonCorrectiveForefootPostMedialCornerLeft =
            postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn;
        order.postingNonCorrectiveForefootPostMedialCornerRight =
            postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn;
        order.postingNonCorrectiveForefootPostLateralCornerRight =
            postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn;
        order.postingNonCorrectiveForefootPostLateralCornerWidthLeft =
            postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn;


    }
    
    func setPostingFormFromOrder() {
        postingRearfootPostingElevator4mmLeftUISwitch.isOn =
            order.postingRearfootPostingElevator4mmLeft;
        postingRearfootPostingElevator8mmLeftUISwitch.isOn =
            order.postingRearfootPostingElevator8mmLeft;
        postingRearfootPostingElevator8mmRightUISwitch.isOn =
            order.postingRearfootPostingElevator4mmRight;
        postingRearfootPostingElevator8mmRightUISwitch.isOn =
            order.postingRearfootPostingElevator8mmRight;

        
        postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn =
            order.postingRearfootPostMotion0DegreesMotionLeft;
        postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn =
            order.postingRearfootPostMotion0DegreesMotionRight;
        postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn =
            order.postingRearfootPostMotion4DegreesMotionLeft;
        postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn =
            order.postingRearfootPostMotion4DegreesMotionRight;
    
        postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsLongPostFlangeLeft;
        postingRearfootPostOptionsLongPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsLongPostFlangeRight;
        postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsShortPostFlangeLeft;
        postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsShortPostFlangeRight;
        postingRearfootPostOptionsLateralPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsLateralPostFlangeLeft;
        postingRearfootPostOptionsLateralPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsLateralPostFlangeRight;
        postingRearfootPostOptionsMedialPostFlangeLeftUISwitch.isOn =
            order.postingRearfootPostOptionsMedialPostFlangeLeft;
        postingRearfootPostOptionsMedialPostFlangeRightUISwitch.isOn =
            order.postingRearfootPostOptionsMedialPostFlangeRight;
    
        postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn =
            order.postingNonCorrectiveForefootPostFullWidthLeft;
        postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn =
            order.postingNonCorrectiveForefootPostFullWidthRight;
        postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn =
            order.postingNonCorrectiveForefootPostMedialCornerLeft;
        postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn =
            order.postingNonCorrectiveForefootPostMedialCornerRight;
        postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn =
            order.postingNonCorrectiveForefootPostLateralCornerRight;
        postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn =
            order.postingNonCorrectiveForefootPostLateralCornerWidthLeft;
        
        if (order.postingHeelLiftLeft > 0) {
            postingHeelLiftLeft.text =  String(order.postingHeelLiftLeft);
        } else {
            postingHeelLiftLeft.text = nil;
        }
        if (order.postingHeelLiftRight > 0) {
            postingHeelLiftRight.text =  String(order.postingHeelLiftRight);
        } else {
            postingHeelLiftRight.text = nil;
        }

        postingRearfootPostingElevatorOthermmLeft.text = order.postingRearfootPostingElevatormmLeft;
        postingRearfootPostingElevatorOthermmRight.text = order.postingRearfootPostingElevatormmRight;

        if (order.postingRearfootPostMotionOtherMotionDegreesLeft > 0) {
            postingRearfootPostMotionOtherDegreesLeft.text =  String(order.postingRearfootPostMotionOtherMotionDegreesLeft);
        } else {
            postingRearfootPostMotionOtherDegreesLeft.text = nil;
        }
        if (order.postingRearfootPostMotionOtherMotionDegreesRight > 0) {
            postingRearfootPostMotionOtherDegreesRight.text =  String(order.postingRearfootPostMotionOtherMotionDegreesRight);
        } else {
            postingRearfootPostMotionOtherDegreesRight.text = nil;
        }
        
    }
    
    func readTopCoversAndExtensionsForm() {
        if (topCoversViewController == nil) {
            return;
        }
        
        order.topCoversAndExtensionsTopCoverLength = Int16(topCoversViewController!.topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0));

        order.topCoversAndExtensionsForefootExtensionsMaterial = Int16(topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0));
        
        order.topCoversAndExtensionsForefootExtensionsThickness = Int16(topCoversViewController!.topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0));
        
        order.topCoversAndExtensionsForefootExtensionsExtensionLength = Int16(topCoversViewController!.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0));
        
        order.topCoversAndExtensionsBottomCoverMaterialVinylBlack = topCoversViewController!.topCoversAndExtensionsMaterialVinylBlackUISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialVinylBronze = topCoversViewController!.topCoversAndExtensionsMaterialVinylBronzeUISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialVinylForest = topCoversViewController!.topCoversAndExtensionsMaterialVinylForestUISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialLeatherBlack = topCoversViewController!.topCoversAndExtensionsMaterialLeatherBlackUISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialLeatherBrown = topCoversViewController!.topCoversAndExtensionsMaterialLeatherBrownUISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialEVA116 = topCoversViewController!.topCoversAndExtensionsMaterialEva116UISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialEva116 = topCoversViewController!.topCoversAndExtensionsMaterialEva116UISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialEva18 = topCoversViewController!.topCoversAndExtensionsMaterialEva18UISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialNcn116 = topCoversViewController!.topCoversAndExtensionsMaterialNcn116UISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialNcn18 = topCoversViewController!.topCoversAndExtensionsMaterialNcn18UISwitch.isOn;
        order.topCoversAndExtensionsBottomCoverMaterialDiabetic = topCoversViewController!.topCoversAndExtensionsDiabetic116Plastazone18UISwitch.isOn;

        
        
//        let theView = self.pickerView(topCoversViewController!.topCoversAndExtensionsTopCoverLengthPicker, viewForRow: topCoversViewController!.topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
//        order.topCoversAndExtensionsTopCoverLength = (theView as! UILabel).text;
        
        
//        let theView2 = self.pickerView(topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPicker, viewForRow: topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
//        order.topCoversAndExtensionsForefootExtensionsMaterial = (theView2 as! UILabel).text;

//        let theView3 = self.pickerView(topCoversViewController!.topCoversAndExtensionsForefootExtensionThicknessPicker, viewForRow: topCoversViewController!.topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
//        order.topCoversAndExtensionsForefootExtensionsThickness = (theView3 as! UILabel).text;

//        let theView4 = self.pickerView(topCoversViewController!.topCoversAndExtensionsForefootExtensionExtensionLengthPicker, viewForRow: topCoversViewController!.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
//        order.topCoversAndExtensionsForefootExtensionsExtensionLength = (theView4 as! UILabel).text;

        order.topCoversAndExtensionsBottomCoverMaterialEVA116 = topCoversViewController!.topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.isOn;

        order.topCoversAndExtensionsBottomCoverForefootReinforcement = topCoversViewController!.topCoversAndExtensionsBottomCoverForefootReinforcementUISwitch.isOn;
        
        
        order.topCoversAndExtensionsPoronUnderTopcover18 = topCoversViewController!.topCoversAndExtensionsPoronUnderTopcover18.isOn;
        order.topCoversAndExtensionsPoronUnderTopcover116 = topCoversViewController!.topCoversAndExtensionsPoronUnderTopcover116.isOn;
        
        order.accommodationsMortonsExtensionLeft = topCoversViewController!.topCoversAndExtensionsMortonsExtensionLeftUISwitch.isOn;
        order.accommodationsMortonsExtensionRight = topCoversViewController!.topCoversAndExtensionsMortonsExtensionRightUISwitch.isOn;

        order.accommodationsReverseMortonsExtensionLeft = topCoversViewController!.topCoversAndExtensionsReverseMortonsExtensionLeftUISwitch.isOn;
        order.accommodationsReverseMortonsExtensionRight = topCoversViewController!.topCoversAndExtensionsReverseMortonsExtensionRightUISwitch.isOn;
        
        order.accommodationsMetatarsalPadLeft = topCoversViewController!.topCoversAndExtensionsMetatarsalPadLeftUISwitch.isOn;
        order.accommodationsMetatarsalPadRight = topCoversViewController!.topCoversAndExtensionsMetatarsalPadRightUISwitch.isOn;
        
        order.accommodationsMetatarsalBarLeft = topCoversViewController!.topCoversAndExtensionsMetatarsalBarLeftUISwitch.isOn;
        order.accommodationsMetatarsalBarRight = topCoversViewController!.topCoversAndExtensionsMetatarsalBarRightUISwitch.isOn;
        
        order.accommodationsHeelPadLEft = topCoversViewController!.topCoversAndExtensionsHeelPadLeftUISwitch.isOn;
        order.accommodationsHeelPadRight = topCoversViewController!.topCoversAndExtensionsHeelPadRightUISwitch.isOn;
        
        order.accommodationsHorseshoePadLeft = topCoversViewController!.topCoversAndExtensionsHorseshoePadLeftUISwitch.isOn;
        order.accommodationsHorseshoePadRight = topCoversViewController!.topCoversAndExtensionsHorseshoePadRightUISwitch.isOn;
        
        order.accommodationsDancersPadLeft = topCoversViewController!.topCoversAndExtensionsDancersPadLeftUISwitch.isOn;
        order.accommodationsDancersPadRight = topCoversViewController!.topCoversAndExtensionsDancersPadRightUISwitch.isOn;
        
        order.accommodationsKineticWedgeLeft = topCoversViewController!.topCoversAndExtensionsKineticWedgeLeftUISwitch.isOn;
        order.accommodationsKineticWedgeRight = topCoversViewController!.topCoversAndExtensionsKineticWedgeRightUISwitch.isOn;

        order.accommodationsEva = topCoversViewController!.topCoversAndExtensionsEVAUISwitch.isOn;
        order.accommodationsKorex = topCoversViewController!.topCoversAndExtensionsKorexUISwitch.isOn;
        
        order.accommodationsMedialArchReinforceLeft = topCoversViewController!.topCoversAndExtensionsMedialArchReinforceLeftUISwitch.isOn;
        order.accommodationsMedialArchReinforceRight = topCoversViewController!.topCoversAndExtensionsMedialArchReinformceRightUISwitch.isOn;
        
        order.accommodationsEvaArchFillLeft = topCoversViewController!.topCoversAndExtensionsEvaArchFillLeftUISwitch.isOn;
        order.accommodationsEvaArchFillRight = topCoversViewController!.topCoversAndExtensionsEvaArchFillRightUISwitch.isOn;
        
        order.accommodationsMetHeadAccommodationsLeft = (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL1.accessibilityLabel == " " ? 1 : 0) +
        (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL2.accessibilityLabel == " " ? 2 : 0) +
        (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL3.accessibilityLabel == " " ? 4 : 0) +
        (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL4.accessibilityLabel == " " ? 8 : 0) +
        (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL5.accessibilityLabel == " " ? 16 : 0)
        
        ;

        order.accommodationsMetHeadAccommodationsRight = (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR1.accessibilityLabel == " " ? 1 : 0) +
            (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR2.accessibilityLabel == " " ? 2 : 0) +
            (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR3.accessibilityLabel == " " ? 4 : 0) +
            (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR4.accessibilityLabel == " " ? 8 : 0) +
            (topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR5.accessibilityLabel == " " ? 16 : 0)
        
        ;
        
        order.accommodationsNeuromaPadLeft = (topCoversViewController!.topCoversAndExtensionsNeuromaPadL1.accessibilityLabel == " " ? 1 : 0) +
            (topCoversViewController!.topCoversAndExtensionsNeuromaPadL2.accessibilityLabel == " " ? 2 : 0) +
            (topCoversViewController!.topCoversAndExtensionsNeuromaPadL3.accessibilityLabel == " " ? 4 : 0) +
            (topCoversViewController!.topCoversAndExtensionsNeuromaPadL4.accessibilityLabel == " " ? 8 : 0)
        
        ;

        order.accommodationsNeuromaPadRight = (topCoversViewController!.topCoversAndExtensionsNeuromaPadR1.accessibilityLabel == " " ? 1 : 0) +
        (topCoversViewController!.topCoversAndExtensionsNeuromaPadR2.accessibilityLabel == " " ? 2 : 0) +
        (topCoversViewController!.topCoversAndExtensionsNeuromaPadR3.accessibilityLabel == " " ? 4 : 0) +
        (topCoversViewController!.topCoversAndExtensionsNeuromaPadR4.accessibilityLabel == " " ? 8 : 0)
        
        ;

        
    }
    
    func setTopCoversAndExtensionsFormFromOrder() {
        if (topCoversViewController == nil) {
            return;
        }
    topCoversViewController!.topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialEVA116;
    topCoversViewController!.topCoversAndExtensionsTopCoverLengthPicker.selectRow(Int(order.topCoversAndExtensionsTopCoverLength), inComponent: 0, animated: false)
        
    topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPicker.selectRow(Int(order.topCoversAndExtensionsForefootExtensionsMaterial), inComponent: 0, animated: false)
        
        
       
//        topCoversViewController!.topCoversAndExtensionsTopCoverLengthPicker.selectRow(topCoversViewController!.topCoversAndExtensionsTopCoverLengthPickerData.index(of: order.topCoversAndExtensionsTopCoverLength!) ?? 0, inComponent: 0, animated: false)
//        topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPicker.selectRow(topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPickerData.index(of: order.topCoversAndExtensionsForefootExtensionsMaterial!) ?? 0, inComponent: 0, animated: false)
    topCoversViewController!.topCoversAndExtensionsForefootExtensionThicknessPicker.selectRow(Int(order.topCoversAndExtensionsForefootExtensionsThickness), inComponent: 0, animated: false)
    topCoversViewController!.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectRow(Int(order.topCoversAndExtensionsForefootExtensionsExtensionLength), inComponent: 0, animated: false)
       
    topCoversViewController!.topCoversAndExtensionsMaterialEva18UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialEva18;
        topCoversViewController!.topCoversAndExtensionsMaterialNcn18UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialNcn18;
        topCoversViewController!.topCoversAndExtensionsMaterialEva116UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialEva116;
        topCoversViewController!.topCoversAndExtensionsMaterialNcn116UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialNcn116;
        topCoversViewController!.topCoversAndExtensionsMaterialVinylBlackUISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialVinylBlack;
        topCoversViewController!.topCoversAndExtensionsMaterialVinylBronzeUISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialVinylBronze;
        topCoversViewController!.topCoversAndExtensionsMaterialVinylForestUISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialVinylForest;
        topCoversViewController!.topCoversAndExtensionsMaterialLeatherBlackUISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialLeatherBlack;
        topCoversViewController!.topCoversAndExtensionsMaterialLeatherBrownUISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialLeatherBrown;
        topCoversViewController!.topCoversAndExtensionsDiabetic116Plastazone18UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialDiabetic;

        topCoversViewController!.topCoversAndExtensionsPoronUnderTopcover18.isOn = order.topCoversAndExtensionsPoronUnderTopcover18;
        topCoversViewController!.topCoversAndExtensionsPoronUnderTopcover116.isOn = order.topCoversAndExtensionsPoronUnderTopcover116;
        topCoversViewController!.topCoversAndExtensionsEvaArchFillLeftUISwitch.isOn = order.accommodationsEvaArchFillLeft;
        topCoversViewController!.topCoversAndExtensionsEvaArchFillRightUISwitch.isOn = order.accommodationsEvaArchFillRight;
        topCoversViewController!.topCoversAndExtensionsBottomCoverForefootReinforcementUISwitch.isOn = order.topCoversAndExtensionsBottomCoverForefootReinforcement;
        topCoversViewController!.topCoversAndExtensionsMedialArchReinforceLeftUISwitch.isOn = order.accommodationsMedialArchReinforceLeft;
        topCoversViewController!.topCoversAndExtensionsMedialArchReinformceRightUISwitch.isOn = order.accommodationsMedialArchReinforceRight;
        topCoversViewController!.topCoversAndExtensionsKorexUISwitch.isOn = order.accommodationsKorex;
        topCoversViewController!.topCoversAndExtensionsEVAUISwitch.isOn = order.accommodationsEva;
        topCoversViewController!.topCoversAndExtensionsMaterialEva116UISwitch.isOn = order.topCoversAndExtensionsBottomCover116Eva;
        
        
        topCoversViewController!.topCoversAndExtensionsMortonsExtensionLeftUISwitch.isOn = order.accommodationsMortonsExtensionLeft;
        topCoversViewController!.topCoversAndExtensionsMortonsExtensionRightUISwitch.isOn = order.accommodationsMortonsExtensionRight;
        topCoversViewController!.topCoversAndExtensionsReverseMortonsExtensionLeftUISwitch.isOn = order.accommodationsReverseMortonsExtensionLeft;
        topCoversViewController!.topCoversAndExtensionsReverseMortonsExtensionRightUISwitch.isOn = order.accommodationsReverseMortonsExtensionRight;
        topCoversViewController!.topCoversAndExtensionsMetatarsalBarLeftUISwitch.isOn = order.accommodationsMetatarsalBarLeft;
        topCoversViewController!.topCoversAndExtensionsMetatarsalBarRightUISwitch.isOn = order.accommodationsMetatarsalBarRight;
        topCoversViewController!.topCoversAndExtensionsMetatarsalPadLeftUISwitch.isOn = order.accommodationsMetatarsalPadLeft;
        topCoversViewController!.topCoversAndExtensionsMetatarsalPadRightUISwitch.isOn = order.accommodationsMetatarsalPadRight;
        topCoversViewController!.topCoversAndExtensionsHeelPadLeftUISwitch.isOn = order.accommodationsHeelPadLEft;
        topCoversViewController!.topCoversAndExtensionsHeelPadRightUISwitch.isOn = order.accommodationsHeelPadRight;
        topCoversViewController!.topCoversAndExtensionsHorseshoePadLeftUISwitch.isOn = order.accommodationsHorseshoePadLeft;
        topCoversViewController!.topCoversAndExtensionsHorseshoePadRightUISwitch.isOn = order.accommodationsHorseshoePadRight;
        topCoversViewController!.topCoversAndExtensionsDancersPadLeftUISwitch.isOn = order.accommodationsDancersPadLeft;
        topCoversViewController!.topCoversAndExtensionsDancersPadRightUISwitch.isOn = order.accommodationsDancersPadRight;
        topCoversViewController!.topCoversAndExtensionsKineticWedgeLeftUISwitch.isOn = order.accommodationsKineticWedgeLeft;
        topCoversViewController!.topCoversAndExtensionsKineticWedgeRightUISwitch.isOn = order.accommodationsKineticWedgeRight;

        
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsLeft & 0x0001 == 1, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL1);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsLeft & 0x0002 == 2, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL2);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsLeft & 0x0004 == 4, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL3);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsLeft & 0x0008 == 8, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL4);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsLeft & 0x0010 == 16, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsL5);

        
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsRight & 0x0001 == 1, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR1);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsRight & 0x0002 == 2, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR2);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsRight & 0x0004 == 4, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR3);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsRight & 0x0008 == 8, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR4);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsMetHeadAccommodationsRight & 0x0010 == 16, button: topCoversViewController!.topCoversAndExtensionsMetHeadAccommodationsR5);
        
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadLeft & 0x0001 == 1, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadL1);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadLeft & 0x0002 == 2, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadL2);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadLeft & 0x0004 == 4, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadL3);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadLeft & 0x0008 == 8, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadL4);
        
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadRight & 0x0001 == 1, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadR1);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadRight & 0x0002 == 2, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadR2);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadRight & 0x0004 == 4, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadR3);
        setAccessibilityLabelAndBackgroundImage(on: order.accommodationsNeuromaPadRight & 0x0008 == 8, button: topCoversViewController!.topCoversAndExtensionsNeuromaPadR4);

        
        
    }

    func setAccessibilityLabelAndBackgroundImage(on: Bool, button: UIButton) {
        button.accessibilityLabel = (on ? " " : "");
        
        button.setBackgroundImage(UIImage(named: on ? "checked.png" : "Circle.png"), for: UIControl.State.normal);

    }
    
    func readRushOrderForm() {
        order.rushOrder2DayTurnaround =
            rushOrder2DayTurnaroundUISwitch.isOn;
        order.rushOrderNextDayTurnaround =
            rushOrderNextDayTurnaroundUISwitch.isOn;

        // If set to 0, it will be ignored and interpreted as normal shipping
        order.rushOrderExpressShiping = Int16(rushOrderExpressShippingPicker.selectedRow(inComponent: 0));


    }

    func setRushOrderFormFromOrder() {
        rushOrder2DayTurnaroundUISwitch.isOn =
            order.rushOrder2DayTurnaround;
        rushOrderNextDayTurnaroundUISwitch.isOn =
            order.rushOrderNextDayTurnaround;
        
        rushOrderExpressShippingPicker.selectRow(Int( order.rushOrderExpressShiping), inComponent: 0, animated: false)
    }
    
    func readCorrectionsAndModificationsForm() {
        order.correctionsAndModificationsMedialArchFillMinimalLeft =
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillMinimalRight =
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillStandardLeft =
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillStandardRight =
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillDecreasedLeft =
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillDecreasedRight =
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillIncreasedRight =
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn;
        order.correctionsAndModificationsMedialArchFillIncreasedLeft =
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn;
//        order.correctionsAndModificationsCastOrientationVerticalLeft =
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn;
//        order.correctionsAndModificationsCastOrientationVerticalRight =
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn;
        order.correctionsAndModificationsFillWithPoronLeft =
            correctionsAndModificationsFillWIthPoronLeftUISwitch.isOn;
        order.correctionsAndModificationsFillWithPoronRight =
            correctionsAndModificationsFillWIthPoronRightUISwitch.isOn;
        order.correctionsAndModificationsNavicularFillWithPoronLeft =
            correctionsAndModificationsNavicularFillWIthPoronLeftUISwitch.isOn;
        order.correctionsAndModificationsNavicularFillWithPoronRight =
            correctionsAndModificationsNavicularFillWIthPoronRightUISwitch.isOn;
//        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft =
//            correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn;
//        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight =
//            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn;
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft =
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn;
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight =
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn;
        
        order.correctionsAndModificationsCastOrientationInvertedLeft = correctionsAndModificationsCastOrientationInvertedLeft.text!;
        order.correctionsAndModificationsCastOrientationInvertedRight = correctionsAndModificationsCastOrientationInvertedRight.text!;
        order.correctionsAndModificationsCastOrientationEvertedLeft = correctionsAndModificationsCastOrientationEvertedLeft.text!;
        order.correctionsAndModificationsCastOrientationEvertedRight = correctionsAndModificationsCastOrientationEvertedRight.text!;
        order.correctionsAndModificationsPlantarFaciaAccommodationLeft = correctionsAndModificationsPlantarFaciaAccomLeft.text!;
        order.correctionsAndModificationsPlantarFaciaAccommodationRight = correctionsAndModificationsPlantarFaciaAccomRight.text!;
        order.correctionsAndModificationsStyloidAccommodationLeft = correctionsAndModificationsStyloidAccomLeft.text!;
        order.correctionsAndModificationsStyloidAccommodationRight = correctionsAndModificationsStyloidAccomRight.text!;
        order.correctionsAndModificationsNavicularAccommodationLeft = correctionsAndModificationsNavicularAccomLeft.text!;
        order.correctionsAndModificationsNavicularAccommodationRight = correctionsAndModificationsNavicularAccomRight.text!;
        order.correctionsAndModificationsAddLateralHeelExpansionLeft = correctionsAndModificationsAddLatHeelExpansionLeft.text!;
        order.correctionsAndModificationsAddLateralHeelExpansionRight = correctionsAndModificationsAddLatHeelExpansionRight.text!;
        order.correctionsAndModificationsMedialHeelSkiveLeft = correctionsAndModificationsMedialHeelSkiveLeft.text!;
        order.correctionsAndModificationsMedialHeelSkiveRight = correctionsAndModificationsMedialHeelSkiveRight.text!;
        order.correctionsAndModificationsintrinsicMetatarsalPadLeft = correctionsAndModificationsIntrinsicMetatarsalPadMmLeft.text!;
        order.correctionsAndModificationsintrinsicMetatarsalPadRight = correctionsAndModificationsIntrinsicMetatarsalPadMmRight.text!;
        order.correctionsAndModificationsAccommodatePerPhotoLeft =
            correctionsAndModificationsAsMarkedOnCastLeft.text!;
        order.correctionsAndModificationsAccommodatePerPhotoRight =
            correctionsAndModificationsAsMarkedOnCastRight.text!;

    }

    func readAllForms() {
        readOrthosisMaterialForm()
        readCorrectionsAndModificationsForm()
        readOrthosisSpecificationForm();
        readPostingForm()
        readTopCoversAndExtensionsForm()

        readRushOrderForm()
        readChiefComplaintDiagnosisForm()
        readPatientForm()
    }
    
    func updateOrthosisScreenFromModel() {
        if (orthoticsPrescriptionViewController != nil) {
            let orthosisSpecificationDescription = calculateOrthosisSpecificationDescriptionFromOrder();
            orthoticsPrescriptionViewController?.orthosisSpecificationsTextView.text = orthosisSpecificationDescription;
            let rushOrderDescription = calculateRushOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.rushOrderTextView.text = rushOrderDescription;
            let postingDescription = calculatePostingDescriptionFromOrder();
            orthoticsPrescriptionViewController?.postingTextView.text = postingDescription;
            let correctionsAndModificationsDescription = calculateCorrectionsAndModificationsDescriptionFromOrder();
            orthoticsPrescriptionViewController?.correctionsAndModificationsTextView.text = correctionsAndModificationsDescription;
        
            let topCoversAndExtensionsDescription = calculateTopCoversAndExtensionsOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.topCoversAndExtensionsTextView.text = topCoversAndExtensionsDescription;

            let commentsInstructionsDescription = calculateCommentsInstructionsOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.chiefComplaintDiagnosisTextView.text = commentsInstructionsDescription;
            
            let orthosisMaterialDescription = calculateOrthosisMaterialOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.orthosisMaterialTextView.text = orthosisMaterialDescription;
            

            
            updateImagesForValidOrthoticsForm()
        }

    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if (textView == commentsTextArea) {
            let maxChars = 600;
            let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
            let numberOfChars = newText.count
            return numberOfChars < maxChars
        }
        return true
    }

    
    func readChiefComplaintDiagnosisForm() {
        order.chiefComplaintDiagnosis = orthosisChiefComplaintDiagnosisInput.text!;
        order.commentsInstructions = commentsTextArea.text!;
    }
    
    func setCommentsInstructionsFormFromOrder() {
        orthosisChiefComplaintDiagnosisInput.text = order.chiefComplaintDiagnosis ?? "";
        commentsTextArea.text = order.commentsInstructions ?? "";
    }
    
    func readOrthosisMaterialForm() {
        let theView = self.pickerView(orthoticMaterialPicker, viewForRow: orthoticMaterialPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
        order.orthosisMaterialOption = (theView as! UILabel).text;

        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        
        if (theMOI.orthoticsMaterialSelection == orthosisMaterialPolypropyleneIndex) {
            let theView2 = self.pickerView(orthoticMaterialColorPicker, viewForRow: orthoticMaterialColorPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil);
            order.orthosisMaterialColor = (theView2 as! UILabel).text;
        }
        else {
            order.orthosisMaterialColor = nil;
        }
        
    }
    
    func setOrthosisMaterialFormFromOrder() {
        if (order.orthosisMaterialColor == nil) {
            orthoticMaterialColorPicker.selectRow(0,inComponent: 0, animated: false);
        } else {
            orthoticMaterialColorPicker.selectRow(orthosisMaterialColorLabels.index(of: order.orthosisMaterialColor!) ?? 0, inComponent: 0, animated: false)
        }
        
        //if (order.orthosisMaterialOption == nil) {
        //    orthoticMaterialPicker.selectRow(0,inComponent: 0, animated: false);
        //} else {
        //    orthoticMaterialPicker.selectRow(orthosisMaterialTypeLabels.index(of: order.orthosisMaterialOption!) ?? 0, inComponent: 0, animated: false)
        //}
        
    }
    
    func readOrthosisSpecificationForm() {
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft =
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight =
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft =
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight =
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeft =
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactRight =
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeft =
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadRight =
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeft =
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadRight =
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn;
        
        order.orthosisSpecificationsAnteriorWidthLeft =                 Int16(orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0))
        order.orthosisSpecificationsAnteriorWidthRight =                 Int16(orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0))

        order.orthosisSpecificationsHeelCupHeightLeft =                 Int16(orthoticSpecificationsHeelCupHeightLeftPicker.selectedRow(inComponent: 0))
        order.orthosisSpecificationsHeelCupHeightRight =                 Int16(orthoticSpecificationsHeelCupHeightRightPicker.selectedRow(inComponent: 0))
        
        order.orthosisSpecificationsOtherMedmmLeft = Int16(orthosisSpecificationsOtherMedmmLeft.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherMedmmRight = Int16(orthosisSpecificationsOtherMedmmRight.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherLatmmLeft = Int16(orthosisSpecificationsOtherLatmmLeft.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherLatmmRight = Int16(orthosisSpecificationsOtherLatmmRight.text ?? "0") ?? 0;

    }

    func setOrthosisSpecificationFormFromOrder() {
        orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.isOn =
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft;
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight;
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft;
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight;
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeftUISwitch.isOn =
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeft;
        orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.isOn =
            order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactRight;
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeftUISwitch.isOn =
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeft;
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.isOn =
            order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadRight;

            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeftUISwitch.isOn =
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeft;
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn =
            order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadRight;

        
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(
            Int(order.orthosisSpecificationsAnteriorWidthLeft), inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(
            Int(order.orthosisSpecificationsAnteriorWidthRight), inComponent: 0, animated: false)
        
        
        if (order.orthosisSpecificationsOtherMedmmLeft > 0) {
            orthosisSpecificationsOtherMedmmLeft.text =
                String(order.orthosisSpecificationsOtherMedmmLeft);
        } else {
            orthosisSpecificationsOtherMedmmLeft.text = nil;
        }
        if (order.orthosisSpecificationsOtherMedmmRight > 0) {
            orthosisSpecificationsOtherMedmmRight.text =
                String(order.orthosisSpecificationsOtherMedmmRight);
        } else {
            orthosisSpecificationsOtherMedmmRight.text = nil;
        }


        if (order.orthosisSpecificationsOtherLatmmLeft > 0) {
            orthosisSpecificationsOtherLatmmLeft.text = String(order.orthosisSpecificationsOtherLatmmLeft);
        } else {
            orthosisSpecificationsOtherLatmmLeft.text = nil;
        }
        if (order.orthosisSpecificationsOtherLatmmRight > 0) {
            orthosisSpecificationsOtherLatmmRight.text =  String(order.orthosisSpecificationsOtherLatmmRight);
        } else {
            orthosisSpecificationsOtherLatmmRight.text = nil;
        }

        
    }

    func setCorrectionsAndModificationsFromOrder() {
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillMinimalLeft;
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillMinimalRight;
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillStandardLeft;
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillStandardRight;
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillDecreasedLeft;
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillDecreasedRight;
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillIncreasedRight;
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn =
        order.correctionsAndModificationsMedialArchFillIncreasedLeft;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn =
//        order.correctionsAndModificationsCastOrientationVerticalLeft;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn =
//        order.correctionsAndModificationsCastOrientationVerticalRight;

//        correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn =
//        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft;
//            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn =
//        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn =
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn =
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight;
        
        correctionsAndModificationsCastOrientationInvertedRight.text =
            order.correctionsAndModificationsCastOrientationInvertedRight;
        correctionsAndModificationsCastOrientationInvertedLeft.text =
            order.correctionsAndModificationsCastOrientationInvertedLeft;
        correctionsAndModificationsCastOrientationEvertedRight.text =
            order.correctionsAndModificationsCastOrientationEvertedRight;
        correctionsAndModificationsCastOrientationEvertedLeft.text =
            order.correctionsAndModificationsCastOrientationEvertedLeft;
        
        correctionsAndModificationsPlantarFaciaAccomLeft.text =
            order.correctionsAndModificationsPlantarFaciaAccommodationLeft;
        correctionsAndModificationsPlantarFaciaAccomRight.text =
            order.correctionsAndModificationsPlantarFaciaAccommodationRight;
        correctionsAndModificationsStyloidAccomRight.text =
            order.correctionsAndModificationsStyloidAccommodationRight;
        correctionsAndModificationsStyloidAccomLeft.text =
            order.correctionsAndModificationsStyloidAccommodationLeft;
        correctionsAndModificationsNavicularAccomRight.text =
            order.correctionsAndModificationsNavicularAccommodationRight;
        correctionsAndModificationsNavicularAccomLeft.text =
            order.correctionsAndModificationsNavicularAccommodationLeft;
        correctionsAndModificationsNavicularFillWIthPoronLeftUISwitch.isOn =
            order.correctionsAndModificationsNavicularFillWithPoronLeft;
        correctionsAndModificationsNavicularFillWIthPoronRightUISwitch.isOn =
            order.correctionsAndModificationsNavicularFillWithPoronRight;
        correctionsAndModificationsAsMarkedOnCastLeft.text =
            order.correctionsAndModificationsAccommodatePerPhotoLeft;
        correctionsAndModificationsAsMarkedOnCastRight.text =
            order.correctionsAndModificationsAccommodatePerPhotoRight;
        correctionsAndModificationsFillWIthPoronLeftUISwitch.isOn =
            order.correctionsAndModificationsFillWithPoronLeft;
        correctionsAndModificationsFillWIthPoronRightUISwitch.isOn =
            order.correctionsAndModificationsFillWithPoronRight;
        
        correctionsAndModificationsAddLatHeelExpansionLeft.text =
            order.correctionsAndModificationsAddLateralHeelExpansionLeft;
        correctionsAndModificationsAddLatHeelExpansionRight.text =
            order.correctionsAndModificationsAddLateralHeelExpansionRight;
        correctionsAndModificationsMedialHeelSkiveLeft.text =
            order.correctionsAndModificationsMedialHeelSkiveLeft;
        correctionsAndModificationsMedialHeelSkiveRight.text =
            order.correctionsAndModificationsMedialHeelSkiveRight;
        correctionsAndModificationsIntrinsicMetatarsalPadMmRight.text =
            order.correctionsAndModificationsintrinsicMetatarsalPadRight;
        correctionsAndModificationsIntrinsicMetatarsalPadMmLeft.text =
            order.correctionsAndModificationsintrinsicMetatarsalPadLeft;
    }
    
    func resetDueToOrthosisTypeChange() {
        order.orthosisMaterialColor = nil;
        order.orthosisMaterialOption = nil;
        order.correctionsAndModificationsFillWithPoronLeft = false;
        order.correctionsAndModificationsFillWithPoronRight = false;
        order.correctionsAndModificationsNavicularFillWithPoronLeft = false;
        order.correctionsAndModificationsNavicularFillWithPoronRight = false;
        order.correctionsAndModificationsNoFillerLeft = false;
        order.correctionsAndModificationsNoFillerRight = false;
        order.correctionsAndModificationsMedialArchFillMinimalLeft = false;
        order.correctionsAndModificationsMedialArchFillMinimalRight = false;
        order.correctionsAndModificationsMedialArchFillStandardLeft = false;
        order.correctionsAndModificationsMedialArchFillStandardRight = false;
        order.correctionsAndModificationsMedialArchFillDecreasedLeft = false;
        order.correctionsAndModificationsMedialArchFillDecreasedRight = false;
        order.correctionsAndModificationsMedialArchFillIncreasedRight = false;
        order.correctionsAndModificationsMedialArchFillIncreasedLeft = false;
//        order.correctionsAndModificationsCastOrientationVerticalLeft = false;
//        order.correctionsAndModificationsCastOrientationVerticalRight = false;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft = false;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight = false;
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft = false;
        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight = false;
        
        order.correctionsAndModificationsCastOrientationInvertedLeft = "";
        order.correctionsAndModificationsCastOrientationInvertedRight = "";
        order.correctionsAndModificationsCastOrientationEvertedLeft = "";
        order.correctionsAndModificationsCastOrientationEvertedRight = "";
        order.correctionsAndModificationsPlantarFaciaAccommodationLeft = "";
        order.correctionsAndModificationsPlantarFaciaAccommodationRight = "";
        order.correctionsAndModificationsStyloidAccommodationLeft = "";
        order.correctionsAndModificationsStyloidAccommodationRight = "";
        order.correctionsAndModificationsNavicularAccommodationLeft = "";
        order.correctionsAndModificationsNavicularAccommodationRight = "";
        order.correctionsAndModificationsAccommodatePerPhotoLeft = "";
        order.correctionsAndModificationsAccommodatePerPhotoRight = "";
        order.correctionsAndModificationsAddLateralHeelExpansionLeft = "";
        order.correctionsAndModificationsAddLateralHeelExpansionRight = "";
        order.correctionsAndModificationsMedialHeelSkiveLeft = "";
        order.correctionsAndModificationsMedialHeelSkiveRight = "";
        order.correctionsAndModificationsintrinsicMetatarsalPadRight = "";
        order.correctionsAndModificationsintrinsicMetatarsalPadLeft = "";
        
        
        order.orthosisSpecificationsOtherMedmmLeft = 0;
        order.orthosisSpecificationsOtherMedmmRight = 0;
        order.orthosisSpecificationsOtherLatmmLeft = 0;
        order.orthosisSpecificationsOtherLatmmRight = 0;
        order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadRight = false;
        
        order.rushOrder2DayTurnaround = false;
        order.rushOrderNextDayTurnaround = false;
        order.rushOrderExpressShiping = 0;
        
        order.postingRearfootPostingElevator4mmLeft = false;
        order.postingRearfootPostingElevator8mmLeft = false;
        order.postingRearfootPostingElevator4mmRight = false;
        order.postingRearfootPostingElevator8mmRight = false;
        order.postingRearfootPostMotion0DegreesMotionLeft = false;
        order.postingRearfootPostMotion0DegreesMotionRight = false;
        order.postingRearfootPostMotion4DegreesMotionLeft = false;
        order.postingRearfootPostMotion4DegreesMotionRight = false;
        order.postingRearfootPostOptionsLongPostFlangeLeft = false;
        order.postingRearfootPostOptionsLongPostFlangeRight = false;
        order.postingRearfootPostOptionsShortPostFlangeLeft = false;
        order.postingRearfootPostOptionsShortPostFlangeRight = false;
        order.postingRearfootPostOptionsLateralPostFlangeLeft = false;
        order.postingRearfootPostOptionsLateralPostFlangeRight = false;
        order.postingRearfootPostOptionsMedialPostFlangeLeft = false;
        order.postingRearfootPostOptionsMedialPostFlangeRight = false;
        order.postingNonCorrectiveForefootPostFullWidthLeft = false;
        order.postingNonCorrectiveForefootPostFullWidthRight = false;
        order.postingNonCorrectiveForefootPostMedialCornerLeft = false;
        order.postingNonCorrectiveForefootPostMedialCornerRight = false;
        order.postingNonCorrectiveForefootPostLateralCornerRight = false;
        order.postingNonCorrectiveForefootPostLateralCornerWidthLeft = false;
        order.postingHeelLiftLeft = 0;
        order.postingHeelLiftRight = 0;
        order.postingRearfootPostMotionOtherMotionDegreesLeft = 0;
        order.postingRearfootPostMotionOtherMotionDegreesRight = 0;
        order.postingRearfootPostingElevatormmLeft = nil;
        order.postingRearfootPostingElevatormmRight = nil;

        order.chiefComplaintDiagnosis = nil;
        order.commentsInstructions = nil;

        order.topCoversAndExtensionsTopCoverLength = 0;
        order.topCoversAndExtensionsBottomCover116Eva = false;
        order.topCoversAndExtensionsPoronUnderTopcover18 = false;
        order.topCoversAndExtensionsPoronUnderTopcover116 = false;
        order.topCoversAndExtensionsBottomCoverMaterialEva18 = false;
        order.topCoversAndExtensionsBottomCoverMaterialNcn18 = false;
        order.topCoversAndExtensionsBottomCoverMaterialEVA116 = false;
        order.topCoversAndExtensionsBottomCoverMaterialEva116 = false;
        order.topCoversAndExtensionsBottomCoverMaterialNcn116 = false;
        order.topCoversAndExtensionsForefootExtensionsMaterial = 0;
        order.topCoversAndExtensionsBottomCoverMaterialVinylBlack = false;
        order.topCoversAndExtensionsBottomCoverMaterialDiabetic = false;
        order.topCoversAndExtensionsForefootExtensionsThickness = 0;
        order.topCoversAndExtensionsBottomCoverMaterialVinylBronze = false;
        order.topCoversAndExtensionsBottomCoverMaterialVinylForest = false;
        order.topCoversAndExtensionsBottomCoverMaterialLeatherBlack = false;
        order.topCoversAndExtensionsBottomCoverMaterialLeatherBrown = false;
        order.topCoversAndExtensionsBottomCoverForefootReinforcement = false;
        order.topCoversAndExtensionsForefootExtensionsExtensionLength = 0;

        order.accommodationsEva = false;
        order.accommodationsKorex = false;
        order.accommodationsHeelPadLEft = false;
        order.accommodationsDancersPadLeft = false;
        order.accommodationsHeelPadRight = false;
        order.accommodationsDancersPadRight = false;
        order.accommodationsNeuromaPadLeft = 0;
        order.accommodationsNeuromaPadRight = 0;
        order.accommodationsEvaArchFillLeft = false;
        order.accommodationsEvaArchFillRight = false;
        order.accommodationsHorseshoePadLeft = false;
        order.accommodationsHorseshoePadRight = false;
        order.accommodationsKineticWedgeLeft = false;
        order.accommodationsKineticWedgeRight = false;
        order.accommodationsMetatarsalBarLeft = false;
        order.accommodationsMetatarsalBarRight = false;
        order.accommodationsMetatarsalPadLeft = false;
        order.accommodationsMetatarsalPadRight = false;
        order.accommodationsMortonsExtensionLeft = false;
        order.accommodationsMortonsExtensionRight = false;
        order.accommodationsMedialArchReinforceLeft = false;
        order.accommodationsMedialArchReinforceRight = false;
        order.accommodationsMetHeadAccommodationsLeft = 0;
        order.accommodationsMetHeadAccommodationsRight = 0;
        order.accommodationsReverseMortonsExtensionLeft = false;
        order.accommodationsReverseMortonsExtensionRight = false;

   
        setOrthosisMaterialFormFromOrder()
        setCorrectionsAndModificationsFromOrder()
        setOrthosisSpecificationFormFromOrder()
        setPostingFormFromOrder()
        setTopCoversAndExtensionsFormFromOrder()
        setRushOrderFormFromOrder()
        setCommentsInstructionsFormFromOrder()
 
        postingRearfootPostTypePicker.reloadAllComponents();
    }

    func calculateALeftAndRightInt(leftInt : String?, rightInt: String?, string: String) -> String {
        var theReturn = "";
        let leftNotNilBlankOrZero = isNotNilBlankOrZero(string: leftInt);
        let rightNotNilBlankOrZero = isNotNilBlankOrZero(string: rightInt);
        if (leftNotNilBlankOrZero || rightNotNilBlankOrZero) {
            theReturn += string;
            if (leftInt == rightInt) {
                theReturn += " " + leftInt! + " R/L, "
            } else if (leftNotNilBlankOrZero && rightNotNilBlankOrZero) {
                theReturn += " " + leftInt! + " L, ";
                theReturn += rightInt! + " R, ";
            } else if (leftNotNilBlankOrZero) {
                theReturn += " " + leftInt! + " L, "
            } else {
                theReturn += " " + rightInt! + " R, "
            }
        }
        return theReturn;
    }
    
    func isNotNilBlankOrZero(string: String?) -> Bool {
        return string != nil && string != "" && string != "0"
    }
    
    func calculateALeftAndRight(leftBool : Bool, rightBool: Bool, string: String) -> String {
        var theReturn = "";
        if (leftBool || rightBool) {
            theReturn += string;
            if (leftBool && rightBool) {
                theReturn += " R/L, "
            } else if (leftBool) {
                theReturn += " L, "
            } else {
                theReturn += " R, "
            }
        }
        return theReturn;
    }
    
    func calculateCorrectionsAndModificationsDescriptionFromOrder() -> String {
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
        
            if (richieBraceViewController!.heelLiftInches.text != nil &&
                richieBraceViewController!.heelLiftInches.text != "") {
                theReturn += "Heel lift: " + richieBraceViewController!.heelLiftInches.text! + " in, "
            }
            
            let selectedHeelCupHeight = richieBraceViewController!.heelCupHeightPickerView.selectedRow(inComponent: 0);
            if (selectedHeelCupHeight > 0) {
                let heelCupHeight = richieBraceViewController!.richieBraceHeelCupHeightPickerViewValues[selectedHeelCupHeight];
                theReturn += "Heel Cup Height: " + heelCupHeight + ", ";
            }
            
            if (richieBraceViewController!.navicularAccommodation.isOn) {
                theReturn += "Navicular Accommodation, "
            }
            if (richieBraceViewController!.plantarFaciaAccommodation.isOn) {
                theReturn += "Plantar Facia Accommodation, "
            }
            if (richieBraceViewController!.sytloidAccommodation.isOn) {
                theReturn += "Styloid Accommodation, "
            }
            if (richieBraceViewController!.otherAccommodation.text != nil &&
                richieBraceViewController!.otherAccommodation.text != "") {
                theReturn += "Other Accommodation: " + richieBraceViewController!.otherAccommodation.text! + ", ";
            }
            
            let selectedMedialHeelSkive =  richieBraceViewController!.medialHeelSkivePikerView.selectedRow(inComponent: 0);
            if (selectedMedialHeelSkive > 0) {
                let selectedMedialHeelSkiveText = richieBraceViewController!.richieBraceMedialHeelSkivePickerViewValues[selectedMedialHeelSkive];
                theReturn += "Medial Heel Skive: " + selectedMedialHeelSkiveText + ", ";
            }

            
            if (theReturn.hasSuffix(", ")) {
                theReturn = String(theReturn.dropLast(2));
            }
            return theReturn;
        }

        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsCastOrientationInvertedLeft, rightInt: order.correctionsAndModificationsCastOrientationInvertedRight, string: "Inverted");
        
        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsCastOrientationEvertedLeft, rightInt: order.correctionsAndModificationsCastOrientationEvertedRight, string: "Everted");

        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsPlantarFaciaAccommodationLeft, rightInt: order.correctionsAndModificationsPlantarFaciaAccommodationRight, string: "Plantar Facia Accommodation");

        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsStyloidAccommodationLeft, rightInt: order.correctionsAndModificationsStyloidAccommodationRight, string: "Styloid Accommodation");

        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsNavicularAccommodationLeft, rightInt: order.correctionsAndModificationsNavicularAccommodationRight, string: "Navicular Accommodation");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsNavicularFillWithPoronLeft, rightBool: order.correctionsAndModificationsNavicularFillWithPoronRight, string: "Fill Navicular Accommodation with Poron");

        
        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsAccommodatePerPhotoLeft, rightInt: order.correctionsAndModificationsAccommodatePerPhotoRight, string: "Accommodate Per Photo");
        

        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsFillWithPoronLeft, rightBool: order.correctionsAndModificationsFillWithPoronRight, string: "Fill with Poron per Photo");

        
        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsAddLateralHeelExpansionLeft, rightInt: order.correctionsAndModificationsAddLateralHeelExpansionRight, string: "Add Lateral Heel Expansion");

        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsMedialHeelSkiveLeft, rightInt: order.correctionsAndModificationsMedialHeelSkiveRight, string: "Medial Heel Skive");

        theReturn += calculateALeftAndRightInt(leftInt: order.correctionsAndModificationsintrinsicMetatarsalPadLeft, rightInt: order.correctionsAndModificationsintrinsicMetatarsalPadRight, string: "Intrinsic Metatarsal Pad");
        
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsNoFillerLeft, rightBool: order.correctionsAndModificationsNoFillerRight, string: "No Filler");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsMedialArchFillMinimalLeft, rightBool: order.correctionsAndModificationsMedialArchFillMinimalRight, string: "Medial Arch Fill Minimal");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsMedialArchFillStandardLeft, rightBool: order.correctionsAndModificationsMedialArchFillStandardRight, string: "Medial Arch Fill Standard");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsMedialArchFillDecreasedLeft, rightBool: order.correctionsAndModificationsMedialArchFillDecreasedRight, string: "Medial Arch Fill Decreased");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsMedialArchFillIncreasedLeft, rightBool: order.correctionsAndModificationsMedialArchFillIncreasedRight, string: "Medial Arch Fill Increased");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft, rightBool: order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight, string: "Forefoot Correction Type Extrinsic");
        
        theReturn += calculateALeftAndRight(leftBool: order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft, rightBool: order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight, string: "Forefoot Correction Type Intrinsic");
    

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    
    func calculatePostingDescriptionFromOrder() -> String{
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
            if (richieBraceViewController!.fullRearfootPost.isOn) {
                theReturn += "Full Rearfoot Post, "
            }
            
            if (richieBraceViewController!.medialArchFlange.isOn) {
                theReturn += "Medial Arch Flange, "
            }
            if (richieBraceViewController!.medialArchSuspender.isOn) {
                theReturn += "Medial Arch Suspender, "
            }
            if (richieBraceViewController!.lateralFlange.isOn) {
                theReturn += "Lateral Flange, "
            }
            if (richieBraceViewController!.laterArchSuspender.isOn) {
                theReturn += "Lateral Arch Suspender, "
            }
            
            if (theReturn.hasSuffix(", ")) {
                theReturn = String(theReturn.dropLast(2));
            }
            
            return theReturn;
        }
        
        // if polymax, use different array of picker values
        if (orthoticDeviceSelected == 1) {
            theReturn += "Rearfoot post: " +  postingRearfootPostPolypropeleneTypePickerData[Int(order.postingRearfootPostMaterial)] + ", ";
        }
        else {
            theReturn += "Rearfoot post: " +  postingRearfootPostTypePickerData[Int(order.postingRearfootPostMaterial)] + ", ";
        }
        
        theReturn += calculateALeftAndRightInt(leftInt: String(order.postingHeelLiftLeft), rightInt: String(order.postingHeelLiftRight), string: "Heel Lift");
        
        theReturn += calculateALeftAndRightInt(leftInt: String(order.postingRearfootPostingElevatorOtherMmLeft), rightInt: String(order.postingRearfootPostingElevatorOtherMmRight), string: "Rearfoot Posting Elevator (mm)");
        
        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostingElevator4mmLeft, rightBool: order.postingRearfootPostingElevator4mmRight, string: "Rearfoot Posting Elevator 4mm");
        
        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostingElevator8mmLeft, rightBool: order.postingRearfootPostingElevator8mmRight, string: "Rearfoot Posting Elevator 8mm");
        
        
        theReturn += calculateALeftAndRightInt(leftInt: String(order.postingRearfootPostMotionOtherMotionDegreesLeft), rightInt: String(order.postingRearfootPostMotionOtherMotionDegreesRight), string: "Rearfoot Posting Motion (Degrees)");
        
        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostMotion0DegreesMotionLeft, rightBool: order.postingRearfootPostMotion0DegreesMotionRight, string: "Rearfoot Posting Motion 0 Degrees");
        
        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostMotion4DegreesMotionLeft, rightBool: order.postingRearfootPostMotion4DegreesMotionRight, string: "Rearfoot Posting Motion 4 Degrees");
        
        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostOptionsLongPostFlangeLeft, rightBool: order.postingRearfootPostOptionsLongPostFlangeRight, string: "Rearfoot Post Options Long Post");

        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostOptionsShortPostFlangeLeft, rightBool: order.postingRearfootPostOptionsShortPostFlangeRight, string: "Rearfoot Post Options Short Post");

        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostOptionsLateralPostFlangeLeft, rightBool: order.postingRearfootPostOptionsLateralPostFlangeRight, string: "Rearfoot Post Options Lateral Post Flare");

        theReturn += calculateALeftAndRight(leftBool: order.postingRearfootPostOptionsMedialPostFlangeLeft, rightBool: order.postingRearfootPostOptionsMedialPostFlangeRight, string: "Rearfoot Post Options Medial Post Flare");

        theReturn += calculateALeftAndRight(leftBool: order.postingNonCorrectiveForefootPostFullWidthLeft, rightBool: order.postingNonCorrectiveForefootPostFullWidthRight, string: "Non Corrective Forefoot Post Full Width");

        theReturn += calculateALeftAndRight(leftBool: order.postingNonCorrectiveForefootPostMedialCornerLeft, rightBool: order.postingNonCorrectiveForefootPostMedialCornerRight, string: "Non Corrective Forefoot Post Medial Corner");

        theReturn += calculateALeftAndRight(leftBool: order.postingNonCorrectiveForefootPostLateralCornerWidthLeft, rightBool: order.postingNonCorrectiveForefootPostLateralCornerRight, string: "Non Corrective Forefoot Post Lateral Corner");

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;

    }

    func calculateOrthosisSpecificationDescriptionFromOrder() -> String{
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
            if (richieBraceViewController!.afoBlack3mm.isOn) {
                theReturn += "AFO Black 3mm, "
            }
            if (richieBraceViewController!.afoBlack4mm.isOn) {
                theReturn += "AFO Black 4mm, "
            }
            if (richieBraceViewController!.afoBlack5mm.isOn) {
                theReturn += "AFO Black 5mm, "
            }
            if (richieBraceViewController!.afoWhite3mm.isOn) {
                theReturn += "AFO White 3mm, "
            }
            if (richieBraceViewController!.afoFleshTone4mm.isOn) {
                theReturn += "AFO Flesh Tone 4mm, "
            }
            if (richieBraceViewController!.afoBlack5mm.isOn) {
                theReturn += "AFO Black 5mm, "
            }
            if (theReturn.hasSuffix(", ")) {
                theReturn = String(theReturn.dropLast(2));
            }
            return theReturn;
        }

        theReturn += calculateALeftAndRight(leftBool: order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft, rightBool: order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight, string: "Lateral flange");
        
        theReturn += calculateALeftAndRight(leftBool: order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft, rightBool: order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight, string: "Wide arch profile");
        
        theReturn += calculateALeftAndRight(leftBool: order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeLeft, rightBool: order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoeRight, string: "Fit to enclosed shoe");
        
        theReturn += calculateALeftAndRight(leftBool: order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactLeft, rightBool: order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactRight, string: "Thin material at heel contact");
        
        theReturn += calculateALeftAndRight(leftBool: order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadLeft, rightBool: order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadRight, string: "Cut out proximinal to fifth met head");
        
        theReturn += calculateALeftAndRight(leftBool: order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadLeft, rightBool: order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadRight, string: "Cut out proximinal to first met head");
        
        theReturn += anteriorWidthPickerData[orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0)];

        if (orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0) == orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0)) {
            theReturn += ", ";
        } else {
            theReturn += " L, ";
            theReturn += anteriorWidthPickerData[
                orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0)];
            theReturn += " R, ";
        }
        
        
        theReturn += calculateALeftAndRightInt(leftInt: String(order.orthosisSpecificationsOtherMedmmLeft), rightInt: String(order.orthosisSpecificationsOtherMedmmRight), string: "Med(mm)");
        
        
        
        theReturn += calculateALeftAndRightInt(leftInt: String(order.orthosisSpecificationsOtherLatmmLeft), rightInt: String(order.orthosisSpecificationsOtherLatmmRight), string: "Lat(mm)");
        
        
        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func calculateRushOrderDescriptionFromOrder() -> String{
        
        if (richieBraceHasBeenSelected) {
            return "";
        }

        var theReturn = calculateRushOrderDescriptionLine1FromOrder();
        if (theReturn != "") {
            theReturn += ", ";
        }
        
        theReturn += calculateRushOrderDescriptionLine2FromOrder();
        
        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func calculateRushOrderDescriptionLine1FromOrder() -> String{
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
            return theReturn;
        }

        if (order.rushOrder2DayTurnaround) {
            theReturn += "2 Day Turnaround"
        }
        if (order.rushOrderNextDayTurnaround) {
            theReturn += "Next Day Turnaround"
        }
        return theReturn;
    }
    func calculateRushOrderDescriptionLine2FromOrder() -> String{
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
            return theReturn;
        }

        if (order.rushOrderExpressShiping > 0) {
            let theView = self.pickerView(rushOrderExpressShippingPicker, viewForRow: Int(order.rushOrderExpressShiping), forComponent: 0, reusing: nil)
            theReturn += "Express Shipping: "
            theReturn += (theView as! UILabel).text!;
        }
        return theReturn;
    }
    
    func calculateOrthosisMaterialOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
            return theReturn;
        }

        if (order.orthosisMaterialOption != nil) {
            theReturn += order.orthosisMaterialOption! + ", ";
        }
        if (order.orthosisMaterialColor != nil) {
           theReturn += order.orthosisMaterialColor! + ", ";
        }
        

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }

        return theReturn;
    }
    
    func calculateOrderOrthosisType() -> String{
        var theReturn = "";
        
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;

        if (richieBraceHasBeenSelected) {
            if (orthoticsDeviceViewController == nil) {
                return "";
            }
            if (theMOI.orthoticsMaterialPickerSelection == 0) {
                return orthoticsDeviceViewController!.richieBraceLabel0.text!;
            }
            if (theMOI.orthoticsMaterialPickerSelection == 1) {
                return orthoticsDeviceViewController!.richieBraceLabel1.text!;
            }
            if (theMOI.orthoticsMaterialPickerSelection == 2) {
                return orthoticsDeviceViewController!.richieBraceLabel2.text!;
            }

            return "";
        }
        
        let theOriginalOrderName = orthoticMaterialDescriptionMap[Int(theMOI.orthoticsMaterialPickerSelection)];
        
        theReturn += theOriginalOrderName;
        return theReturn;

    }
    
    func calculateOrderDeviceSpecificLanguage() -> String{
        var theReturn = "";
        
        
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        
        
        //medium crepe post here, blake etc
        if (theMOI.orthoticsMaterialPickerSelection == 12) {
            theReturn += "heel cup minimal, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 13) {
            theReturn += "hole cut in heel, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 15) {
            theReturn += "3mm plantar fascia accommodation, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 16) {
            theReturn += "3mm plantar fascia accommodation, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 17) {
            theReturn += "3mm plantar fascia accommodation, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 19) {
            theReturn += "EVA post, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 1) {
            theReturn += "milled polypropylene, "
        }
        
        if (theMOI.orthoticsMaterialPickerSelection == 5) {
            theReturn += "crepe post medium firm, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 6) {
            theReturn += "crepe post medium firm, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 7) {
            theReturn += "crepe post medium firm, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 8) {
            theReturn += "crepe post medium firm, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 18) {
            theReturn += "crepe post medium firm, "
        } else if (theMOI.orthoticsMaterialPickerSelection == 20) {
            theReturn += "crepe post medium firm, "
        }
        
        
        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func calculateCommentsInstructionsOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        theReturn = order.chiefComplaintDiagnosis ?? "";
        
        return theReturn;
    }

    func calculateCommentsInstructionsOrderDescriptionFromOrderForEmail() -> String{
        var theReturn = "";

        if (richieBraceHasBeenSelected) {
            if (richieBraceViewController != nil &&
                richieBraceViewController!.specialInstructions.text != nil &&
                richieBraceViewController!.specialInstructions.text != "") {
                theReturn = "Special Instructions: " + richieBraceViewController!.specialInstructions.text!;
            } else {
                theReturn = "";
            }
        } else {
            if (order.commentsInstructions == nil) {
                theReturn = "";
            } else {
                theReturn = order.commentsInstructions!;
            }
        }
        return theReturn;
    }
    
    func calculatePatientFormForEmail() -> String {
        var theReturn = "";

        theReturn += "Patient: " + order.orderPatient!.lastName! + ", " +
            order.orderPatient!.firstName!;
        theReturn += "\nAge: " +
            String(order.orderPatient!.age);
        theReturn += "\nHeight: " +
            String(order.orderPatient!.height) + "ft, " +
            String(order.orderPatient!.heightInches) + " in ";
        theReturn += "\nWeight: " +
            String(order.orderPatient!.weight) + " (lbs.)";
        theReturn += "\nShoe Size: " +
            String(order.orderPatient!.shoeSize);
        theReturn += "\nMedical Record #: " +
            (order.orderPatient!.medicalRecordNumber ?? "");
         theReturn += "\nShoe Type: " +
                order.orderPatient!.shoeType!;
        theReturn += "\n\n";

        return theReturn;
    }
    
    func calculatePractitionerFormForEmail() -> String {
        var theReturn = "";
        
        theReturn += "Practitioner: " + order.orderPractitioner!.lastName! + ", " + order.orderPractitioner!.firstName!;
        theReturn += "\nPhone: " +
            order.orderPractitioner!.phone!;
        theReturn += "\nEmail: " +
            order.orderPractitioner!.email!;
        theReturn += "\nShipping Address: \n";
        theReturn += order.orderPractitioner!.shippingAddressFacilityName! + "\n";
        theReturn += order.orderPractitioner!.shippingAddress1! + " ";
        theReturn += (order.orderPractitioner!.shippingAddress2 ?? "") + " ";
        theReturn += order.orderPractitioner!.shippingAddressCity! + ", ";
        theReturn += order.orderPractitioner!.shippingAddressState! + ", ";
        theReturn += order.orderPractitioner!.shippingAddressZip! + " ";
        theReturn += order.orderPractitioner!.shippingAddressCountry!
        ;
        theReturn += "\nBilling Address: \n";
        theReturn += order.orderPractitioner!.billingAddressFacilityName! + "\n";
        theReturn += order.orderPractitioner!.billingAddress1! + " ";
        theReturn += (order.orderPractitioner!.billingAddress2 ?? "") + " ";
        theReturn += order.orderPractitioner!.billingAddressCity! + ", ";
        theReturn += order.orderPractitioner!.billingAddressState! + ", ";
        theReturn += order.orderPractitioner!.billingAddressZip! + " ";
        theReturn += order.orderPractitioner!.billingAddressCountry!;

        theReturn += "\n\n";
        
        return theReturn;
    }
    
    func calculateTopCoversAndExtensionsOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        
        if (richieBraceHasBeenSelected) {
            
            if (richieBraceViewController == nil) {
                return theReturn;
            }
            
            if (richieBraceViewController!.addPoronUnderExtension.isOn) {
                theReturn += "Add Poron under extension, "
            }
            
            let selectedTopCoverLength = richieBraceViewController!.topCoverLengthPickerView.selectedRow(inComponent: 0);
            let topCoverLength = richieBraceViewController!.richieBraceTopCoverLengthViewValues[selectedTopCoverLength];
            theReturn += "Top Cover Length: " + topCoverLength + ", ";
            
            let selectedTopCoverMaterial = richieBraceViewController!.topCoverMaterialPickerView.selectedRow(inComponent: 0);
            let topCoverMaterial = richieBraceViewController!.richieBraceTopCoverMaterialPickerViewValues[selectedTopCoverMaterial];
            theReturn += "Top Cover Material: " + topCoverMaterial + ", ";

            if (theReturn.hasSuffix(", ")) {
                theReturn = String(theReturn.dropLast(2));
            }
            return theReturn;
        }
        
        
        if (topCoversViewController == nil) {
            return theReturn;
        }
        
        if (order.topCoversAndExtensionsBottomCoverMaterialVinylBlack) {
            theReturn += "Top Cover Material Vinyl Black, ";
        }
        if (order.topCoversAndExtensionsBottomCoverMaterialVinylBronze) {
            theReturn += "Top Cover Material Vinyl Bronze, ";
        }
        if (order.topCoversAndExtensionsBottomCoverMaterialVinylForest) {
            theReturn += "Top Cover Material Vinyl Forest, ";
        }
        if (order.topCoversAndExtensionsBottomCoverMaterialLeatherBrown) {
            theReturn += "Top Cover Material Leather Brown, ";
        }
        if (order.topCoversAndExtensionsBottomCoverMaterialLeatherBlack) {
            theReturn += "Top Cover Material Leather Black, ";
        }
        
        // lowercase = top cover
        if (order.topCoversAndExtensionsBottomCoverMaterialEva116) {
            theReturn += "Top Cover Material EVA 1/16\", ";
        }
        

        if (order.topCoversAndExtensionsBottomCoverMaterialEva18) {
            theReturn += "Top Cover Material EVA 1/8\", ";
        }
        if (order.topCoversAndExtensionsBottomCoverMaterialNcn18) {
            theReturn += "Top Cover Material NCN 1/8\", ";
        }
        if (order.topCoversAndExtensionsBottomCoverMaterialNcn116) {
            theReturn += "Top Cover Material NCN 1/16\", ";
        }
        
        if (order.topCoversAndExtensionsBottomCoverMaterialDiabetic) {
            theReturn += "Top Cover Material Diabetic, ";
        }
        
        let theLengthIndex = topCoversViewController!.topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0)
        if (theLengthIndex > 0) {
            theReturn += "Length: " + topCoversViewController!.topCoversAndExtensionsTopCoverLengthPickerData[theLengthIndex] + ", ";
        }
        else {
            theReturn += "No top cover, ";
        }
        
        // uppercase = bottom cover
        if (order.topCoversAndExtensionsBottomCoverMaterialEVA116) {
            theReturn += "Bottom Cover Material EVA 1/16\", ";
        }
        

        

        


//        let theMaterialIndex = topCoversAndExtensionsTopCoverMaterialPicker.selectedRow(inComponent: 0)
//        if (theMaterialIndex > 0) {
//            theReturn += "Material: " + topCoversAndExtensionsTopCoverMaterialPickerData[theMaterialIndex] + ", ";
//        }

        let theExtensionThicknessIndex = topCoversViewController!.topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0)
        if (theExtensionThicknessIndex > 0) {
            theReturn += "Extension Thickness: " + topCoversViewController!.topCoversAndExtensionsForefootExtensionThicknessPickerData[theExtensionThicknessIndex] + ", ";
        }

        let theExtensionMaterialIndex = topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0)
        if (theExtensionMaterialIndex > 0) {
            theReturn += "Extension Material: " + topCoversViewController!.topCoversAndExtensionsForefootExtensionMaterialPickerData[theExtensionMaterialIndex] + ", ";
        }
        
        let theExtensionExtensionLengthIndex = topCoversViewController!.topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0)
        if (theExtensionExtensionLengthIndex > 0) {
            theReturn += "Extension Length: " + topCoversViewController!.topCoversAndExtensionsForefootExtensionExtensionLengthPickerData[theExtensionExtensionLengthIndex] + ", ";
        }
        
        if (order.topCoversAndExtensionsBottomCoverForefootReinforcement) {
            theReturn += "Forefoot Reinforcement, ";
        }
        if (order.topCoversAndExtensionsBottomCover116Eva) {
            theReturn += "Bottom Cover 1/16\" EVA, ";
        }
        
        if (order.topCoversAndExtensionsPoronUnderTopcover116) {
            theReturn += "Poron under topcover 1/16, ";
        }
        if (order.topCoversAndExtensionsPoronUnderTopcover18) {
            theReturn += "Poron under topcover 1/8, ";
        }
        
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsMortonsExtensionLeft, rightBool: order.accommodationsMortonsExtensionRight, string: "Mortons Extension");

        theReturn += calculateALeftAndRight(leftBool: order.accommodationsReverseMortonsExtensionLeft, rightBool: order.accommodationsReverseMortonsExtensionRight, string: "Reverse Mortons Extension");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsMetatarsalPadLeft, rightBool: order.accommodationsMetatarsalPadRight, string: "Metatarsal Pad");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsMetatarsalBarLeft, rightBool: order.accommodationsMetatarsalBarRight, string: "Metatarsal Bar");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsHeelPadLEft, rightBool: order.accommodationsHeelPadRight, string: "Heel Pad");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsHorseshoePadLeft, rightBool: order.accommodationsHorseshoePadRight, string: "Horseshoe Pad");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsDancersPadLeft, rightBool: order.accommodationsDancersPadRight, string: "Dancers Pad");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsKineticWedgeLeft, rightBool: order.accommodationsKineticWedgeRight, string: "Kinetic Wedge");
        
        if (order.accommodationsMetHeadAccommodationsLeft > 0) {
            theReturn += "Met head accommodations Left:  "

            if (order.accommodationsMetHeadAccommodationsLeft & 0x0001 == 1) {
                theReturn += " 1, "
            }
            if (order.accommodationsMetHeadAccommodationsLeft & 0x0002 == 2) {
                theReturn += " 2, "
            }
            if (order.accommodationsMetHeadAccommodationsLeft & 0x0004 == 4) {
                theReturn += " 3, "
            }
            if (order.accommodationsMetHeadAccommodationsLeft & 0x0008 == 8) {
                theReturn += " 4, "
            }
            if (order.accommodationsMetHeadAccommodationsLeft & 0x0010 == 16) {
                theReturn += " 5, "
            }
        }
        
        if (order.accommodationsMetHeadAccommodationsRight > 0) {
            theReturn += "Met head accommodations Right:  "
            
            if (order.accommodationsMetHeadAccommodationsRight & 0x0001 == 1) {
                theReturn += " 1, "
            }
            if (order.accommodationsMetHeadAccommodationsRight & 0x0002 == 2) {
                theReturn += " 2, "
            }
            if (order.accommodationsMetHeadAccommodationsRight & 0x0004 == 4) {
                theReturn += " 3, "
            }
            if (order.accommodationsMetHeadAccommodationsRight & 0x0008 == 8) {
                theReturn += " 4, "
            }
            if (order.accommodationsMetHeadAccommodationsRight & 0x0010 == 16) {
                theReturn += " 5, "
            }
        }
        
        
        if (order.accommodationsNeuromaPadLeft > 0) {
            theReturn += "Neuroma Pad accommodations Left:  "
            
            if (order.accommodationsNeuromaPadLeft & 0x0001 == 1) {
                theReturn += " 1, "
            }
            if (order.accommodationsNeuromaPadLeft & 0x0002 == 2) {
                theReturn += " 2, "
            }
            if (order.accommodationsNeuromaPadLeft & 0x0004 == 4) {
                theReturn += " 3, "
            }
            if (order.accommodationsNeuromaPadLeft & 0x0008 == 8) {
                theReturn += " 4, "
            }
        }
        
        if (order.accommodationsNeuromaPadRight > 0) {
            theReturn += "Neuroma Pad accommodations Right:  "
            
            if (order.accommodationsNeuromaPadRight & 0x0001 == 1) {
                theReturn += " 1, "
            }
            if (order.accommodationsNeuromaPadRight & 0x0002 == 2) {
                theReturn += " 2, "
            }
            if (order.accommodationsNeuromaPadRight & 0x0004 == 4) {
                theReturn += " 3, "
            }
            if (order.accommodationsNeuromaPadRight & 0x0008 == 8) {
                theReturn += " 4, "
            }
        }
        
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsEvaArchFillLeft, rightBool: order.accommodationsEvaArchFillRight, string: "EVA Bottom Fill");
        
        theReturn += calculateALeftAndRight(leftBool: order.accommodationsMedialArchReinforceLeft, rightBool: order.accommodationsMedialArchReinforceRight, string: "Medial Arch Reinforce");
        
        
        if (order.accommodationsEva) {
            theReturn += "EVA, ";
        }
        if (order.accommodationsKorex) {
            theReturn += "Korex, ";
        }
        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (textField == practitionerBillingAddress1) {
            if (practitionerBillingAddress1.text == "*Address 1") {
                practitionerBillingAddress1.text = "";
                practitionerBillingAddress1.textColor = .black;
            }
        } else if (textField == practitionerBillingAddress2) {
            if (practitionerBillingAddress2.text == "Address 2") {
                practitionerBillingAddress2.text = "";
                practitionerBillingAddress2.textColor = .black;
            }
        } else if (textField == practitionerBillingAddressCity) {
            if (practitionerBillingAddressCity.text == "*City") {
                practitionerBillingAddressCity.text = "";
                practitionerBillingAddressCity.textColor = .black;
            }
        } else if (textField == practitionerBillingAddressState) {
            if (practitionerBillingAddressState.text == "*State") {
                practitionerBillingAddressState.text = "";
                practitionerBillingAddressState.textColor = .black;
            }
        } else if (textField == practitionerBillingAddressCountry) {
            if (practitionerBillingAddressCountry.text == "Country") {
                practitionerBillingAddressCountry.text = "";
                practitionerBillingAddressCountry.textColor = .black;
            }
        } else if (textField == practitionerBillingAddressZip) {
            if (practitionerBillingAddressZip.text == "*Zip") {
                practitionerBillingAddressZip.text = "";
                practitionerBillingAddressZip.textColor = .black;
            }
        } else if (textField == practitionerBillingAddressFacilityName) {
            if (practitionerBillingAddressFacilityName.text == "Business or Facility Name") {
                practitionerBillingAddressFacilityName.text = "";
                practitionerBillingAddressFacilityName.textColor = .black;
            }
        } else if (textField == practitionerShippingAddress1) {
            if (practitionerShippingAddress1.text == "*Address 1") {
                practitionerShippingAddress1.text = "";
                practitionerShippingAddress1.textColor = .black;
            }
        } else if (textField == practitionerShippingAddress2) {
            if (practitionerShippingAddress2.text == "Address 2") {
                practitionerShippingAddress2.text = "";
                practitionerShippingAddress2.textColor = .black;
            }
        } else if (textField == practitionerShippingAddressCity) {
            if (practitionerShippingAddressCity.text == "*City") {
                practitionerShippingAddressCity.text = "";
                practitionerShippingAddressCity.textColor = .black;
            }
        } else if (textField == practitionerShippingAddressState) {
            if (practitionerShippingAddressState.text == "*State") {
                practitionerShippingAddressState.text = "";
                practitionerShippingAddressState.textColor = .black;
            }
        } else if (textField == practitionerShippingAddressCountry) {
            if (practitionerShippingAddressCountry.text == "Country") {
                practitionerShippingAddressCountry.text = "";
                practitionerShippingAddressCountry.textColor = .black;
            }
        } else if (textField == practitionerShippingAddressZip) {
            if (practitionerShippingAddressZip.text == "*Zip") {
                practitionerShippingAddressZip.text = "";
                practitionerShippingAddressZip.textColor = .black;
            }
        } else if (textField == practitionerShippingAddressFacilityName) {
            if (practitionerShippingAddressFacilityName.text == "Business or Facility Name") {
                practitionerShippingAddressFacilityName.text = "";
                practitionerShippingAddressFacilityName.textColor = .black;
            }
        } else if (textField == practitionerPhoneInput) {
            if (practitionerPhoneInput.text == "*Phone") {
                practitionerPhoneInput.text = "";
                practitionerPhoneInput.textColor = .black;
            }
        } else if (textField == practitionerNameInput) {
            if (practitionerNameInput.text == "*First Name") {
                practitionerNameInput.text = "";
                practitionerNameInput.textColor = .black;
            }
        } else if (textField == practitionerLastNameInput) {
            if (practitionerLastNameInput.text == "*Last Name") {
                practitionerLastNameInput.text = "";
                practitionerLastNameInput.textColor = .black;
            }
        } else if (textField == practitionerEmailInput) {
            if (practitionerEmailInput.text == "*Email") {
                practitionerEmailInput.text = "";
                practitionerEmailInput.textColor = .black;
            }
        }
        modifyKeyboard();
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField,
                                         reason: UITextField.DidEndEditingReason) {
        if (textField == correctionsAndModificationsCastOrientationInvertedLeft && !(correctionsAndModificationsCastOrientationInvertedLeft.text?.isEmpty ?? true)) {
            correctionsAndModificationsCastOrientationEvertedLeft.text = "";
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = false;
        }
        else if (textField == correctionsAndModificationsCastOrientationEvertedLeft && !(correctionsAndModificationsCastOrientationEvertedLeft.text?.isEmpty ?? true)) {
            correctionsAndModificationsCastOrientationInvertedLeft.text = "";
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = false;
        }
        else if (textField == orthosisSpecificationsOtherMedmmLeft && !(orthosisSpecificationsOtherMedmmLeft.text?.isEmpty ?? true)) {
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(0, inComponent: 0, animated: true)
        }
        else if (textField == orthosisSpecificationsOtherLatmmLeft && !(orthosisSpecificationsOtherLatmmLeft.text?.isEmpty ?? true)) {
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(0, inComponent: 0, animated: true)
        }
        else if (textField == orthosisSpecificationsOtherMedmmRight && !(orthosisSpecificationsOtherMedmmRight.text?.isEmpty ?? true)) {
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(0, inComponent: 0, animated: true)
        }
        else if (textField == orthosisSpecificationsOtherLatmmRight && !(orthosisSpecificationsOtherLatmmRight.text?.isEmpty ?? true)) {
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(0, inComponent: 0, animated: true)
        }
        else if (textField == correctionsAndModificationsCastOrientationInvertedRight && !(correctionsAndModificationsCastOrientationInvertedRight.text?.isEmpty ?? true)) {
            correctionsAndModificationsCastOrientationEvertedRight.text = "";
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = false;
        }
        else if (textField == correctionsAndModificationsCastOrientationEvertedRight && !(correctionsAndModificationsCastOrientationEvertedRight.text?.isEmpty ?? true)) {
            correctionsAndModificationsCastOrientationInvertedRight.text = "";
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = false;
        }
        else if (textField == postingRearfootPostMotionOtherDegreesLeft && !(postingRearfootPostMotionOtherDegreesLeft.text?.isEmpty ?? true)) {
                postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn = false;
                postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn = false;
        }
        else if (textField == postingRearfootPostMotionOtherDegreesRight && !(postingRearfootPostMotionOtherDegreesRight.text?.isEmpty ?? true)) {
            postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn = false;
            postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = false;
        }
        else if (textField == postingRearfootPostingElevatorOthermmLeft && !(postingRearfootPostingElevatorOthermmLeft.text?.isEmpty ?? true)) {
            postingRearfootPostingElevator4mmLeftUISwitch.isOn = false;
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = false;
        }
        else if (textField == postingRearfootPostingElevatorOthermmRight && !(postingRearfootPostingElevatorOthermmRight.text?.isEmpty ?? true)) {
            postingRearfootPostingElevator4mmRightUISwitch.isOn = false;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = false;
        } else if (textField == practitionerNameInput) {
            setValuesBasedOnPractitionerPageValid();
            if (practitionerNameInput.text!.isEmpty) {
                practitionerNameInput.text = "*First Name";
                practitionerNameInput.textColor = .gray;
            }
        } else if (textField == practitionerLastNameInput) {
            setValuesBasedOnPractitionerPageValid();
            if (practitionerLastNameInput.text!.isEmpty) {
                practitionerLastNameInput.text = "*Last Name";
                practitionerLastNameInput.textColor = .gray;
            }
        } else if (textField == practitionerPhoneInput) {
            setValuesBasedOnPractitionerPageValid();
            if (practitionerPhoneInput.text!.isEmpty) {
                practitionerPhoneInput.text = "*Phone";
                practitionerPhoneInput.textColor = .gray;
            }
        } else if (textField == practitionerEmailInput) {
            setValuesBasedOnPractitionerPageValid();
            if (practitionerEmailInput.text!.isEmpty) {
                practitionerEmailInput.text = "*Email";
                practitionerEmailInput.textColor = .gray;
            }
        } else if (textField == practitionerShippingAddress1) {
            if (practitionerShippingAddress1.text!.isEmpty) {
                practitionerShippingAddress1.text = "*Address";
                practitionerShippingAddress1.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddress1.text = practitionerShippingAddress1.text!;
                 practitionerBillingAddress1.textColor = practitionerBillingAddress1.text == "*Address 1" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddress2) {
            if (practitionerShippingAddress2.text!.isEmpty) {
                practitionerShippingAddress2.text = "Address 2";
                practitionerShippingAddress2.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddress2.text = practitionerShippingAddress2.text!;
                practitionerBillingAddress2.textColor = practitionerBillingAddress2.text == "Address 2" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddressCity) {
            if (practitionerShippingAddressCity.text!.isEmpty) {
                practitionerShippingAddressCity.text = "*City";
                practitionerShippingAddressCity.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressCity.text = practitionerShippingAddressCity.text!;
                practitionerBillingAddressCity.textColor = practitionerBillingAddressCity.text == "*City" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddressState) {
            if (practitionerShippingAddressState.text!.isEmpty) {
                practitionerShippingAddressState.text = "*State";
                practitionerShippingAddressState.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressState.text = practitionerShippingAddressState.text!;
                practitionerBillingAddressState.textColor = practitionerBillingAddressState.text == "*State" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddressZip) {
            if (practitionerShippingAddressZip.text!.isEmpty) {
                practitionerShippingAddressZip.text = "*Zip";
                practitionerShippingAddressZip.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressZip.text = practitionerShippingAddressZip.text!;
                practitionerBillingAddressZip.textColor = practitionerBillingAddressZip.text == "*Zip" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddressCountry) {
            if (practitionerShippingAddressCountry.text!.isEmpty) {
                practitionerShippingAddressCountry.text = "Country";
                practitionerShippingAddressCountry.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressCountry.text = practitionerShippingAddressCountry.text!;
                practitionerBillingAddressCountry.textColor = practitionerBillingAddressCountry.text == "Country" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddressFacilityName) {
            if (practitionerShippingAddressFacilityName.text!.isEmpty) {
                practitionerShippingAddressFacilityName.text = "Business or Facility Name";
                practitionerShippingAddressFacilityName.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressFacilityName.text = practitionerShippingAddressFacilityName.text!;
                practitionerBillingAddressFacilityName.textColor = practitionerBillingAddressFacilityName.text == "Business or Facility Name" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();

        } else if (textField == practitionerBillingAddress1) {
            if (practitionerBillingAddress1.text!.isEmpty) {
                practitionerBillingAddress1.text = "*Address 1";
                practitionerBillingAddress1.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
               !(practitionerShippingAddress1.text == practitionerBillingAddress1.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddress2) {
            if (practitionerBillingAddress2.text!.isEmpty) {
                practitionerBillingAddress2.text = "Address 2";
                practitionerBillingAddress2.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddress2.text == practitionerBillingAddress2.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddressCity) {
            if (practitionerBillingAddressCity.text!.isEmpty) {
                practitionerBillingAddressCity.text = "*City";
                practitionerBillingAddressCity.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddressCity.text == practitionerBillingAddressCity.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddressState) {
            if (practitionerBillingAddressState.text!.isEmpty) {
                practitionerBillingAddressState.text = "*State";
                practitionerBillingAddressState.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddressState.text == practitionerBillingAddressState.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddressZip) {
            if (practitionerBillingAddressZip.text!.isEmpty) {
                practitionerBillingAddressZip.text = "*Zip";
                practitionerBillingAddressZip.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddressZip.text == practitionerBillingAddressZip.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddressCountry) {
            if (practitionerBillingAddressCountry.text!.isEmpty) {
                practitionerBillingAddressCountry.text = "Country";
                practitionerBillingAddressCountry.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddressCountry.text == practitionerBillingAddressCountry.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddressFacilityName) {
            if (practitionerBillingAddressFacilityName.text!.isEmpty) {
                practitionerBillingAddressFacilityName.text = "Business or Facility Name";
                practitionerBillingAddressFacilityName.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddressFacilityName.text == practitionerBillingAddressFacilityName.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();

        } else if (textField == patientNameInput) {
            setValuesBasedOnPatientPageValid();
            //todo add scan button here
        } else if (textField == patientLastNameInput) {
            setValuesBasedOnPatientPageValid();
        }
        changeValuesBasedOnChangedInput();
        
    }

    func searchOrders(inSearchString: String, inComplete: Bool) -> [Order] {
        var theReturn = [Order]();
        var theTemp = [Order]();
        let littleStrings = inSearchString.split(separator: " ")
        theReturn.append(contentsOf: orders);
        for searchString in littleStrings {
            for order in theReturn {
                if (order.orderPractitioner?.firstName?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPractitioner?.lastName?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPractitioner?.billingAddress1?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPractitioner?.shippingAddress1?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPractitioner?.billingAddressFacilityName?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPractitioner?.shippingAddressFacilityName?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPatient?.firstName?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPatient?.lastName?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.orderPatient?.medicalRecordNumber?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.commentsInstructions?.contains(searchString) ?? false) {
                    theTemp.append(order)
                } else if (order.chiefComplaintDiagnosis?.contains(searchString) ?? false) {
                    theTemp.append(order)
                }
                theReturn.removeAll();
                theReturn.append(contentsOf: theTemp);
                theTemp.removeAll();
            }
            
        }

        return theReturn;
    }
    
    func changeValuesBasedOnChangedInput() {
        changeValuesBasedOnChangedInput(force: false)
    }
    func changeValuesBasedOnChangedInput(force: Bool) {
        orthoticsPrescriptionViewController?.orthosisSaveToMyDevicesButton.isEnabled = true;
        if (escanFormValid()) {
            eScanFinishedUIImageView.image = UIImage(named: "checked.png");
        }
        else {
            eScanFinishedUIImageView.image = UIImage(named: "unchecked.png");
        }
        
        orthoticsDeviceViewController?.refreshMyDevices(); 
        
        if (screenViewing == newPractitionerPageIndex || force) {
            setValuesBasedOnPractitionerPageValid();
            refreshPractitionerNameLabel()
            patientNameLabel.text = patientNameInput.text! + " " + patientLastNameInput.text!;
            
        }
        if (screenViewing == patientManagementPageIndex || force) {
            setValuesBasedOnPatientPageValid();
        }
        
        if (screenViewing == orthoticsFormPageIndex ||
            screenViewing == orthoticsSpecificationsFormPageIndex ||
            screenViewing == orthoticsDeviceFormPageIndex ||
            screenViewing == orthoticsMaterialFormPageIndex ||
            screenViewing == orthoticsCorrectionsFormPageIndex ||
            screenViewing == orthoticsAccommodationsAndAdditionsFormPageIndex ||
            screenViewing == orthoticsRushOrderFormPageIndex ||
            screenViewing == orthoticsTopCoversAndExtensionsFormPageIndex ||
            screenViewing == orthoticsPostingFormPageIndex ||
            screenViewing == richieBraceFormPageIndex ||
            screenViewing == orthoticsChiefComplaintFormPageIndex
            || force) {
            updateImagesForValidOrthoticsForm()
        }
        
        if (screenViewing == orthoticsDeviceFormPageIndex || force) {
            if (orthoticDeviceSelected > -1) {
                if (orthoticDeviceSelected < 24) {
                    orthoticsPrescriptionViewController?.orthosisHeadingLabel.text =  orthoticMaterialDescriptionMap[orthoticDeviceSelected];
                } else {
                    orthoticsPrescriptionViewController?.orthosisHeadingLabel.text = order.deviceName;
                }
            }
        }

        var needToUpdateScreen = false;
        if (screenViewing == orthoticsCorrectionsFormPageIndex || force) {
            readCorrectionsAndModificationsForm();
            needToUpdateScreen = true;
        }
        if (screenViewing == orthoticsSpecificationsFormPageIndex || force) {
            readOrthosisSpecificationForm();
            needToUpdateScreen = true;
        }
        if (screenViewing == orthoticsPostingFormPageIndex || force) {
            readPostingForm();
            needToUpdateScreen = true;
        }
        if (screenViewing == orthoticsTopCoversAndExtensionsFormPageIndex || force) {
            readTopCoversAndExtensionsForm();
            needToUpdateScreen = true;

        } else if (screenViewing == orthoticsRushOrderFormPageIndex || force) {
            readRushOrderForm();
            needToUpdateScreen = true;

        } else if (screenViewing == orthoticsChiefComplaintFormPageIndex || force) {
            readChiefComplaintDiagnosisForm();
            needToUpdateScreen = true;

         }

        if (needToUpdateScreen || force) {
            updateOrthosisScreenFromModel()
        }
        
        if (screenViewing == scanFormPageIndex || force) {
            if (reorderUISwitch.isOn) {
                eScanNameLabel.text = "Reorder"
            }
            else {
                eScanNameLabel.text = "Not Taken"
            }
        }
        
        let isEverythingValid = everythingValid();
        submitFormButton.isEnabled = isEverythingValid;
        submitFinishedUIImageView.image = isEverythingValid ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        submitFormButton.isEnabled = isEverythingValid;
        submitEmailButton.isEnabled = isEverythingValid;
        
        topCoversViewController?.changeBasedOnValues();
        
        readAllForms();
        updateOrthosisScreenFromModel();
    }
    
    func refreshPractitionerNameLabel() {
        let firstName = practitionerNameInput.text! == "*First Name" ? "" : practitionerNameInput.text!
        let lastName = practitionerLastNameInput.text! == "*Last Name" ? "" : practitionerLastNameInput.text!
        practitionerNameLabel.text = firstName + " " + lastName;
    }
    
    @objc func switchChanged(mySwitch: UISwitch) {
        if (mySwitch == newPractitionerSameAsBillingAddressUiSwitch) {
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddress1.text = practitionerShippingAddress1.text;
                practitionerBillingAddress2.text = practitionerShippingAddress2.text;
                practitionerBillingAddressCity.text = practitionerShippingAddressCity.text;
                practitionerBillingAddressState.text = practitionerShippingAddressState.text;
                practitionerBillingAddressZip.text = practitionerShippingAddressZip.text;
                practitionerBillingAddressCountry.text = practitionerShippingAddressCountry.text;
                practitionerBillingAddressFacilityName.text = practitionerShippingAddressFacilityName.text;
                
                practitionerBillingAddress1.textColor = practitionerBillingAddress1.text == "*Address 1" ? .gray : .black
                practitionerBillingAddress2.textColor = practitionerBillingAddress2.text == "Address 2" ? .gray : .black
                practitionerBillingAddressCity.textColor = practitionerBillingAddressCity.text == "*City" ? .gray : .black
                practitionerBillingAddressState.textColor = practitionerBillingAddressState.text == "*State" ? .gray : .black
                practitionerBillingAddressZip.textColor = practitionerBillingAddressZip.text == "*Zip" ? .gray : .black
                practitionerBillingAddressCountry.textColor = practitionerBillingAddressCountry.text == "Country" ? .gray : .black
                practitionerBillingAddressFacilityName.textColor = practitionerBillingAddressFacilityName.text == "Business or Facility Name" ? .gray : .black

                setValuesBasedOnPractitionerPageValid();
            }

        }
        
        
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func CameraAction(sender: UIButton) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            selectImageFrom(.photoLibrary)
            return
        }
        selectImageFrom(.camera)
        
//        imagePicker = UIImagePickerController()
//
//        imagePicker.delegate = self;
//        imagePicker.sourceType = .camera
//        imagePicker.allowsEditing = true
//        self.present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: AnyObject) {
        guard let selectedImage = imageTake.image else {
            print("Image not found!")
            return
        }
        UIImageWriteToSavedPhotosAlbum(selectedImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            showAlertWith(title: "Save error", message: error.localizedDescription)
        } else {
            showAlertWith(title: "Saved!", message: "Your image has been saved to your photos.")
        }
    }
    
    func showAlertWith(title: String, message: String){
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func selectImageFrom(_ source: ImageSource){
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        switch source {
        case .camera:
            imagePicker.sourceType = .camera
        case .photoLibrary:
            imagePicker.sourceType = .photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    

    
    @IBAction func ScanLeftFoot(sender: UIButton) {
        amScanningLeftFoot = true;
        changePageTo(pageTo: escanningPageIndex);

    }

    @IBAction func ScanRightFoot(sender: UIButton) {
        amScanningLeftFoot = false;
        changePageTo(pageTo: escanningPageIndex);
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        picker.dismiss(animated: true, completion: nil)
        
        //Save image
        let img = UIImage()
        let data = img.pngData()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newFootPhoto = FootPhoto.init(entity: NSEntityDescription.entity(forEntityName: "FootPhoto", in:context)!, insertInto: context);
        newFootPhoto.photoCreateDateTime = Date();
        newFootPhoto.photoData = data;
        
        do {
            try context.save();
            photos.append(newFootPhoto);
            appDelegate.saveContext();
        } catch let error as NSError {
            //TODO Cannot save, fail startup
            print("Could not save. \(error), \(error.userInfo)")
        }

        viewDidLoad()
        
        
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillIncreasedLeftUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillStandardLeftUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillDecreasedLeftUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillMinimalLeftUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillMinimalLeftUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillIncreasedLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillStandardLeftUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillDecreasedLeftUISwitch.isOn = false;
        }
    }

    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillIncreasedRightUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillStandardRightUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillDecreasedRightUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickCorrectionsAndModificationsMedialArchFillMinimalRightUISwitch(sender: UIButton) {
        if (correctionsAndModificationsMedialArchFillMinimalRightUISwitch.isOn) {
            correctionsAndModificationsMedialArchFillIncreasedRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillStandardRightUISwitch.isOn = false;
            correctionsAndModificationsMedialArchFillDecreasedRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingRearfootPostMotion0DegreesMotionLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn) {
            postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesLeft.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }

    @IBAction func clickPostingRearfootPostMotion4DegreesMotionLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn) {
            postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesLeft.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }

    @IBAction func clickPostingRearfootPostMotion0DegreesMotionRightUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn) {
            postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesRight.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickPostingRearfootPostMotion4DegreesMotionRightUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn) {
            postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesRight.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }
    
    
    @IBAction func clickPostingRearfootPostingElevator4mmLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator4mmLeftUISwitch.isOn) {
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmLeft.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickPostingRearfootPostingElevator8mmLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator8mmLeftUISwitch.isOn) {
            postingRearfootPostingElevator4mmLeftUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmLeft.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickPostingRearfootPostingElevator4mmRightUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator4mmRightUISwitch.isOn) {
            postingRearfootPostingElevator8mmRightUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmRight.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickPostingRearfootPostingElevator8mmRightUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator8mmRightUISwitch.isOn) {
            postingRearfootPostingElevator4mmRightUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmRight.text = "";
        }
        
        changeValuesBasedOnChangedInput();
    }
    
    @IBAction func clickPostingRearfootPostOptionsLongPostFlangeLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isOn) {
            postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingRearfootPostOptionsLongPostFlangeRightUISwitch(sender: UIButton) {
        if (postingRearfootPostOptionsLongPostFlangeRightUISwitch.isOn) {
            postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingRearfootPostOptionsShortPostFlangeLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostOptionsShortPostFlangeLeftUISwitch.isOn) {
            postingRearfootPostOptionsLongPostFlangeLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingRearfootPostOptionsShortPostFlangeRightUISwitch(sender: UIButton) {
        if (postingRearfootPostOptionsShortPostFlangeRightUISwitch.isOn) {
            postingRearfootPostOptionsLongPostFlangeRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingNonCorrectiveForefootPostFullWidthLeftUISwitch(sender: UIButton) {
        if (postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn) {
            postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn = false;
            postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingNonCorrectiveForefootPostMedialCornerLeftUISwitch(sender: UIButton) {
        if (postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn) {
            postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn = false;
            postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch(sender: UIButton) {
        if (postingNonCorrectiveForefootPostLateralCornerWidthLeftUISwitch.isOn) {
            postingNonCorrectiveForefootPostFullWidthLeftUISwitch.isOn = false;
            postingNonCorrectiveForefootPostMedialCornerLeftUISwitch.isOn = false;
        }
    }

    @IBAction func clickPostingNonCorrectiveForefootPostFullWidthRightUISwitch(sender: UIButton) {
        if (postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn) {
            postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn = false;
            postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingNonCorrectiveForefootPostMedialCornerRightUISwitch(sender: UIButton) {
        if (postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn) {
            postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn = false;
            postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn = false;
        }
    }
    
    @IBAction func clickPostingNonCorrectiveForefootPostLateralCornerWidthRightUISwitch(sender: UIButton) {
        if (postingNonCorrectiveForefootPostLateralCornerRightUISwitch.isOn) {
            postingNonCorrectiveForefootPostFullWidthRightUISwitch.isOn = false;
            postingNonCorrectiveForefootPostMedialCornerRightUISwitch.isOn = false;
        }
    }
    

    
    func imageFromPixels(_ pixels : UnsafeMutablePointer<UInt8>, width: Int, height: Int) -> UIImage? {
        let colorSpace = CGColorSpaceCreateDeviceRGB();
        let bitmapInfo = CGBitmapInfo.byteOrder32Big.union(CGBitmapInfo(rawValue: CGImageAlphaInfo.noneSkipLast.rawValue))
        
        //Source of data for bitmap
        let provider = CGDataProvider(data: Data(bytes: UnsafePointer<UInt8>(pixels), count: width*height*4) as CFData)
        
        let image = CGImage(
            width: width,
            height: height,
            bitsPerComponent: 8,
            bitsPerPixel: 8 * 4,
            bytesPerRow: width * 4,
            space: colorSpace,       //Quartz color space
            bitmapInfo: bitmapInfo,
            provider: provider!,
            decode: nil,
            shouldInterpolate: false,
            intent: CGColorRenderingIntent.defaultIntent);
        
        return UIImage(cgImage: image!)
    }
    
    func registerForKeyboardNotifications(){
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }

    @objc func keyboardWillShow(_ notification: Notification) {
        keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue;
        modifyKeyboard();
    }
    
    func modifyKeyboard() {
        if (keyboardFrame == nil) {
            return;
        }
        let keyboardRectangle = keyboardFrame!.cgRectValue
        let keyboardHeight = keyboardRectangle.height
        
        keyboardMovement = 0;
        if patientShoeSizeInput.isEditing{
            keyboardMovement = -0.7;
        } else if patientMedicalRecordNumberInput.isEditing {
            keyboardMovement = -0.3;
        } else if practitionerShippingAddress1.isEditing {
            keyboardMovement = -0.2;
        } else if practitionerShippingAddress2.isEditing {
            keyboardMovement = -0.2;
        } else if practitionerShippingAddressCity.isEditing {
            keyboardMovement = -0.2;
        } else if practitionerShippingAddressState.isEditing {
            keyboardMovement = -0.2;
        } else if practitionerShippingAddressZip.isEditing {
            keyboardMovement = -0.2;
        } else if practitionerShippingAddressCountry.isEditing {
            keyboardMovement = -0.2;
        } else if practitionerShippingAddressFacilityName.isEditing {
            keyboardMovement = -0.3;
        } else if practitionerBillingAddress1.isEditing {
            keyboardMovement = -0.9;
        } else if practitionerBillingAddress2.isEditing {
            keyboardMovement = -0.9;
        } else if practitionerBillingAddressCity.isEditing {
            keyboardMovement = -0.9;
        } else if practitionerBillingAddressState.isEditing {
            keyboardMovement = -0.9;
        } else if practitionerBillingAddressZip.isEditing {
            keyboardMovement = -0.9;
        } else if practitionerBillingAddressCountry.isEditing {
            keyboardMovement = -0.9;
        } else if practitionerBillingAddressFacilityName.isEditing {
            keyboardMovement = -0.9;
        } else if patientHeightInput.isEditing {
            keyboardMovement = -0.5;
        } else if patientHeightInchesInput.isEditing {
            keyboardMovement = -0.5;
        } else if patientWeightInput.isEditing {
            keyboardMovement = -0.5;
        } else if correctionsAndModificationsPlantarFaciaAccomLeft.isEditing {
            keyboardMovement = -0.2;
        } else if correctionsAndModificationsPlantarFaciaAccomRight.isEditing {
            keyboardMovement = -0.2;
        } else if correctionsAndModificationsStyloidAccomLeft.isEditing {
            keyboardMovement = -0.2;
        } else if correctionsAndModificationsStyloidAccomRight.isEditing {
            keyboardMovement = -0.2;
        } else if correctionsAndModificationsNavicularAccomLeft.isEditing {
            keyboardMovement = -0.2;
        } else if correctionsAndModificationsNavicularAccomRight.isEditing {
            keyboardMovement = -0.2;
        } else if correctionsAndModificationsAsMarkedOnCastLeft.isEditing {
            keyboardMovement = -0.5;
        } else if correctionsAndModificationsAsMarkedOnCastRight.isEditing {
            keyboardMovement = -0.5;
        } else if correctionsAndModificationsAddLatHeelExpansionLeft.isEditing {
            keyboardMovement = -0.9;
        } else if correctionsAndModificationsAddLatHeelExpansionRight.isEditing {
            keyboardMovement = -0.9;
        } else if correctionsAndModificationsMedialHeelSkiveLeft.isEditing {
            keyboardMovement = -0.9;
        } else if correctionsAndModificationsMedialHeelSkiveRight.isEditing {
            keyboardMovement = -0.9;
        } else if correctionsAndModificationsIntrinsicMetatarsalPadMmLeft.isEditing {
            keyboardMovement = -0.9;
        } else if correctionsAndModificationsIntrinsicMetatarsalPadMmRight.isEditing {
            keyboardMovement = -0.9;
        } else if postingRearfootPostMotionOtherDegreesLeft.isEditing {
            keyboardMovement = -0.7;
        } else if postingRearfootPostMotionOtherDegreesRight.isEditing {
            keyboardMovement = -0.7;
        } else if postingRearfootPostingElevatorOthermmLeft.isEditing {
            keyboardMovement = -0.9;
        } else if postingRearfootPostingElevatorOthermmRight.isEditing {
            keyboardMovement = -0.9;
        }
        self.view.window?.frame.origin.y = CGFloat(keyboardMovement) * keyboardHeight
    }
    
    @objc func keyboardWillHide(_ notification: NSNotification) {
        if self.view.window?.frame.origin.y != 0 {
            self.view.window?.frame.origin.y = 0
        }
        keyboardFrame = nil;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        respondToMemoryWarning()
    }
    
    @objc func appDidBecomeActive() {
        
        if currentStateNeedsSensor() {
            let _ = connectToStructureSensorAndStartStreaming()
        }
        
        // Abort the current scan if we were still scanning before going into background since we
        // are not likely to recover well.
        if _slamState.scannerState == .scanning {
            resetButtonPressed(resetButton)
        }
    }
    
    func initializeDynamicOptions() {
        
        _dynamicOptions = DynamicOptions()
        _dynamicOptions.highResColoring = videoDeviceSupportsHighResColor()
        _dynamicOptions.highResColoringSwitchEnabled = _dynamicOptions.highResColoring
    }
    
    func syncUIfromDynamicOptions() {
        
        // This method ensures the UI reflects the dynamic settings.
        enableNewTrackerSwitch.isOn = _dynamicOptions.newTrackerIsOn
        enableNewTrackerSwitch.isEnabled = _dynamicOptions.newTrackerSwitchEnabled
        
        enableHighResMappingSwitch.isOn = _dynamicOptions.highResMapping
        enableHighResMappingSwitch.isEnabled = _dynamicOptions.highResMappingSwitchEnabled
        
        enableNewMapperSwitch.isOn = _dynamicOptions.newMapperIsOn
        enableNewMapperSwitch.isEnabled = _dynamicOptions.newMapperSwitchEnabled
        
        enableHighResolutionColorSwitch.isOn = _dynamicOptions.highResColoring
        enableHighResolutionColorSwitch.isEnabled = _dynamicOptions.highResColoringSwitchEnabled
        
    }
    
    func setupUserInterface() {
        
        // File management extentions
        FileMgr.sharedInstance.useSubpath("scannerCache")
        
        // Fully transparent message label, initially.
        appStatusMessageLabel.alpha = 0
    }
    
    // Make sure the status bar is hidden
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    func presentMeshViewer() {
        _slamState.mapper!.finalizeTriangleMesh()
        
        let inmesh = _slamState.scene!.lockAndGetMesh()

        contextMesh = _display!.context!
        projectionMatrixMesh = _display!.depthCameraGLProjectionMatrix
        
        
        // Sample a few points to estimate the volume center
        var totalNumVertices: Int32 = 0
        
        for  i in 0..<inmesh!.numberOfMeshes() {
            totalNumVertices += inmesh!.number(ofMeshVertices: Int32(i))
        }
        
        let sampleStep = Int(max(1, totalNumVertices / 1000))
        var sampleCount: Int32 = 0
        var volumeCenter = GLKVector3Make(0, 0,0)
        
        for i in 0..<inmesh!.numberOfMeshes() {
            let numVertices = Int(inmesh!.number(ofMeshVertices: i))
            let vertex = inmesh!.meshVertices(Int32(i))
            
            for j in stride(from: 0, to: numVertices, by: sampleStep) {
                volumeCenter = GLKVector3Add(volumeCenter, (vertex?[Int(j)])!)
                sampleCount += 1
            }
        }
        
        if sampleCount > 0 {
            volumeCenter = GLKVector3DivideScalar(volumeCenter, Float(sampleCount))
        } else {
            volumeCenter = GLKVector3MultiplyScalar(_slamState.volumeSizeInMeters, 0.5)
        }
        
        delegate = self;
//        scanButton.isHidden = false
//        resetButton.isHidden = true
//        nextButton.isHidden = false
        scanButton.isHidden = true
        resetButton.isHidden = true
        backButton.isHidden = false;
        nextButton.isHidden = false;

        
        _slamState.scene!.unlockMesh()
        
        _slamState.scannerState = .viewing
        
        updateIdleTimer()
        
        _mesh = inmesh;
        
        setupGLMesh(contextMesh!)
        mesh = _mesh;
        _meshToSave = _mesh;

        setCameraProjectionMatrix(projectionMatrixMesh)
        resetMeshCenter(volumeCenter)

        let font = UIFont.boldSystemFont(ofSize: 14)
        let attributes: [AnyHashable: Any] = [NSAttributedString.Key.font : font]
        
        displayControl.setTitleTextAttributes(attributes as! [NSAttributedString.Key : Any], for: UIControl.State())
        rendererMesh.setRenderingMode(.lightedGray)


        showEviewMesh()
    }
    
    func enterCubePlacementState() {
        
        // Switch to the Scan button.
        scanButton.isHidden = false
        resetButton.isHidden = true
        nextButton.isHidden = true;
        backButton.isHidden = false;

        // We'll enable the button only after we get some initial pose.
        scanButton.isEnabled = true
        
        // Cannot be lost in cube placement mode.
        trackingLostLabel.isHidden = true
        
        setColorCameraParametersForInit()
        
        _slamState.scannerState = .cubePlacement
        
        // Restore dynamic options UI state, as we may be coming back from scanning state, where they were all disabled.
        syncUIfromDynamicOptions()
        
        updateIdleTimer()
    }
    
    func enterScanningState() {
        
        // This can happen if the UI did not get updated quickly enough.
        if !_slamState.cameraPoseInitializer!.lastOutput.hasValidPose.boolValue {
            print("Warning: not accepting to enter into scanning state since the initial pose is not valid.")
            return
        }
        
        // Switch to the Done button.
        scanButton.isHidden = true
        resetButton.isHidden = false
        backButton.isHidden = true;
        nextButton.isHidden = true;
        
        // Prepare the mapper for the new scan.
        setupMapper()
        
        _slamState.tracker!.initialCameraPose = _slamState.cameraPoseInitializer!.lastOutput.cameraPose
        
        // We will lock exposure during scanning to ensure better coloring.
        setColorCameraParametersForScanning()
        
        _slamState.scannerState = .scanning
        
        // Temporarily disable options while we're scanning.
        enableNewTrackerSwitch.isEnabled = false
        enableHighResolutionColorSwitch.isEnabled = false
        enableNewMapperSwitch.isEnabled = false
        enableHighResMappingSwitch.isEnabled = false
    }
    
    func enterViewingState() {
        
        // Cannot be lost in view mode.
        hideTrackingErrorMessage()
        
        _appStatus.statusMessageDisabled = true
        updateAppStatusMessage()
        
        // Hide the Scan/Done/Reset button.
        scanButton.isHidden = true
        resetButton.isHidden = true
        backButton.isHidden = false;
        nextButton.isHidden = false;

        
        _sensorController.stopStreaming()
        
        if _useColorCamera {
            stopColorCamera()
        }
        
        
        eview.isHidden = true;
        eviewMesh.isHidden = false;
        presentMeshViewer();
    }
    
    //MARK: -  Structure Sensor Management
    
    func currentStateNeedsSensor() -> Bool {
        
        switch _slamState.scannerState {
            
        // Initialization and scanning need the sensor.
        case .cubePlacement, .scanning:
            return true
            
        // Other states don't need the sensor.
        default:
            return false
        }
    }
    
    //MARK: - IMU
    
    func setupIMU() {
        
        _lastGravity = GLKVector3.init(v: (0, 0, 0))
        
        // 60 FPS is responsive enough for motion events.
        let fps: Double = 60
        _motionManager = CMMotionManager.init()
        _motionManager!.accelerometerUpdateInterval = 1.0 / fps
        _motionManager!.gyroUpdateInterval = 1.0 / fps
        
        // Limiting the concurrent ops to 1 is a simple way to force serial execution
        _imuQueue = OperationQueue.init()
        _imuQueue!.maxConcurrentOperationCount = 1
        
        let dmHandler: CMDeviceMotionHandler = { motion, _ in
            // Could be nil if the self is released before the callback happens.
            if self.eview != nil {
                self.processDeviceMotion(motion!, error: nil)
            }
        }
        _motionManager!.startDeviceMotionUpdates(to: _imuQueue!, withHandler: dmHandler)
    }
    
    func processDeviceMotion(_ motion: CMDeviceMotion, error: NSError?) {
        
        if _slamState.scannerState == .cubePlacement {
            
            // Update our gravity vector, it will be used by the cube placement initializer.
            _lastGravity = GLKVector3Make(Float(motion.gravity.x), Float(motion.gravity.y), Float(motion.gravity.z))
        }
        
        if _slamState.scannerState == .cubePlacement || _slamState.scannerState == .scanning {
            
            if _slamState.tracker != nil {
                // The tracker is more robust to fast moves if we feed it with motion data.
                _slamState.tracker!.updateCameraPose(with: motion)
            }
        }
    }
    
    @IBAction func calibrationButtonClicked(button: UIButton) {
        
        STSensorController.launchCalibratorAppOrGoToAppStore()
    }
    
    @IBAction func instructionButtonClicked(button: UIButton) {
        
//        let defaults = UserDefaults.standard
//        defaults.set(true, forKey: "instructionOverlay")
        
//        instructionOverlay.alpha = 0
//        instructionOverlay.isHidden = true
//        instructionOverlay.isUserInteractionEnabled = false
    }
    
    @IBAction func newTrackerSwitchChanged(sender: UISwitch) {
        
        
        _dynamicOptions.newTrackerIsOn = enableNewTrackerSwitch.isOn
        
        onSLAMOptionsChanged()
    }
    
    @IBAction func highResolutionColorSwitchChanged(sender: UISwitch) {
        
        _dynamicOptions.highResColoring = self.enableHighResolutionColorSwitch.isOn
        
        if (avCaptureSession != nil) {
            
            stopColorCamera()
            
            // The dynamic option must be updated before the camera is restarted.
            _dynamicOptions.highResColoring = self.enableHighResolutionColorSwitch.isOn
            
            if _useColorCamera {
                startColorCamera()
            }
        }
        
        // Force a scan reset since we cannot changing the image resolution during the scan is not
        // supported by STColorizer.
        onSLAMOptionsChanged() // will call UI sync
    }
    
    
    @IBAction func newMapperSwitchChanged(sender: UISwitch) {
        
        _dynamicOptions.newMapperIsOn = self.enableNewMapperSwitch.isOn
        onSLAMOptionsChanged() // will call UI sync
    }
    
    @IBAction func highResMappingSwitchChanged(sender: UISwitch) {
        
        _dynamicOptions.highResMapping = self.enableHighResMappingSwitch.isOn
        onSLAMOptionsChanged() // will call UI sync
    }
    
    func onSLAMOptionsChanged() {
        
        syncUIfromDynamicOptions()
        
        // A full reset to force a creation of a new tracker.
        
        resetSLAM()
        clearSLAM()
        setupSLAM()
        
        // Restore the volume size cleared by the full reset.
        adjustVolumeSize( volumeSize: _slamState.volumeSizeInMeters)
    }
    
    func adjustVolumeSize(volumeSize: GLKVector3) {
        
        // Make sure the volume size remains between 10 centimeters and 3 meters.
        let x = keepInRange(volumeSize.x, minValue: 0.1, maxValue: 3)
        let y = keepInRange(volumeSize.y, minValue: 0.1, maxValue: 3)
        let z = keepInRange(volumeSize.z, minValue: 0.1, maxValue: 3)
        
        _slamState.volumeSizeInMeters = GLKVector3.init(v: (x, y, z))
        
        _slamState.cameraPoseInitializer!.volumeSizeInMeters = _slamState.volumeSizeInMeters
        _display!.cubeRenderer!.adjustCubeSize(_slamState.volumeSizeInMeters)
    }
    
    @IBAction func scanButtonPressed(_ sender: UIButton) {
        // hide windows while scanning
        trackerShowingScanStart =  !enableNewTrackerView.isHidden
        
        toggleTracker(show: false)
        enterScanningState()
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        // restore window after scanning
        if trackerShowingScanStart {
            toggleTracker(show: true)
        }
        
        resetSLAM()
    }
    
    @IBAction func doneScanningButtonPressed(_ sender: UIButton) {
        screenViewing = eViewingMeshPageIndex;
        if trackerShowingScanStart {
            toggleTracker(show: true)
        }
        enterViewingState()
        nextButton.titleLabel?.text = "Use";
        backButton.titleLabel?.text = "Rescan";

    }

    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        // restore window after scanning
    }
    
    // Manages whether we can let the application sleep.
    func updateIdleTimer() {
        if isStructureConnectedAndCharged() && currentStateNeedsSensor() {
            
            // Do not let the application sleep if we are currently using the sensor data.
            UIApplication.shared.isIdleTimerDisabled = true
        } else {
            // Let the application sleep if we are only viewing the mesh or if no sensors are connected.
            UIApplication.shared.isIdleTimerDisabled = false
        }
    }
    
    func showTrackingMessage(_ message: String) {
        
        trackingLostLabel.text = message
        trackingLostLabel.isHidden = false
    }
    
    func hideTrackingErrorMessage() {
        
        trackingLostLabel.isHidden = true
    }
    
    func showAppStatusMessage(_ msg: String) {
        
        _appStatus.needsDisplayOfStatusMessage = true
        view.layer.removeAllAnimations()
        
        appStatusMessageLabel.text = msg
        appStatusMessageLabel.isHidden = false
        
        // Progressively show the message label.
        eview!.isUserInteractionEnabled = false
        UIView.animate(withDuration: 0.5, animations: {
            self.appStatusMessageLabel.alpha = 1.0
        })
    }
    
    func hideAppStatusMessage() {
        
        if !_appStatus.needsDisplayOfStatusMessage {
            return
        }
        
        _appStatus.needsDisplayOfStatusMessage = false
        view.layer.removeAllAnimations()
        
        UIView.animate(withDuration: 0.5, animations: {
            self.appStatusMessageLabel.alpha = 0
        }, completion: { _ in
            // If nobody called showAppStatusMessage before the end of the animation, do not hide it.
            if !self._appStatus.needsDisplayOfStatusMessage {
                
                // Could be nil if the self is released before the callback happens.
                if self.eview != nil {
                    self.appStatusMessageLabel.isHidden = true
                    self.eview.isUserInteractionEnabled = true
                }
            }
        })
    }
    
    func updateAppStatusMessage() {
        
        // Skip everything if we should not show app status messages (e.g. in viewing state).
        if _appStatus.statusMessageDisabled {
            hideAppStatusMessage()
            return
        }
        // First show sensor issues, if any.
        switch _appStatus.sensorStatus {
            
        case .needsUserToConnect:
            showAppStatusMessage(_appStatus.pleaseConnectSensorMessage)
            
            return
            
        case .needsUserToCharge:
            showAppStatusMessage(_appStatus.pleaseChargeSensorMessage)
            return
            
        case .ok:
            break
        }
        
        // Then show color camera permission issues, if any.
        if !_appStatus.colorCameraIsAuthorized {
            showAppStatusMessage(_appStatus.needColorCameraAccessMessage)
            return
        }
        
        // If we reach this point, no status to show.
        hideAppStatusMessage()
    }
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .began {
            if _slamState.scannerState == .cubePlacement {
                _volumeScale.initialPinchScale = _volumeScale.currentScale / sender.scale
            }
        } else if sender.state == .changed {
            
            if _slamState.scannerState == .cubePlacement {
                
                // In some special conditions the gesture recognizer can send a zero initial scale.
                if !_volumeScale.initialPinchScale.isNaN {
                    
                    _volumeScale.currentScale = sender.scale * _volumeScale.initialPinchScale
                    
                    // Don't let our scale multiplier become absurd
                    _volumeScale.currentScale = CGFloat(keepInRange(Float(_volumeScale.currentScale), minValue: 0.01, maxValue: 1000))
                    
                    let newVolumeSize: GLKVector3 = GLKVector3MultiplyScalar(_options.initVolumeSizeInMeters, Float(_volumeScale.currentScale))
                    
                    adjustVolumeSize( volumeSize: newVolumeSize)
                    
                }
            }
        }
    }
    
    @IBAction func toggleNewTrackerVisible(sender: UILongPressGestureRecognizer) {
        
//        if (sender.state == .began) {
//
//            toggleTracker(show: enableNewTrackerView.isHidden)
//        }
    }
    
    func toggleTracker(show: Bool) {
        
        if show {
            // set alpha to 0.9
            enableNewTrackerView.alpha = 0
            enableNewTrackerView.isHidden = false
            UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseOut, animations: { () -> Void in
                self.enableNewTrackerView.alpha = 0.9
            }, completion: { (finished: Bool) -> Void in
                self.enableNewTrackerView.isHidden = false
            })
        } else {
            // set alpha to 0.0
            UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: { () -> Void in
                self.enableNewTrackerView.alpha = 0.0
                
            }, completion: { (finished: Bool) -> Void in
                self.enableNewTrackerView.isHidden = true
            })
        }
    }
    
    //MARK: - MeshViewController delegates
    
    func meshViewWillDismiss() {
        
        // If we are running colorize work, we should cancel it.
        if _naiveColorizeTask != nil {
            _naiveColorizeTask!.cancel()
            _naiveColorizeTask = nil
        }
        
        if _enhancedColorizeTask != nil {
            _enhancedColorizeTask!.cancel()
            _enhancedColorizeTask = nil
        }
        
        self.hideMeshViewerMessage()
    }
    
    func meshViewDidDismiss() {
        
        _appStatus.statusMessageDisabled = false
        updateAppStatusMessage()
        
        let _ = connectToStructureSensorAndStartStreaming()
        
        resetSLAM()
    }
    
    func backgroundTask(_ sender: STBackgroundTask!, didUpdateProgress progress: Double) {
        
        if sender == _naiveColorizeTask {
            DispatchQueue.main.async(execute: {
                self.showMeshViewerMessage(String.init(format: "Processing: % 3d%%", Int(progress*20)))
            })
        } else if sender == _enhancedColorizeTask {
            
            DispatchQueue.main.async(execute: {
                self.showMeshViewerMessage(String.init(format: "Processing: % 3d%%", Int(progress*80)+20))
            })
        }
    }
    
    func meshViewDidRequestColorizing(_ mesh: STMesh, previewCompletionHandler: @escaping () -> Void, enhancedCompletionHandler: @escaping () -> Void) -> Bool {
        
        if _naiveColorizeTask != nil || _enhancedColorizeTask != nil { // already one running?
            
            NSLog("Already running background task!")
            return false
        }
        
        _naiveColorizeTask = try! STColorizer.newColorizeTask(with: mesh,
                                                              scene: _slamState.scene,
                                                              keyframes: _slamState.keyFrameManager!.getKeyFrames(),
                                                              completionHandler: { error in
                                                                if error != nil {
                                                                    print("Error during colorizing: \(String(describing: error?.localizedDescription))")
                                                                } else {
                                                                    DispatchQueue.main.async(execute: {
                                                                        previewCompletionHandler()
                                                                        self.mesh = mesh
                                                                        
                                                                        self.performEnhancedColorize(mesh, enhancedCompletionHandler:enhancedCompletionHandler)
                                                                    })
                                                                    self._naiveColorizeTask = nil
                                                                }
        },
                                                              options: [kSTColorizerTypeKey : STColorizerType.perVertex.rawValue,
                                                                        kSTColorizerPrioritizeFirstFrameColorKey: _options.prioritizeFirstFrameColor]
        )
        
        if _naiveColorizeTask != nil {
            // Release the tracking and mapping resources. It will not be possible to resume a scan after this point
            _slamState.mapper!.reset()
            _slamState.tracker!.reset()
            
            _naiveColorizeTask!.delegate = self
            _naiveColorizeTask!.start()
            
            return true
        }
        
        return false
    }
    
    func performEnhancedColorize(_ mesh: STMesh, enhancedCompletionHandler: @escaping () -> Void) {
        
        _enhancedColorizeTask = try! STColorizer.newColorizeTask(with: mesh, scene: _slamState.scene, keyframes: _slamState.keyFrameManager!.getKeyFrames(), completionHandler: {error in
            if error != nil {
                NSLog("Error during colorizing: %@", error!.localizedDescription)
            } else {
                DispatchQueue.main.async(execute: {
                    enhancedCompletionHandler()
                    
                    self.mesh = mesh
                })
                
                self._enhancedColorizeTask = nil
            }
        }, options: [kSTColorizerTypeKey : STColorizerType.textureMapForObject.rawValue, kSTColorizerPrioritizeFirstFrameColorKey: _options.prioritizeFirstFrameColor, kSTColorizerQualityKey: _options.colorizerQuality.rawValue, kSTColorizerTargetNumberOfFacesKey: _options.colorizerTargetNumFaces])
        
        if _enhancedColorizeTask != nil {
            
            // We don't need the keyframes anymore now that the final colorizing task was started.
            // Clearing it now gives a chance to early release the keyframe memory when the colorizer
            // stops needing them.
            _slamState.keyFrameManager!.clear()
            
            _enhancedColorizeTask!.delegate = self
            _enhancedColorizeTask!.start()
        }
    }
    
    func respondToMemoryWarning() {
        NSLog("respondToMemoryWarning")
        switch _slamState.scannerState {
        case .viewing:
            // If we are running a colorizing task, abort it
            if _enhancedColorizeTask != nil && !_slamState.showingMemoryWarning {
                
                _slamState.showingMemoryWarning = true
                
                // stop the task
                _enhancedColorizeTask!.cancel()
                _enhancedColorizeTask = nil
                
                // hide progress bar
                self.hideMeshViewerMessage()
                
                let alertCtrl = UIAlertController(
                    title: "Memory Low",
                    message: "Colorizing was canceled.",
                    preferredStyle: .alert)
                
                let okAction = UIAlertAction(
                    title: "OK",
                    style: .default,
                    handler: { _ in
                        self._slamState.showingMemoryWarning = false
                })
                
                alertCtrl.addAction(okAction)
                
                // show the alert in the meshViewController
                self.meshViewController.present(alertCtrl, animated: true, completion: nil)
            }
            
        case .scanning:
            
            if !_slamState.showingMemoryWarning {
                
                _slamState.showingMemoryWarning = true
                
                let alertCtrl = UIAlertController(
                    title: "Memory Low",
                    message: "Scanning will be stopped to avoid loss.",
                    preferredStyle: .alert)
                
                let okAction = UIAlertAction(
                    title: "OK", style: .default,
                    handler: { _ in
                        self._slamState.showingMemoryWarning = false
                        self.enterViewingState()
                })
                
                alertCtrl.addAction(okAction)
                
                // show the alert
                present(alertCtrl, animated: true, completion: nil)
            }
            
        default:
            // not much we can do here
            break
        }
    }
    
    func setupGLMesh (_ context: EAGLContext) {
        
        (self.eviewMesh as EAGLView).context = context
        
        EAGLContext.setCurrent(context)
        
        rendererMesh.initializeGL( GLenum(GL_TEXTURE3))
        
        self.eviewMesh.setFramebuffer()
        
        let framebufferSize: CGSize = self.eviewMesh.getFramebufferSize()
        
        viewportMesh[0] = 0
        viewportMesh[1] = 0
        viewportMesh[2] = Float(framebufferSize.width)
        viewportMesh[3] = Float(framebufferSize.height)
    }
    
    
    func setCameraProjectionMatrix (_ projection: GLKMatrix4) {
        
        viewpointControllerMesh.setCameraProjection(projection)
        projectionMatrixBeforeUserInteractions = projection
    }
    
    func resetMeshCenter (_ center: GLKVector3) {
        
        viewpointControllerMesh.reset()
        viewpointControllerMesh.setMeshCenter(center)
        modelViewMatrixBeforeUserInteractions = viewpointControllerMesh.currentGLModelViewMatrix()
    }
    
    func saveJpegFromRGBABuffer( _ filename: String, src_buffer: UnsafeMutableRawPointer, width: Int, height: Int)
    {
        let file: UnsafeMutablePointer<FILE>? = fopen(filename, "w")
        if file == nil {
            return
        }
        
        var colorSpace: CGColorSpace?
        var alphaInfo: CGImageAlphaInfo!
        var bmcontext: CGContext?
        colorSpace = CGColorSpaceCreateDeviceRGB()
        alphaInfo = .noneSkipLast
        
        bmcontext = CGContext(data: src_buffer, width: width, height: height, bitsPerComponent: 8, bytesPerRow: width * 4, space: colorSpace!, bitmapInfo: alphaInfo.rawValue)!
        var rgbImage: CGImage? = bmcontext!.makeImage()
        
        bmcontext = nil
        colorSpace = nil
        
        var jpgData: CFMutableData? = CFDataCreateMutable(nil, 0)
        var imageDest: CGImageDestination? = CGImageDestinationCreateWithData(jpgData!, "public.jpeg" as CFString, 1, nil)
        
        var kcb = kCFTypeDictionaryKeyCallBacks
        var vcb = kCFTypeDictionaryValueCallBacks
        
        // Our empty IOSurface properties dictionary
        var options: CFDictionary? = CFDictionaryCreate(kCFAllocatorDefault, nil, nil, 0, &kcb, &vcb)
        
        CGImageDestinationAddImage(imageDest!, rgbImage!, options!)
        CGImageDestinationFinalize(imageDest!)
        
        imageDest = nil
        rgbImage = nil
        options = nil
        
        fwrite(CFDataGetBytePtr(jpgData!), 1, CFDataGetLength(jpgData!), file!)
        fclose(file!)
        
        jpgData = nil
    }
    
    // create preview image from current viewpoint
    
    func prepareScreenShotCurrentViewpoint (screenshotPath: String) {
        
        let framebufferSize: CGSize = self.eviewMesh.getFramebufferSize()
        let width: Int32 = Int32.init(framebufferSize.width)
        let height: Int32 = Int32.init(framebufferSize.height)
        
        var screenShotRgbaBuffer = [UInt32](repeating: 0, count: Int(width*height))
        
        var screenTopRowBuffer = [UInt32](repeating: 0, count: Int(width))
        
        var screenBottomRowBuffer = [UInt32](repeating: 0, count: Int(width))
        
        // tell glReadPixels to read from front buffer
        glReadBuffer(GLuint(GL_FRONT))
        glReadPixels(0, 0, width, height, GLenum(GL_RGBA), GLenum(GL_UNSIGNED_BYTE), &screenShotRgbaBuffer)
        
        // flip the buffer
        for h in 0..<height/2 {
            
            glReadPixels(0, h, width, 1, UInt32(GL_RGBA), UInt32(GL_UNSIGNED_BYTE), &screenTopRowBuffer)
            
            glReadPixels(0, (height - h - 1), width, 1, UInt32(GL_RGBA), UInt32(GL_UNSIGNED_BYTE), &screenBottomRowBuffer)
            
            let topIdx = Int(width * h)
            let bottomIdx = Int(width * (height - h - 1))
            
            withUnsafeMutablePointer(to: &screenShotRgbaBuffer[topIdx]) { (one) -> () in
                withUnsafePointer(to: &screenBottomRowBuffer[0], { (two) -> () in
                    
                    one.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (onePtr) -> () in
                        two.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (twoPtr) -> () in
                            
                            memcpy(onePtr, twoPtr, Int(width) * Int(MemoryLayout<UInt32>.size))
                        })
                    })
                })
            }
            
            withUnsafeMutablePointer(to: &screenShotRgbaBuffer[bottomIdx]) { (one) -> () in
                withUnsafePointer(to: &screenTopRowBuffer[0], { (two) -> () in
                    
                    one.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (onePtr) -> () in
                        two.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (twoPtr) -> () in
                            
                            memcpy(onePtr, twoPtr, Int(width) * Int(MemoryLayout<UInt32>.size))
                        })
                    })
                })
            }
        }
        
        
        saveJpegFromRGBABuffer(screenshotPath, src_buffer: &screenShotRgbaBuffer, width: Int(width), height: Int(height))
        
    }
    
    func prepareScreenShotCurrentViewpointForUIImage ()->UIImage?{
        
        let framebufferSize: CGSize = self.eviewMesh.getFramebufferSize()
        let width: Int32 = Int32.init(framebufferSize.width)
        let height: Int32 = Int32.init(framebufferSize.height)
        
        var screenShotRgbaBuffer = [UInt32](repeating: 0, count: Int(width*height))
        
        var screenTopRowBuffer = [UInt32](repeating: 0, count: Int(width))
        
        var screenBottomRowBuffer = [UInt32](repeating: 0, count: Int(width))
        
        // tell glReadPixels to read from front buffer
        glReadBuffer(GLuint(GL_FRONT))
        glReadPixels(0, 0, width, height, GLenum(GL_RGBA), GLenum(GL_UNSIGNED_BYTE), &screenShotRgbaBuffer)
        
        // flip the buffer
        for h in 0..<height/2 {
            
            glReadPixels(0, h, width, 1, UInt32(GL_RGBA), UInt32(GL_UNSIGNED_BYTE), &screenTopRowBuffer)
            
            glReadPixels(0, (height - h - 1), width, 1, UInt32(GL_RGBA), UInt32(GL_UNSIGNED_BYTE), &screenBottomRowBuffer)
            
            let topIdx = Int(width * h)
            let bottomIdx = Int(width * (height - h - 1))
            
            withUnsafeMutablePointer(to: &screenShotRgbaBuffer[topIdx]) { (one) -> () in
                withUnsafePointer(to: &screenBottomRowBuffer[0], { (two) -> () in
                    
                    one.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (onePtr) -> () in
                        two.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (twoPtr) -> () in
                            
                            memcpy(onePtr, twoPtr, Int(width) * Int(MemoryLayout<UInt32>.size))
                        })
                    })
                })
            }
            
            withUnsafeMutablePointer(to: &screenShotRgbaBuffer[bottomIdx]) { (one) -> () in
                withUnsafePointer(to: &screenTopRowBuffer[0], { (two) -> () in
                    
                    one.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (onePtr) -> () in
                        two.withMemoryRebound(to: UInt32.self, capacity: Int(width), { (twoPtr) -> () in
                            
                            memcpy(onePtr, twoPtr, Int(width) * Int(MemoryLayout<UInt32>.size))
                        })
                    })
                })
            }
        }
        
        return imageFromARGB32Bitmap(pixels: &screenShotRgbaBuffer, width: Int(width), height: Int(height));
        
    }
    
    func imageFromARGB32Bitmap(pixels: UnsafeMutableRawPointer, width: Int, height: Int) -> UIImage? {
        guard width > 0 && height > 0 else { return nil }
        
        let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.premultipliedFirst.rawValue)
        let bitsPerComponent = 8
        let bitsPerPixel = 32
        
        var data = pixels // Copy to mutable []
        guard let providerRef = CGDataProvider(data: NSData(bytes: pixels,
                                                            length: width * height * 4)
            )
            else { return nil }
        
        guard let cgim = CGImage(
            width: width,
            height: height,
            bitsPerComponent: bitsPerComponent,
            bitsPerPixel: bitsPerPixel,
            bytesPerRow: width * 4,
            space: rgbColorSpace,
            bitmapInfo: bitmapInfo,
            provider: providerRef,
            decode: nil,
            shouldInterpolate: true,
            intent: .defaultIntent
            )
            else { return nil }
        
        return UIImage(cgImage: cgim)
    }
    
    @IBAction func emailMesh(sender: AnyObject)  {
        
        var theSuccess = true;
        order.orderPractitioner = practitioners[practitionerPicker.selectedRow(inComponent: 0)];
        
        let dateFormatter : DateFormatter = DateFormatter();
        dateFormatter.dateFormat = "MM/dd/yyyy HH:mm:ss";
        let date = Date();
        let dateString = dateFormatter.string(from: date);
        let diagnosis = (order.chiefComplaintDiagnosis ?? "");
        let instructions = (order.commentsInstructions ?? "");
        let messageBody = "See attached pdf";
        let zipFilename = "Model.zip"
        let screenshotFilename = "rootLabPreview.jpg"
        let fullPathFilename = FileMgr.sharedInstance.full(screenshotFilename)
        
        FileMgr.sharedInstance.del(screenshotFilename)
        
        // Take a screenshot and save it to disk.
        
//        if (!reorderUISwitch.isOn) {
//            prepareScreenShotCurrentViewpoint(screenshotPath: fullPathFilename)
//
//            // since file is save in prepareScreenShot() need to getData() here
//
//            if let sshot = NSData(contentsOfFile: fullPathFilename) {
//
//                mailViewController?.addAttachmentData(sshot as Data, mimeType: "image/jpeg", fileName: screenshotFilename)
//            }
//            else {
//                let alert = UIAlertController.init(title: "Error", message: "no pic", preferredStyle: .alert)
//
//                let defaultAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
//
//                alert.addAction(defaultAction)
//
//                present(alert, animated: true, completion: nil)
//            }
//
//        }
        
      
        
        let thePractitionerName = (order.orderPractitioner?.firstName)! + " " + (order.orderPractitioner?.lastName)!;
        let thePatientName = (order.orderPatient?.firstName)! + " " + (order.orderPatient?.lastName)!;
        let theStandardSubject = "Prescription from " + thePractitionerName + " for " + thePatientName;
        let theSubject = (order.rushOrder2DayTurnaround ||
            order.rushOrderNextDayTurnaround) ? "RUSH ORDER: " + theStandardSubject : theStandardSubject;
        
        
        let smtpSession = MCOSMTPSession()
//        smtpSession.hostname = "mail.root-lab.com"
        smtpSession.hostname = "smtp.root-lab.com"
        smtpSession.username = "sentscans@root-lab.com"
        smtpSession.password = "!*rfoL#$Foot"
        smtpSession.port = 587
        smtpSession.authType = MCOAuthType.saslLogin
        smtpSession.connectionType = MCOConnectionType.clear
        smtpSession.connectionLogger = {(connectionID, type, data) in
            if data != nil {
                if let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue){
                    NSLog("Connectionlogger: \(string)")
                }
            }
        }
        
        let builder = MCOMessageBuilder()
        builder.header.to = [MCOAddress(displayName: "matt", mailbox: "mattdwhittle@gmail.com")]
        builder.header.to = [MCOAddress(displayName: "scans", mailbox: "scans@root-lab.com")]
        builder.header.cc = [MCOAddress(displayName: "gary", mailbox: "gary.root.a@gmail.com")]
        //TODO change mailbox here so if password is hacked, no PHI leaked
        builder.header.from = MCOAddress(displayName: "sentscans@root-lab.com", mailbox: "sentscans@root-lab.com")
        builder.header.subject = theSubject;
        builder.htmlBody = messageBody;
        
        
        if (!reorderUISwitch.isOn) {
            
            if let meshToSend = _meshToSave {
                let zipfile = FileMgr.sharedInstance.saveMesh(zipFilename, data: meshToSend)
                
                if zipfile != nil {
                    
                    let attachment = MCOAttachment()
                    attachment.mimeType =  "application/zip"
                    attachment.filename = zipFilename;
                    attachment.data = zipfile!
                    builder.addAttachment(attachment)
                }
            }
            else {
                
                mailViewController = nil
                
                let alert = UIAlertController.init(title: "The email could not be sent", message: "Exporting the mesh failed", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
                
                alert.addAction(defaultAction)
                
                emailErrorLabel.text = "The email could not be sent: exporting the mesh failed";
                
                present(alert, animated: true, completion: nil)
                theSuccess = false;
                return
            }
        }
        
        var i = 0;
        for iUiImageView in reorderScrollView.subviews {
            let theImageView = (iUiImageView as! UIImageView);
            let theImage = theImageView.image;
            //Only get the images we put in, not the scrollbars
            if (theImageView.bounds.size.height == setImagePictureHeight) {
                let imageData = theImage!.pngData()!
                let attachment = MCOAttachment()
                attachment.mimeType =  "image/png"
                attachment.filename = "photo" + String(i) + ".png";
                attachment.data = imageData
                builder.addAttachment(attachment)
            }
            i = i + 1;
        }
        
        
        let dateFormatter2 : DateFormatter = DateFormatter();
        dateFormatter2.dateFormat = "MM-dd-yyyy HH:mm:ss";
        let dateString2 = dateFormatter2.string(from: date);
        
        
        let aPDFDocument = PDFDocument();
        aPDFDocument.insert(RooLabPDFPage().doParent(inParent: self), at: 0)
        let attachment = MCOAttachment()
        attachment.mimeType =  "application/pdf"
        attachment.filename = dateString2 + " " + order.orderPractitioner!.lastName! + ", " + order.orderPractitioner!.firstName!;
        attachment.data =  aPDFDocument.dataRepresentation()!
        builder.addAttachment(attachment)
        
        self.emailErrorLabel.text = "Sending...";

        let rfc822Data = builder.data()
        let sendOperation = smtpSession.sendOperation(with: rfc822Data!)
        sendOperation?.start { (error) -> Void in
            if (error != nil) {
                var finalError = "Error sending email: \(error!)";
                if (finalError.contains("A stable connection to the server could not be established.")) {
                    finalError = "Error sending email: No connection";
                }
                
                NSLog(finalError)
                theSuccess = false;
                
                self.emailErrorLabel.text = finalError;
            } else {
                NSLog("Successfully sent email!")
                self.changePageTo(pageTo: openingPageIndex);
                self.resetEverything();

            }
        }
        
        if (order.orderPractitioner!.useEmailForCC) {
            let builder = MCOMessageBuilder()
            builder.header.to = [MCOAddress(displayName: (order.orderPractitioner?.email)!, mailbox: (order.orderPractitioner?.email)!)]
            builder.header.from = MCOAddress(displayName: "rootLab", mailbox: "sentscans@root-lab.com")
            builder.header.subject = theSubject;
            builder.htmlBody = messageBody;
            builder.addAttachment(attachment)

            let rfc822Data = builder.data()
            let sendOperation = smtpSession.sendOperation(with: rfc822Data!)
            sendOperation?.start { (error) -> Void in
                if (error != nil) {
                    NSLog("Error sending email: \(error)")
                } else {
                    NSLog("Successfully sent email!")
                }
            }
        }
        
        saveOrder();

    }
    
    //MARK: Mail Delegate
    
    public func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        mailViewController?.dismiss(animated: true, completion: nil)
    }
    
    //MARK: Rendering
    
    @objc func draw () {
        
        self.eviewMesh.setFramebuffer()
        
        glViewport(GLint(viewportMesh[0]), GLint(viewportMesh[1]), GLint(viewportMesh[2]), GLint(viewportMesh[3]))
        
        let viewpointChanged = viewpointControllerMesh.update()
        
        // If nothing changed, do not waste time and resources rendering.
        if !needsDisplay && !viewpointChanged {
            return
        }
        
        var currentModelView = viewpointControllerMesh.currentGLModelViewMatrix()
        var currentProjection = viewpointControllerMesh.currentGLProjectionMatrix()
        
        rendererMesh!.clear()
        
        withUnsafePointer(to: &currentProjection) { (one) -> () in
            withUnsafePointer(to: &currentModelView, { (two) -> () in
                
                one.withMemoryRebound(to: GLfloat.self, capacity: 16, { (onePtr) -> () in
                    two.withMemoryRebound(to: GLfloat.self, capacity: 16, { (twoPtr) -> () in
                        
                        rendererMesh!.render(onePtr,modelViewMatrix: twoPtr)
                    })
                })
            })
        }
        
        needsDisplay = false
        
        let _ = self.eviewMesh.presentFramebuffer()
        
    }
    
    //MARK: Touch & Gesture Control
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            viewpointControllerMesh.onTouchBegan()
        }
    }
    
    @IBAction func pinchScaleGesture(_ sender: UIPinchGestureRecognizer) {
        if sender.state == .began {
            viewpointControllerMesh.onPinchGestureBegan(Float(sender.scale))
        }
        else if sender.state == .changed {
            viewpointControllerMesh.onPinchGestureChanged(Float(sender.scale))
        }

    }
    
    @IBAction func oneFingerPanGesture(_ sender: UIPanGestureRecognizer) {
        
        let touchPos = sender.location(in: view)
        let touchVel = sender.velocity(in: view)
        let touchPosVec = GLKVector2Make(Float(touchPos.x), Float(touchPos.y))
        let touchVelVec = GLKVector2Make(Float(touchVel.x), Float(touchVel.y))
        
        if sender.state == .began {
            viewpointControllerMesh.onOneFingerPanBegan(touchPosVec)
        }
        else if sender.state == .changed {
            viewpointControllerMesh.onOneFingerPanChanged(touchPosVec)
        }
        else if sender.state == .ended {
            viewpointControllerMesh.onOneFingerPanEnded(touchVelVec)
        }
    }
    
    @IBAction func twoFingersPanGesture(_ sender: AnyObject) {
        
        if sender.numberOfTouches != 2 {
            return
        }
        
        let touchPos = sender.location(in: view)
        let touchVel = sender.velocity(in: view)
        let touchPosVec = GLKVector2Make(Float(touchPos.x), Float(touchPos.y))
        let touchVelVec = GLKVector2Make(Float(touchVel.x), Float(touchVel.y))
        
        if sender.state == .began {
            viewpointControllerMesh.onTwoFingersPanBegan(touchPosVec)
        }
        else if sender.state == .changed {
            viewpointControllerMesh.onTwoFingersPanChanged(touchPosVec)
        }
        else if sender.state == .ended {
            viewpointControllerMesh.onTwoFingersPanEnded(touchVelVec)
        }
    }
    
    //MARK: UI Control
    
    func trySwitchToColorRenderingMode() {
        
        // Choose the best available color render mode, falling back to LightedGray
        // This method may be called when colorize operations complete, and will
        // switch the render mode to color, as long as the user has not changed
        // the selector.
        
        if displayControl.selectedSegmentIndex == 2 {
            
            if    mesh!.hasPerVertexUVTextureCoords() {
                
                rendererMesh.setRenderingMode(.textured)
            }
            else if mesh!.hasPerVertexColors() {
                
                rendererMesh.setRenderingMode(.perVertexColor)
            }
            else {
                
                rendererMesh.setRenderingMode(.lightedGray)
            }
        }
        else if displayControl.selectedSegmentIndex == 3 {
            
            if    mesh!.hasPerVertexUVTextureCoords() {
                
                rendererMesh.setRenderingMode(.textured)
            }
            else if mesh!.hasPerVertexColors() {
                
                rendererMesh.setRenderingMode(.perVertexColor)
            }
            else {
                
                rendererMesh.setRenderingMode(.lightedGray)
            }
        }
    }
    
    @IBAction func displayControlChanged(_ sender: AnyObject) {
        
        switch displayControl.selectedSegmentIndex {
        case 0: // x-ray
            
            rendererMesh.setRenderingMode(.xRay)
            
        case 1: // lighted-gray
            
            rendererMesh.setRenderingMode(.lightedGray)
            
        case 2: // color
            
            trySwitchToColorRenderingMode()
            
            let meshIsColorized: Bool = mesh!.hasPerVertexColors() || mesh!.hasPerVertexUVTextureCoords()
            
            if !meshIsColorized {
                
                colorizeMesh()
            }
            
        default:
            break
        }
        
        needsDisplay = true
    }
    
    func colorizeMesh() {
        
        let _ = delegate?.meshViewDidRequestColorizing(self.mesh!, previewCompletionHandler: {
        }, enhancedCompletionHandler: {
            
            // Hide progress bar.
            self.hideMeshViewerMessage()
        })
    }
    
    func hideMeshViewerMessage() {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.meshViewerMessageLabel.alpha = 0.0
        }, completion: { _ in
            self.meshViewerMessageLabel.isHidden = true
        })
    }
    
    func showMeshViewerMessage(_ msg: String) {
        
        meshViewerMessageLabel.text = msg
        
        if meshViewerMessageLabel.isHidden == true {
            
            meshViewerMessageLabel.alpha = 0.0
            meshViewerMessageLabel.isHidden = false
            
            UIView.animate(withDuration: 0.5, animations: {
                self.meshViewerMessageLabel.alpha = 1.0
            })
        }
    }
    
    @IBAction func ClickDone(sender: UIButton){
        
    }
    
    func showEviewMesh() {
        if displayLink != nil {
            displayLink!.invalidate()
            displayLink = nil
        }
        
        displayLink = CADisplayLink(target: self, selector: #selector(self.draw))
        displayLink!.add(to: RunLoop.main, forMode: RunLoop.Mode.common)
        
        viewpointControllerMesh.reset()
    }
    
    func dismissEViewMesh() {
        
        displayControl.selectedSegmentIndex = 1
        rendererMesh.setRenderingMode(.lightedGray)
        
        if delegate?.meshViewWillDismiss != nil {
            delegate?.meshViewWillDismiss()
        }
        
        rendererMesh.releaseGLBuffers()
        rendererMesh.releaseGLTextures()
        
        displayLink!.invalidate()
        displayLink = nil
        
        mesh = nil
        
        self.eviewMesh.context = nil
        
        dismiss(animated: true, completion: {
            if self.delegate?.meshViewDidDismiss != nil {
                self.delegate?.meshViewDidDismiss()
            }
        })
    }
    
//
//    func drawPDFUsingPrintPageRenderer(printPageRenderer : CustomPrintPageRenderer) -> NSData! {
//        let data = NSMutableData()
//        UIGraphicsBeginPDFContextToData(data, CGRect.zero, nil)
//        UIGraphicsBeginPDFPage()
//        printPageRenderer.drawPage(at: 0, in: UIGraphicsGetPDFContextBounds())
//        UIGraphicsEndPDFContext()
//        return data
//    }
//
//    func exportHTMLContentToPDF(HTMLContent: String) {
//        let printPageRenderer = CustomPrintPageRenderer();
//        let printFormatter = UIMarkupTextPrintFormatter(markupText: HTMLContent)
//        printPageRenderer.addPrintFormatter(printFormatter, startingAtPageAt: 0)
//        let pdfData = drawPDFUsingPrintPageRenderer(printPageRenderer: printPageRenderer)
//
//        let pdfFilename = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("nameOfPDFfile.pdf")
//
//        pdfData?.write(to: (pdfFilename ?? nil)!, atomically: true)
//    }
//
//    func makePdf2AndEmail() {
//        let smtpSession = MCOSMTPSession()
//        //        smtpSession.hostname = "mail.root-lab.com"
//        smtpSession.hostname = "smtp.root-lab.com"
//        smtpSession.username = "shasper@root-lab.com"
//        smtpSession.password = "porsche2"
////        smtpSession.username = "sentscans@root-lab.com"
////        smtpSession.password = "!*rfoL$Foot"
//        smtpSession.port = 587
//        smtpSession.authType = MCOAuthType.saslLogin
//        smtpSession.connectionType = MCOConnectionType.clear
//        smtpSession.connectionLogger = {(connectionID, type, data) in
//            if data != nil {
//                if let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue){
//                    NSLog("Connectionlogger: \(string)")
//                }
//            }
//        }
//
//        let builder = MCOMessageBuilder()
//                builder.header.to = [MCOAddress(displayName: "matt", mailbox: "mattdwhittle@gmail.com")]
////        builder.header.to = [MCOAddress(displayName: "scans", mailbox: "scans@root-lab.com")]
//        builder.header.from = MCOAddress(displayName: "shasper@root-lab.com", mailbox: "shasper@root-lab.com")
//        builder.header.subject = "Test pdf";
//        builder.htmlBody = "lala";
//
//
//        let aPDFDocument = PDFDocument();
//        aPDFDocument.insert(RooLabPDFPage(), at: 0)
//        var attachment = MCOAttachment()
//        attachment.mimeType =  "application/pdf"
//        attachment.filename = "root-labPdf.pdf";
//        attachment.data =  aPDFDocument.dataRepresentation()!
//        builder.addAttachment(attachment)
//
//
//        let rfc822Data = builder.data()
//        let sendOperation = smtpSession.sendOperation(with: rfc822Data!)
//        sendOperation?.start { (error) -> Void in
//            if (error != nil) {
//                NSLog("Error sending email: \(error)")
//
//            } else {
//                NSLog("Successfully sent email!")
//            }
//        }
//
//
//
//
//    }
    
    func makePdf2() {
        let aPDFDocument = PDFDocument();
        
        
        let pdfLocation = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("nameOfPDFfile.pdf")
        
        aPDFDocument.insert(RooLabPDFPage().doParent(inParent: self), at: 0)
        
    }

    class RooLabPDFPage :PDFPage{
        
        var parent : ViewController?;
        
        func drawLine(fromx: Int, fromy: Int, tox: Int, toy: Int) {
            UIColor.black.set()
            let aPath = UIBezierPath()
            aPath.move(to: CGPoint(x: fromx, y: fromy))
            aPath.addLine(to: CGPoint(x: tox, y: toy))
            aPath.close()
            aPath.stroke()
            aPath.fill()
        }
        
        func doParent(inParent: ViewController) -> RooLabPDFPage {
            parent = inParent;
            return self;
        }
        
        override func draw(with box: PDFDisplayBox, to context: CGContext) {
            super.draw(with: box, to: context)
            
            let dateFormatter : DateFormatter = DateFormatter();
            dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a";
            let date = Date();

            
            let vRushOrderLine1 = parent!.calculateRushOrderDescriptionLine1FromOrder()
            let vRushOrderLine2 = parent!.calculateRushOrderDescriptionLine2FromOrder();
            let vOrderDate = dateFormatter.string(from: date);
            let vPractitioner = order.orderPractitioner!.lastName! + ", " + order.orderPractitioner!.firstName!;
            let vPractitionerPhone = order.orderPractitioner!.phone;
            
            var theReturn = "";
            theReturn += order.orderPractitioner!.shippingAddressFacilityName! + "\n";
            theReturn += order.orderPractitioner!.shippingAddress1! + " ";
            theReturn += (order.orderPractitioner!.shippingAddress2 ?? "") + " ";
            theReturn += order.orderPractitioner!.shippingAddressCity! + ", ";
            theReturn += order.orderPractitioner!.shippingAddressState! + ", ";
            theReturn += order.orderPractitioner!.shippingAddressZip! + " ";
            theReturn += order.orderPractitioner!.shippingAddressCountry!
            ;
            
            let vShippingAddress = theReturn;
            
            
            theReturn = "";
            theReturn += order.orderPractitioner!.billingAddressFacilityName! + "\n";
            theReturn += order.orderPractitioner!.billingAddress1! + " ";
            theReturn += (order.orderPractitioner!.billingAddress2 ?? "") + " ";
            theReturn += order.orderPractitioner!.billingAddressCity! + ", ";
            theReturn += order.orderPractitioner!.billingAddressState! + ", ";
            theReturn += order.orderPractitioner!.billingAddressZip! + " ";
            theReturn += order.orderPractitioner!.billingAddressCountry!;
            
            let vBillingAddress = theReturn;
            let vPatientName = order.orderPatient!.lastName! + ", " +
                order.orderPatient!.firstName!;
            let vGender = order.orderPatient!.gender;
            let vAge = String(order.orderPatient!.age);
            let vWeight = String(order.orderPatient!.weight);
            let vHeight = String(order.orderPatient!.height) + " ft. " + String(order.orderPatient!.heightInches) + " in.";
            let vDiagnosis = order.chiefComplaintDiagnosis;
            let vMedialRecordNumber = order.orderPatient!.medicalRecordNumber;
            let vShoeSize = String(order.orderPatient!.shoeSize);
            let vShoeType = order.orderPatient!.shoeType;

            let vOrthosisType = parent!.calculateOrderOrthosisType()
            let vOrthosisMaterial = parent!.calculateOrthosisMaterialOrderDescriptionFromOrder()
            let vCorrectionsAndModifications = parent!.calculateCorrectionsAndModificationsDescriptionFromOrder()
            let vShellSpecifications = parent!.calculateOrthosisSpecificationDescriptionFromOrder()
            let vPosting = parent!.calculatePostingDescriptionFromOrder()
            let vTopCovers = parent!.calculateTopCoversAndExtensionsOrderDescriptionFromOrder()
            let vInstructions = parent!.calculateCommentsInstructionsOrderDescriptionFromOrderForEmail()

            
            let pageBounds = self.bounds(for: box);
            
//            context.concatenate(CGAffineTransform(scaleX: 1.0, y: -1.0));
//            context.concatenate(CGAffineTransform(translationX: 0.0, y: -CGFloat(context.height)));
//            context.concatenate(CGAffineTransform(translationX: 0.0, y: 10.0));

            let leftMargin = 40;
            let topMargin = 10;
            let rightMargin = 580;
            let pictureWidth = 100;
            let orderBoxTop = 280;

            UIGraphicsPushContext(context)
            context.saveGState()
            
            context.translateBy(x: 0.0, y: pageBounds.height)
            context.scaleBy(x: 1.0, y: -1.0)
            
            let theLogoImage = UIImage(named: "Root Lab transparent back PNG.png")
            theLogoImage?.draw(in: CGRect(x: leftMargin, y: topMargin, width: pictureWidth, height: pictureWidth / 2));

            
            drawLine(fromx: leftMargin, fromy: topMargin + 60,
                     tox: pictureWidth + 350, toy: topMargin + 60)
            drawLine(fromx: leftMargin, fromy: orderBoxTop,
                     tox: rightMargin, toy: orderBoxTop)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 40,
                     tox: rightMargin, toy: orderBoxTop + 40)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 80,
                     tox: rightMargin, toy: orderBoxTop + 80)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 160,
                     tox: rightMargin, toy: orderBoxTop + 160)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 220,
                     tox: rightMargin, toy: orderBoxTop + 220)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 300,
                     tox: rightMargin, toy: orderBoxTop + 300)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 380,
                     tox: rightMargin, toy: orderBoxTop + 380)
            drawLine(fromx: leftMargin, fromy: orderBoxTop + 460,
                     tox: rightMargin, toy: orderBoxTop + 460)
            drawLine(fromx: leftMargin, fromy: orderBoxTop,
                     tox: leftMargin, toy: orderBoxTop + 460)
            drawLine(fromx: rightMargin, fromy: orderBoxTop,
                     tox: rightMargin, toy: orderBoxTop + 460)

            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            
            let attrs10 = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Thin", size: 9)!, NSAttributedString.Key.paragraphStyle: paragraphStyle]
            let attrs10Bold = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 9)!, NSAttributedString.Key.paragraphStyle: paragraphStyle]
            let attrsBig = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Thin", size: 12)!, NSAttributedString.Key.paragraphStyle: paragraphStyle]

            let rootLabContactString = "Root Lab, Inc.\n16739 Placer Hills Rd Meadow Vista, CA 95722\nwww.root-lab.com"
            rootLabContactString.draw(with: CGRect(x: leftMargin + pictureWidth + 10, y: topMargin, width: 100, height: 50), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            
            let rootLabPhoneString = "Toll free: 877-766-8522\nPhone: (530) 878-9300\nFax: (530) 878-9310\nemail: info@root-lab.com"
            rootLabPhoneString.draw(with: CGRect(x: leftMargin + pictureWidth + 120, y: topMargin, width: 100, height: 50), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            
            let prescriptionOrderFormString = "Prescription\nOrder Form"
            prescriptionOrderFormString.draw(with: CGRect(x: leftMargin + pictureWidth + 230, y: topMargin, width: 100, height: 50), options: .usesLineFragmentOrigin, attributes: attrsBig, context: nil)

            let theLabUseOnlyImage = UIImage(named: "labUseOnly.png")
            theLabUseOnlyImage?.draw(in: CGRect(x: leftMargin + pictureWidth + 340, y: topMargin, width: pictureWidth, height: pictureWidth));

            vRushOrderLine1.draw(with: CGRect(x: leftMargin, y: topMargin + 70, width: 100, height: 25), options: .usesLineFragmentOrigin, attributes: attrsBig, context: nil)
            vRushOrderLine2.draw(with: CGRect(x: leftMargin, y: topMargin + 70 + 25, width: 100, height: 25), options: .usesLineFragmentOrigin, attributes: attrsBig, context: nil)

            "Date:".draw(with: CGRect(x: leftMargin, y: topMargin + 120, width: 30, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Practitioner:".draw(with: CGRect(x: leftMargin + 100, y: topMargin + 120, width: 60, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Phone:".draw(with: CGRect(x: leftMargin + 355, y: topMargin + 120, width: 30, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Billing Address:".draw(with: CGRect(x: leftMargin, y: topMargin + 150, width: 80, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Shipping Address:".draw(with: CGRect(x: leftMargin + 250, y: topMargin + 150, width: 80, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Patient:".draw(with: CGRect(x: leftMargin, y: topMargin + 200, width: 40, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Medical Record #:".draw(with: CGRect(x: leftMargin + 355, y: topMargin + 200, width: 80, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)

            "Gender:".draw(with: CGRect(x: leftMargin, y: topMargin + 220, width: 40, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Age:".draw(with: CGRect(x: leftMargin + 70, y: topMargin + 220, width: 30, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Wt (lbs.):".draw(with: CGRect(x: leftMargin + 150, y: topMargin + 220, width: 40, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Ht:".draw(with: CGRect(x: leftMargin + 225, y: topMargin + 220, width: 20, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Shoe Size:".draw(with: CGRect(x: leftMargin + 300, y: topMargin + 220, width: 50, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Shoe Type:".draw(with: CGRect(x: leftMargin + 400, y: topMargin + 220, width: 50, height: 10), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)

            
            "Diagnosis:".draw(with: CGRect(x: leftMargin, y: topMargin + 240, width: 50, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)

            
            
            vOrderDate.draw(with: CGRect(x: leftMargin + 35, y: topMargin + 120, width: 60, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vPractitioner.draw(with: CGRect(x: leftMargin + 165, y: topMargin + 120, width: 240, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vPractitionerPhone?.draw(with: CGRect(x: leftMargin + 390, y: topMargin + 120, width: 100, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            
          
            
            vBillingAddress.draw(with: CGRect(x: leftMargin + 85, y: topMargin + 150, width: 140, height: 60), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vShippingAddress.draw(with: CGRect(x: leftMargin + 355, y: topMargin + 150, width: 140, height: 60), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vPatientName.draw(with: CGRect(x: leftMargin + 45, y: topMargin + 200, width: 300, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vMedialRecordNumber?.draw(with: CGRect(x: leftMargin + 435, y: topMargin + 200, width: 100, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)

            vGender?.draw(with: CGRect(x: leftMargin + 45, y: topMargin + 220, width: 20, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vAge.draw(with: CGRect(x: leftMargin + 105, y: topMargin + 220, width: 40, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vWeight.draw(with: CGRect(x: leftMargin + 195, y: topMargin + 220, width: 25, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vHeight.draw(with: CGRect(x: leftMargin + 250, y: topMargin + 220, width: 45, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vShoeSize.draw(with: CGRect(x: leftMargin + 355, y: topMargin + 220, width: 40, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vShoeType?.draw(with: CGRect(x: leftMargin + 455, y: topMargin + 220, width: 100, height: 10), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)


            vDiagnosis?.draw(with: CGRect(x: leftMargin + 55, y: topMargin + 240, width: 400, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            
            
            
            "Orthosis Type".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 5,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Orthosis Material".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 45,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Corrections and Modifications".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 85,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Shell Specifications".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 165,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Posting".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 225,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Top Covers".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 305,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)
            "Instructions".draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 385,
                width: 550, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10Bold, context: nil)


            
            
            vOrthosisType.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 25,
                width: 530, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vOrthosisMaterial.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 65,
                width: 530, height: 15), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vCorrectionsAndModifications.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 105,
                width: 530, height: 55), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vShellSpecifications.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 185,
                width: 530, height: 55), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vPosting.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 245,
                width: 530, height: 55), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vTopCovers.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 325,
                width: 530, height: 55), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            vInstructions.draw(with: CGRect(
                x: leftMargin + 5, y: orderBoxTop + 405,
                width: 530, height: 55), options: .usesLineFragmentOrigin, attributes: attrs10, context: nil)
            

            
            context.restoreGState()
            UIGraphicsPopContext()
        }
    }

    
//
//    class func sendEmail() {
//
//        var gtlMessage = GTLGmailMessage()
//        gtlMessage.raw = self.generateRawString()
//
//        let appd = UIApplication.sharedApplication().delegate as! AppDelegate
//        let query = GTLQueryGmail.queryForUsersMessagesSendWithUploadParameters(nil)
//        query.message = gtlMessage
//
//        appd.service.executeQuery(query, completionHandler: { (ticket, response, error) -> Void in
//            println("ticket \(ticket)")
//            println("response \(response)")
//            println("error \(error)")
//        })
//    }
//
//    class func generateRawString() -> String {
//
//        var dateFormatter:DateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss Z"; //RFC2822-Format
//        var todayString:String = dateFormatter.string(from: Date())
//
//        var rawMessage = "" +
//            "Date: \(todayString)\r\n" +
//            "From: <mail>\r\n" +
//            "To: username <mail>\r\n" +
//            "Subject: Test send email\r\n\r\n" +
//        "Test body"
//
//        println("message \(rawMessage)")
//
//        return GTLEncodeWebSafeBase64(rawMessage.dataUsingEncoding(NSUTF8StringEncoding))
//    }
//
//    func sendEmail() {
//        var smtpSession = MCOSMTPSession()
//        smtpSession.hostname = "smtp.gmail.com"
//        smtpSession.username = "mattdwhittle@gmail.com"
//        smtpSession.password = "xxxxxxxxxxxxxxxx"
//        smtpSession.port = 465
//        smtpSession.authType = MCOAuthType.SASLPlain
//        smtpSession.connectionType = MCOConnectionType.TLS
//        smtpSession.connectionLogger = {(connectionID, type, data) in
//            if data != nil {
//                if let string = NSString(data: data, encoding: NSUTF8StringEncoding){
//                    NSLog("Connectionlogger: \(string)")
//                }
//            }
//        }
//
//        var builder = MCOMessageBuilder()
//        builder.header.to = [MCOAddress(displayName: "Rool", mailbox: "itsrool@gmail.com")]
//        builder.header.from = MCOAddress(displayName: "Matt R", mailbox: "mattdwhittle@gmail.com")
//        builder.header.subject = "My message"
//        builder.htmlBody = "Yo Rool, this is a test message!"
//
//        let rfc822Data = builder.data()
//        let sendOperation = smtpSession.sendOperationWithData(rfc822Data)
//        sendOperation.start { (error) -> Void in
//            if (error != nil) {
//                NSLog("Error sending email: \(error)")
//            } else {
//                NSLog("Successfully sent email!")
//            }
//        }
//    }
    
    
}
    


extension ViewController: UIImagePickerControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        imagePicker.dismiss(animated: true, completion: nil)
        guard let selectedImage = info[.originalImage] as? UIImage else {
            print("Image not found!")
            return
        }
        //imageTake.image = selectedImage
        let imageView = UIImageView(image: selectedImage)
        let theNumberOfAlreadyTakenPictures = reorderScrollView.subviews.count - 2;
        let thePictureHeight = reorderScrollView.bounds.size.height * 0.9;
        
        setImagePictureHeight = thePictureHeight;
        
        let theAspectRatio = selectedImage.size.height / selectedImage.size.width;
        let thePictureWidth = thePictureHeight / theAspectRatio;
        let theX = thePictureWidth * CGFloat(1.1) * CGFloat(theNumberOfAlreadyTakenPictures);
        imageView.frame = CGRect(x: theX, y: CGFloat(0), width: thePictureWidth, height: thePictureHeight)
        reorderScrollView.addSubview(imageView)
        reorderScrollView.contentSize = CGSize(width: CGFloat(theX + thePictureWidth), height: CGFloat(thePictureHeight));
        reorderScrollView.showsHorizontalScrollIndicator = false;
        reorderScrollView.showsHorizontalScrollIndicator = true;

    }
    
//    func sendEmailWithMailcore() {
//        let smtpSession = MCOSMTPSession()
//        smtpSession.hostname = "smtp.gmail.com"
//        smtpSession.username = "matthewwhittle530@gmail.com"
//        smtpSession.password = "IOXYEJesusChristGODSonSavior!"
//        smtpSession.port = 465
//        smtpSession.authType = MCOAuthType.saslPlain
//        smtpSession.connectionType = MCOConnectionType.TLS
//        smtpSession.connectionLogger = {(connectionID, type, data) in
//            if data != nil {
//                if let string = NSString(data: data!, encoding: String.Encoding.utf8.rawValue){
//                    NSLog("Connectionlogger: \(string)")
//                }
//            }
//        }
//
//        let builder = MCOMessageBuilder()
//        builder.header.to = [MCOAddress(displayName: "mattdwhittle", mailbox: "mattdwhittle@gmail.com")]
//        builder.header.from = MCOAddress(displayName: "matthewwhittle530", mailbox: "matthewwhittle530@gmail.com")
//        builder.header.subject = "My message"
//        builder.htmlBody = "Hi Matthew! this is a test message!"
//
//        let rfc822Data = builder.data()
//        let sendOperation = smtpSession.sendOperation(with: rfc822Data!)
//        sendOperation?.start { (error) -> Void in
//            if (error != nil) {
//                NSLog("Error sending email: \(error)")
//            } else {
//                NSLog("Successfully sent email!")
//            }
//        }
//    }
    
}
