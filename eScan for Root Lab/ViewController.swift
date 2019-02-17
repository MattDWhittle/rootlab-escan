//
//  ViewController.swift
//  eScan for Root Lab
//
//  Created by RahMat on 12/2/18.
//  Copyright © 2018 rootlab. All rights reserved.
//

//(TEST) Update Scan Page
//(TEST) All Poly Chart to Poly Page


//TO ASK:
//Competition stealing work - CC practitioner, puts the other companies address

//TODO
//(TODO) Corrections and modifications Pg.
//(TODO) Need to read 4 other forms in readAllForms()
//(TODO) Need to update 4 other labels not blank
// Inverted and EVerted cast orientation, modifications text fields
// Heel cup height on orthosis specifications
// Posting rearfoot post, heel lift, text fields under rearfoot post elevator and motion

// (TODO) Top Covers ( Get rid of “and Extensions”, combine Top covers and Accomidations pages into one called Top covers)
// Remove Accommodations Button
// Revamp Top Covers Page

// (TEST - failure) Scans place images over foot buttons - loading image not working

// (TODO) orthotic descriptions should update after UiPicker edit
// (TODO) when expand view, make sure it doesn't expand off screen, scoll it up
// (TODO) if no email accounts set up on device, alert early
// (IN PROGRESS) When No Post is selected, everything on the form greys out except Non Corrective Forefoot Post
// (TODO) Accomodative EVA - grey out edit button on orthosis material
// (TODO) Button says EDIT should say "Select and Modify"
// (TODO) Top covers and extensions - the Top Cover Material goes to the right of Top Cover Lengths
// (TODO) ...then Forefoot Extensions 3 options
// (TODO) ...then poron
// (TODO) ...then bottom cover
// (TODO) UISwitches are smashed up on each other in small resolutions
//(TODO) If choose next day turnaround, be first line of work order
//(TODO) "Order confirmation will be sent to this address" (next to email)
//(TODO) Highlight the buttons where action needs to be taken - if weight not supplied and need to choose material thickness, let them know
//(TODO) Change Orthotic Device Page to be like page 5
// (TODO) what does no top cover mean - have None as the first top cover
//(TODO) If none selected, all the other options are disabled
//(TODO) Cannot click accomodations page
// (TODO) When change pactitioners, reset all grey/black fields
// (TODO) Check to see if the Material Order Items still match the new orthotic device screen
//(TODO) Change "Accommodations" to "Top Cover Additions and Accommodations" on the Orthotics Prescription Form
//(TODO) Accommodations page, the additions are on the left, and each addition will have an image with where it goes
//(TODO) Have Accommondations (feet on the right) with places you can check
//(TODO) Accommondations - Under the feet, have a "Per Photo" and a "Per Comments" (If so, require comments or per photo) (can choose 1 and 5 and "see comments)
//(TODO) Accommondations - If Neuroma pad selected, they have to select an interspace which is a dropdown 1,2,3,4
//(TODO) Accommondations - If heel pad selected, they have to select 1/16 or 1/8
//(TODO) Accommondations - make sure it says under heel pad  1/16 or 1/8 Poron
//(TODO) remove Sweet spot from Accommodations
//(TODO) 4 ft reinforcement something - under accommodations
// (TODO) Update orthoitic device pictures with real pictures
//  (TODO) cannot tell the button is disabled orthoticsPrescriptionViewController?.orthosisMaterialButton.isEnabled = theMOI.orthoticsMaterialSelection != 5;
// (TODO) Clicking here will erase the device name and open the keyboard forcing user to rename. It will then save in the My Devices menu under the new name.
//(TODO) Make a log in page
//(TODO) Corrections and Modifications if they choose as marked on cast, option to fill with Poron or not fill.  Then when print form out, put it on Top Covers and Extensions
//(TODO) transparent background on colors, buttons, and the logo
//(TODO) Orthosis Material:  Have "Per Weight" always available, if choose, type a weight in on that page.  Weight is autofilled
//(TODO) Add Poron under topcover, two buttons for 1/16 1/8, only one selected, not required
//(TODO) Add a "Ship to Patient" and an address - address only enabled if "Ship to Patient" enabled
//(TODO) Add stuff to My Devices - click on name
//Add a title box to practitioner page (Hold on this one)
// (TODO) what does  the 4/4 mean in posting - left and right 4 degree motion
// (TODO) Finish Defaults to Form
// (TODO) Add Save on Practitioner Page so it can turn light green
// (TODO) Add a Save to My Devices on the orthotics prescription page, then rename device
// (TODO) Diabetic default - If you have a medial heel cup 3/16 diabetic - just means diabetic
// (TODO) if orthosis length vinyl top cover, what color default: Bronze is for functional, forest is for sports, Black is for dress
// (TODO) if default practitioner selected, scroll wheel is still on New Practitioner if you navigate to that page
// (TODO) add field for intrinsic metatarsal pad in mm left and right
// (TODO) read forms to stored stuff, picker views and text
// (TODO) "Extension Material" instead of "Material", Top Covers and Extensions
// (TODO) Add red dots where things can be invald (isValid())
// (TODO) Validation - posting form - rearfoot post motion, one has to be selected,
// (TODO) Validation - Have to have heel cup both left and right
// (TODO) Validation - Rearfoot posting elevator, one must be selected
// (TODO) Corrections and modifications has to be the same if order two pairs - off same mold
// (TODO) if email / sftp fails sending, then show order not sent
// (TODO) make sure save patient data upon leaving screen even if next not
// (TODO) Poron is not a top cover material, but it is an add on
// (TODO) password protect
// (TODO) The submit page - have some sort of signature and disclaimer
// (TODO) Submit page has the work order
// (TODO) (and don't allow to change) default email
// (TODO) Complaiance language
//(TODO) Finish Form to Order
//(TODO) Finish Order to text
//(TODO) Finish making a document to attach to the email
// (TODO) reset picker views
// (TODO) In order to save, need patient name, doctor name
// (TODO) Richie Brace Form
// (TODO) Submit Form
// (TODO) Email created document
// (TODO) Better Pictures
// (TODO) Order a second pair, and reorder
// (TODO) if left is checked anywhere, left scan is required
// (TODO) if right is checked anywhere, right scan is required
// (TODO) Add medical record number, not required, patient date.
// (TODO) Make a left right or bilateral
// (TODO) Default is left right
// (TODO) Delete records after a year
// (TODO) reorder button, if checked, scans aren't required, on scan page
// (TODO) Accommodations - click and make dots - 5 spots, styloid,  - common spots, list spots accommodated, first med head, etc
// (TODO) Pictures - picture of the foot, mark stuff
// (TODO) Can take multiple pictures
// (TODO) Show pictures on screen
// (TODO) If Cannot save, fail startup
// (TODO) finish ResetForm() - reset green dots
// (TODO) Show escan images
//(IN PROGRESS, need INT validation) make age wieght height gender are valid numbers
// (TODO) Clean up warnings
// (TODO) Clean up extra IBOutlets





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

let orthosisMaterialPolypropyleneIndex = 0;
let orthosisMaterialGraphiteCompositeIndex = 1;
let orthosisMaterialFiberglassCompositeIndex = 2;
let orthosisMaterialAcrylicIndex = 3;
let orthosisMaterialHighDensityProlyetheleneIndex = 4;

let screenSize = UIScreen.main.bounds

let genderPickerViewValues = ["Gender", "Male", "Female"]

var persistedData: [NSManagedObject] = []
var persistedDataDefaults: [NSManagedObject] = []

var order : Order = Order();
var allOrders : [Order] = [];
var currentOrder = 0
var defaults : Defaults? = nil;
var amScanningLeftFoot = false;
var leftFootEscanDone = false;
var rightFootEscanDone = false;
var richieBraceHasBeenSelected = false;
var orthoticsHasBeenSelected = false;

let orthoticMateriaPickerMap: [Int] =
    [0, 0, 1, 2, 3,
     0, 0, 0, 4, 1,
     1, 1, 1, 0, 0,
     0, 0, 0, 0, 4, 0, 0, 0, 0, 0,
     4, 4, 4, 5, 0, 0, 0, 0, 0, 0];

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
    ["Left", "10", "12", "14", "16", "18", "20", "22"];

let orthosisSpecificationHeelCupRightPickerData: [String] =
    ["Right", "10", "12", "14", "16", "18", "20", "22"];

let orthosisMaterialColorLabels: [String] =
    ["Natural","White"];

let patientShoeTypeLabels: [String] =
["Shoe Type", "Athletic", "Boot", "Casual", "Dress", "Extra depth High Heel"];

let orthosisMaterialTypeLabels: [String] =
    ["Polypropylene","Graphite Composite (TL-2100)","Fiberglass Composite (TL-Silver)","Acrylic (Polydor)","High-Density Polyethylene (HDPE)"];

let orthosisPolypropyleneColorLabels: [String] =
    ["Natural","White"];

let orthosisPolypropyleneLabels: [String] =
    ["Per weight","1/8\"","5/32\"","3/16\"","1/4\""];

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

let topCoversAndExtensionsTopCoverLengthPickerData: [String] =
    ["Top cover length", "Orthosis only", "To sulcus", "Full length"];

let topCoversAndExtensionsTopCoverMaterialPickerData: [[String]] =
    [
        //add None here
        ["Vinyl", "Black", "Forest", "Bronze"],
        ["Leather", "Black", "Brown"],
        ["EVA", "1/16\"", "1/8\""],
        ["NCN™ (Nylon/Neoprene)", "1/16\"", "1/8\""],
        ["Diabetic", "1/16\" Poron, 1/8\" plastazote"],
    ];

let topCoversAndExtensionsForefootExtensionMaterialPickerData: [String] =
    ["None", "Poron", "Korex", "EVA", "NCN™"];

let topCoversAndExtensionsForefootExtensionThicknessPickerData: [String] =
    ["None", "1/16\"", "1/8\"", "3/16\"", "1/4\""];

let topCoversAndExtensionsForefootExtensionExtensionLengthPickerData: [String] =
    ["None", "Sulcus", "Full length"];

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
STBackgroundTaskDelegate, MeshViewDelegate, UIGestureRecognizerDelegate, AVCaptureVideoDataOutputSampleBufferDelegate, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {

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
    var patients = [Patient]()
    var photos = [FootPhoto]()
    var defaultPractitioner : Practitioner?
    var pages = [UIView]();
    
    
    func updateImagesForValidOrthoticsForm() {
        orthoticsPrescriptionViewController?.updateImagesForValidOrthoticsForm();
    }
    
    var backStack = [Int?]();
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        if (pickerView == topCoversAndExtensionsTopCoverMaterialPicker) {
            return topCoversAndExtensionsTopCoverMaterialPickerData.count
        }
       // toto here
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
        } else if (pickerView == topCoversAndExtensionsTopCoverLengthPicker) {
            return topCoversAndExtensionsTopCoverLengthPickerData.count;
        } else if (pickerView == topCoversAndExtensionsTopCoverMaterialPicker) {
            return topCoversAndExtensionsTopCoverMaterialPickerData[component].count;
        } else if (pickerView == topCoversAndExtensionsForefootExtensionMaterialPicker) {
            return topCoversAndExtensionsForefootExtensionMaterialPickerData.count;
        } else if (pickerView == topCoversAndExtensionsForefootExtensionThicknessPicker) {
            return topCoversAndExtensionsForefootExtensionThicknessPickerData.count;
        } else if (pickerView == topCoversAndExtensionsForefootExtensionExtensionLengthPicker) {
            return topCoversAndExtensionsForefootExtensionExtensionLengthPickerData.count;
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
        } else if (pickerView == topCoversAndExtensionsTopCoverLengthPicker) {
            pickerLabel?.text = topCoversAndExtensionsTopCoverLengthPickerData[row];
        } else if (pickerView == topCoversAndExtensionsTopCoverMaterialPicker) {
            pickerLabel?.text = topCoversAndExtensionsTopCoverMaterialPickerData[component][row];
        } else if (pickerView == topCoversAndExtensionsForefootExtensionMaterialPicker) {
            pickerLabel?.text = topCoversAndExtensionsForefootExtensionMaterialPickerData[row];
        } else if (pickerView == topCoversAndExtensionsForefootExtensionThicknessPicker) {
            pickerLabel?.text = topCoversAndExtensionsForefootExtensionThicknessPickerData[row];
        } else if (pickerView == topCoversAndExtensionsForefootExtensionExtensionLengthPicker) {
            pickerLabel?.text = topCoversAndExtensionsForefootExtensionExtensionLengthPickerData[row];
        } else if (pickerView == orthoticMaterialColorPicker) {
            pickerLabel?.text = orthosisMaterialColorLabels[row]
        } else if (pickerView == postingRearfootPostTypePicker) {
            if (orthoticDeviceSelected == 1) {
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
        } else if (pickerView == topCoversAndExtensionsTopCoverMaterialPicker) {
            if (pickerView.selectedRow(inComponent: component) != 0) {
                for i in 0...4 {
                    if (component != i) {
                        pickerView.selectRow(0, inComponent: i, animated: true);
                    }
                }
            }
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
        practitionerBillingAddressCountry.text = "*Country";
        practitionerBillingAddressFacilityName.text = "Business or Facility Name";
        

        practitionerShippingAddress1.text = "*Address 1";
        practitionerShippingAddress2.text = "Address 2";
        practitionerShippingAddressCity.text = "*City";
        practitionerShippingAddressState.text = "*State";
        practitionerShippingAddressZip.text = "*Zip";
        practitionerShippingAddressCountry.text = "*Country";
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
        practitionerBillingAddressCountry.textColor = practitionerBillingAddressCountry.text == "*Country" ? .gray : .black
        practitionerBillingAddressFacilityName.textColor = practitionerBillingAddressFacilityName.text == "*Business or Facility Name" ? .gray : .black
        
        practitionerShippingAddress1.textColor = practitionerShippingAddress1.text == "*Address 1" ? .gray : .black
        practitionerShippingAddress2.textColor = practitionerShippingAddress2.text == "Address 2" ? .gray : .black
        practitionerShippingAddressCity.textColor = practitionerShippingAddressCity.text == "*City" ? .gray : .black
        practitionerShippingAddressState.textColor = practitionerShippingAddressState.text == "*State" ? .gray : .black
        practitionerShippingAddressZip.textColor = practitionerShippingAddressZip.text == "*Zip" ? .gray : .black
        practitionerShippingAddressCountry.textColor = practitionerShippingAddressCountry.text == "*Country" ? .gray : .black
        practitionerShippingAddressFacilityName.textColor = practitionerShippingAddressFacilityName.text == "*Business or Facility Name" ? .gray : .black
        
        practitionerPhoneInput.text = thePractitioner.phone;
        practitionerEmailInput.text = thePractitioner.email;
        
        refreshPractitionerNameLabel();

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


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
        
        
        self.preferredContentSize.width = screenSize.width;
        self.preferredContentSize.height = screenSize.height;
        view.frame.size.width = screenSize.width;
        view.frame.size.height = screenSize.height;
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        order = Order.init(entity: NSEntityDescription.entity(forEntityName: "Order", in:context)!, insertInto: context);
        order.addToOrderMaterialItemList(MaterialOrderItem.init(entity: NSEntityDescription.entity(forEntityName: "MaterialOrderItem", in:context)!, insertInto: context));
        
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
            reorderLabel.font = UIFont(name: "Gil Sans-Bold", size: 32 * multiplier)
            
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

            orthoticsPrescriptionLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            orthoticDeviceLabel.font = UIFont(name: "Gil Sans-Bold", size: 100 * multiplier)
            orthosisChiefComplaintDiagnosisInput.font = UIFont(name: "Gil Sans-Bold", size: 60 * multiplier)

            
            patientGender.delegate = self;
            patientGender.dataSource = self;
            practitionerPicker.delegate = self;
            practitionerPicker.dataSource = self;
            postingRearfootPostTypePicker.delegate = self;
            postingRearfootPostTypePicker.dataSource = self;
            topCoversAndExtensionsTopCoverLengthPicker.delegate = self;
            topCoversAndExtensionsTopCoverLengthPicker.dataSource = self;
            topCoversAndExtensionsTopCoverMaterialPicker.delegate = self;
            topCoversAndExtensionsTopCoverMaterialPicker.dataSource = self;
            topCoversAndExtensionsForefootExtensionMaterialPicker.delegate = self;
            topCoversAndExtensionsForefootExtensionMaterialPicker.dataSource = self;
            topCoversAndExtensionsForefootExtensionThicknessPicker.delegate = self;
            topCoversAndExtensionsForefootExtensionThicknessPicker.dataSource = self;
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.delegate = self;
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.dataSource = self;

            
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
        
        clearPractitionerForm();
        
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
                defaultPractitioner = practitioners[Int(defaults!.defaultPractitioner)];
                readPractitionerToForm(thePractitioner: defaultPractitioner)
                practitionerPicker.selectRow(Int(defaults!.defaultPractitioner), inComponent: 0, animated: false);
            }

        }
        
//        practitionerBillingAddressInput.layer.borderWidth = 2
//        practitionerBillingAddressInput.layer.borderColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1).cgColor
//        practitionerBillingAddressInput.layer.cornerRadius = 8;
//
//        practitionerShippingAddressInput.layer.borderWidth = 2
//        practitionerShippingAddressInput.layer.borderColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1).cgColor
//        practitionerShippingAddressInput.layer.cornerRadius = 8;

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
       
        
       
        
        correctionsAndModificationsFillWIthPoronLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsFillWIthPoronRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
//        correctionsAndModificationsCastOrientationVerticalLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
//        correctionsAndModificationsCastOrientationVerticalRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
//        correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
//        correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
        correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
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
        topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.addTarget(self, action: #selector(switchChanged), for: UIControl.Event.valueChanged)
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
    @IBOutlet var orthosisMaterialFinishedUIImageView: UIImageView!
    @IBOutlet var correctionsAndModificationsFinishedUIImageView: UIImageView!
    @IBOutlet var orthosisSpecificationsFinishedUIImageView: UIImageView!
    @IBOutlet var postingFinishedUIImageView: UIImageView!
    @IBOutlet var topCoversAndExtensionsFinishedUIImageView: UIImageView!
    @IBOutlet var accommodationsFinishedUIImageView: UIImageView!
    @IBOutlet var rushOrderFinishedUIImageView: UIImageView!
    @IBOutlet var chiefComplaintDiagnosisFinishedUIImageView: UIImageView!

    
    
    @IBOutlet var newOrderButton: UIButton!
    @IBOutlet var existingOrderButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var defaultPractitionerButton: UIButton!
    @IBOutlet var deletePractitionerButton: UIButton!
    @IBOutlet var orthoticsButton: UIButton!
    @IBOutlet var orthoticskButton: UIButton!
    @IBOutlet var richieBraceButton: UIButton!
    @IBOutlet var orthosisMaterialButton: UIButton!
    @IBOutlet var orthosisCorrectionsAndModificationsButton: UIButton!
    @IBOutlet var orthosisSpecificationsButton: UIButton!
    @IBOutlet var orthosisPostingButton: UIButton!
    @IBOutlet var orthosisAccommodationsButton: UIButton!
    @IBOutlet var orthosisTopCoversAndExtensionsButton: UIButton!
    @IBOutlet var orthosisRushOrderButton: UIButton!
    @IBOutlet var orthosisCommentsInstructionsButton: UIButton!
    @IBOutlet var okDeletePractitioner: UIButton!
    @IBOutlet var cancelDeletePractitioner: UIButton!
    @IBOutlet var prescriptionButton: UIButton!
    @IBOutlet var escanFormButton: UIButton!
    @IBOutlet var escanLeftFootUIButton: UIButton!
    @IBOutlet var escanRightFootUIButton: UIButton!
    @IBOutlet var submitFormButton: UIButton!

    
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
    @IBOutlet var orthoticsPrescriptionLabel: UILabel!
    @IBOutlet var orthoticDeviceLabel: UILabel!
    @IBOutlet var orthosisChiefComplaintDiagnosisLabel: UILabel!
    @IBOutlet var orthoticMaterialTypeLabel: UILabel!
    @IBOutlet var areYouSureLabel: UILabel!
    @IBOutlet var areYouSureDeletePractitioner: UILabel!
    @IBOutlet var reorderLabel: UILabel!

    
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
    @IBOutlet var patientShoeTypeInput: UITextField!
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
    @IBOutlet var topCoversAndExtensionsTopCoverLengthPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsTopCoverMaterialPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsForefootExtensionMaterialPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsForefootExtensionThicknessPicker: UIPickerView!
    @IBOutlet var topCoversAndExtensionsForefootExtensionExtensionLengthPicker: UIPickerView!
    @IBOutlet var patientShoeTypePicker: UIPickerView!
    @IBOutlet var rushOrderExpressShippingPicker: UIPickerView!

    @IBOutlet var correctionsAndModificationsFillWIthPoronLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsFillWIthPoronRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsCastOrientationVerticalLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsCastOrientationVerticalRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch: UISwitch!
    @IBOutlet var correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch: UISwitch!
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
    @IBOutlet var topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch: UISwitch!
    @IBOutlet var rushOrder2DayTurnaroundUISwitch: UISwitch!
    @IBOutlet var rushOrderNextDayTurnaroundUISwitch: UISwitch!
    @IBOutlet var reorderUISwitch: UISwitch!

    @IBOutlet var commentsTextArea: UITextView!

    @IBOutlet weak var imageTake: UIImageView!


    func orthoticDeviceClickEdit() {
        orthoticDeviceClickEditOrSelect();
        changePageTo(pageTo: orthoticsFormPageIndex)

    }
    
    func orthoticDeviceClickSelect() {
        orthoticDeviceClickEditOrSelect();
        changePageTo(pageTo: scanFormPageIndex)
    }

    func orthoticDeviceClickEditOrSelect() {
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        theMOI.orthoticsMaterialPickerSelection = Int16(orthoticDeviceSelected);
        theMOI.orthoticsMaterialSelection = Int16(orthoticMateriaPickerMap[Int(theMOI.orthoticsMaterialPickerSelection)]);
        orthoticsPrescriptionViewController?.orthosisMaterialButton.isEnabled = theMOI.orthoticsMaterialSelection != 5;
        resetDueToOrthosisTypeChange();
        if (orthoticDeviceSelected == 0) { //Polypropylene
            
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 1) { //PolyMax
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 2) {//Graphite
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 3) {//Fiberglass
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 4) { //Acrylic
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 5) { //Multi Sport
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(4, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(1, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 6) { //Multi Sport Plus
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(4, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 7) { //Soft Sport
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(4, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(2, inComponent: 2, animated: false)
            
        } else if (orthoticDeviceSelected == 8) { //Soft Sport Flex
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(4, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(2, inComponent: 2, animated: false)
            
        } else if (orthoticDeviceSelected == 9) { //SSC™
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 3, animated: false)
            
            
        } else if (orthoticDeviceSelected == 10) { //Men's Dress
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(2, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(2, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 11) { //Women's Casual
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(1, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(1, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(0, inComponent: 0, animated: false)
            postingRearfootPostingElevatorOthermmLeft.text = "10"
            postingRearfootPostingElevatorOthermmRight.text = "10"
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(2, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 12) { //Women's High-Heel
            //TODO what is minimal heel cup?
            //                orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn = true;
            //                orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn = true;
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(0, inComponent: 0, animated: false)
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(2, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 13) { //Hole-Heel™
            //TODO 10-12?
            //                orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn = true;
            //                orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn = true;
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(0, inComponent: 0, animated: false)
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(2, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 14) { //Cobra
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(2, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(1, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(1, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(0, inComponent: 0, animated: false)
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(2, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 0, animated: false)
            
        } else if (orthoticDeviceSelected == 15) { //Blake 25
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
            orthosisSpecificationsOtherMedmmLeft.text="23";
            orthosisSpecificationsOtherMedmmRight.text="23";
            orthosisSpecificationsOtherLatmmLeft.text="21";
            orthosisSpecificationsOtherLatmmRight.text="21";
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(2, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
        } else if (orthoticDeviceSelected == 16) { //Blake 35˚
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
            orthosisSpecificationsOtherMedmmLeft.text="23";
            orthosisSpecificationsOtherMedmmRight.text="23";
            orthosisSpecificationsOtherLatmmLeft.text="21";
            orthosisSpecificationsOtherLatmmRight.text="21";
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(2, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
        } else if (orthoticDeviceSelected == 17) { //Blake 45˚
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(4, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(4, inComponent: 0, animated: false)
            orthosisSpecificationsOtherMedmmLeft.text="23";
            orthosisSpecificationsOtherMedmmRight.text="23";
            orthosisSpecificationsOtherLatmmLeft.text="21";
            orthosisSpecificationsOtherLatmmRight.text="21";
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(2, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
        } else if (orthoticDeviceSelected == 18) { //Modified UCBL
            //TODO 30?
            //                orthosisSpecificationsHeelCupHeight12mmLeftUISwitch.isOn = true;
            //                orthosisSpecificationsHeelCupHeight12mmRightUISwitch.isOn = true;
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(3, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
        } else if (orthoticDeviceSelected == 19) { //Cusion-Flex™
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            //TODO EVA Post?
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(2, inComponent: 3, animated: false)
            
        } else if (orthoticDeviceSelected == 20) { //Cushion-Flex-Control™
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
            
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = true;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(2, inComponent: 3, animated: false)
            
        } else if (orthoticDeviceSelected == 21) { //Diaba-Flex™
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(1, inComponent: 4, animated: false)
            
            //TODO EVA POST?
        } else if (orthoticDeviceSelected == 22) { //Diaba-Flex-Control™
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(2, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(2, inComponent: 0, animated: false)
//            correctionsAndModificationsCastOrientationVerticalLeftUISwitch.isOn = true;
//            correctionsAndModificationsCastOrientationVerticalRightUISwitch.isOn = true;
            
            postingRearfootPostTypePicker.selectRow(1, inComponent: 0, animated: false)
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = true;
            postingRearfootPostingElevator8mmRightUISwitch.isOn = true;
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(2, inComponent: 3, animated: false)
            
        } else if (orthoticDeviceSelected == 23) { //Accommodative
            //TODO what is deep?
            orthoticSpecificationsHeelCupHeightLeftPicker.selectRow(3, inComponent: 0, animated: false)
            orthoticSpecificationsHeelCupHeightRightPicker.selectRow(3, inComponent: 0, animated: false)
            
            orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(5, inComponent: 0, animated: false)
            orthoticSpecificationsAnteriorWidthRightPicker.selectRow(5, inComponent: 0, animated: false)
            
            postingRearfootPostTypePicker.selectRow(0, inComponent: 0, animated: false)
            
            topCoversAndExtensionsTopCoverLengthPicker.selectRow(3, inComponent: 0, animated: false)
            topCoversAndExtensionsTopCoverMaterialPicker.selectRow(2, inComponent: 3, animated: false)
            
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
        } else {
            changePageTo(pageTo: practitionerManagementPageIndex);
        }
    }
    
    @IBAction func ExistingOrderAction(sender: UIButton){
        changePageTo(pageTo: orderManagementPageIndex);
    }
    @IBAction func ClickBackAction(sender: UIButton){
        if (screenViewing == escanningPageIndex) {
            changePageTo(pageTo: scanFormPageIndex)
        } else if (screenViewing == eViewingMeshPageIndex) {
            nextButton.titleLabel?.text = "Next";
            backButton.titleLabel?.text = "Back";
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
            changePageTo(pageTo: orthoticsDeviceFormPageIndex);
        } else {
            changePageTo(pageTo: (backStack.popLast())!);
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
    }
    
    @IBAction func ClickNextAction(sender: UIButton){
        if (screenViewing == practitionerManagementPageIndex) {
            savePractitionerFromPage(setAsDefault: false);
        } else if (screenViewing == eViewingMeshPageIndex) {
            nextButton.titleLabel?.text = "Next";
            backButton.titleLabel?.text = "Back";

            eviewMesh.isHidden = true;
            dismissEViewMesh();
            if (amScanningLeftFoot) {
                let image = prepareScreenShotCurrentViewpointForUIImage();
                if (image == nil) {
                    escanLeftFootUIButton.setImage(image, for: UIControl.State.normal);
                } else {
                    escanLeftFootUIButton.setImage(UIImage(named: "checked.png"), for: UIControl.State.normal);
                }
                
                
                leftFootEscanDone = true;
            } else {
                rightFootEscanDone = true;
                
                let image = prepareScreenShotCurrentViewpointForUIImage();
                escanRightFootUIButton.setImage(image, for: UIControl.State.normal);

            }

            changePageTo(pageTo: scanFormPageIndex)

        } else if (screenViewing == patientManagementPageIndex) {

            let firstName = patientNameInput.text;
            let lastName = patientLastNameInput.text;
            
            
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
            changePageTo(pageTo: orthoticsAccommodationsAndAdditionsFormPageIndex);
        } else if (screenViewing == orthoticsAccommodationsAndAdditionsFormPageIndex) {
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
                newPatient.age = Int16(age!) ?? 0;
                newPatient.height = Int16(height!) ?? 0;
                newPatient.heightInches = Int16(heightInches!) ?? 0;
                newPatient.weight = Int16(weight!) ?? 0;
                newPatient.shoeSize = Int16(patientShoeSizeInput!.text!) ?? 0;
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
            order.orderPatient?.shoeType = patientShoeTypeLabels[patientShoeTypePicker.selectedRow(inComponent: 0)];

        }
    }
    
    func resetEverything() {
        clearPractitionerForm();
        patientNameLabel.text = "";
        patientNameInput.text = "";
        patientAgeInput.text = "";
        patientHeightInput.text = "";
        patientHeightInchesInput.text = "";
        patientWeightInput.text = "";
        patientShoeSizeInput.text = "";
        refreshPractitionerNameLabel();

    }
    
    @IBAction func ClickDeletePractitioner(sender: UIButton){
        
    }

    @IBAction func ClickDefaultPractitioner(sender: UIButton){
        savePractitionerFromPage(setAsDefault: true);
    }

    @IBAction func ClickOrthoticsForm(sender: UIButton){
        readAllForms();
        updateOrthosisScreenFromModel();

        orthoticsHasBeenSelected = true;
        changePageTo(pageTo: orthoticsDeviceFormPageIndex);
        materialNameLabel.text = "> Orthotics";
    }

    @IBAction func ClickRichieBraceForm(sender: UIButton){
        changePageTo(pageTo: richieBraceFormPageIndex);
        materialNameLabel.text = "> Richie Brace";
        richieBraceHasBeenSelected = true;
    }
    
    @IBAction func ClickOrthosisMaterial(sender: UIButton){
        ClickOrthosisMaterial();
    }
    
    func ClickOrthosisMaterial(){
        let theMOI : MaterialOrderItem = order.orderMaterialItemList!.object(at: currentOrder) as! MaterialOrderItem;
        orthoticMaterialTypeLabel.text = orthosisMaterialTypeLabels[Int(theMOI.orthoticsMaterialSelection)];
        orthoticMaterialColorPicker.isHidden = (Int(theMOI.orthoticsMaterialSelection) != 0)
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
        resetValuesForNewOrder();
        changeValuesBasedOnChangedInput(force: true);
        changePageTo(pageTo: orderManagementPageIndex)
    }
    
    @IBAction func ClickPractitionerManagementButton(sender: UIButton){
        changePageTo(pageTo: practitionerManagementPageIndex)
    }
    
    @IBAction func ClickPatientManagementButton(sender: UIButton){
        changePageTo(pageTo: patientManagementPageIndex)
    }
    
    @IBAction func ClickSubmitButton(sender: UIButton){
        changePageTo(pageTo: reviewAndSubmitPageIndex)
    }
    
    @IBAction func ClickEscanButton(sender: UIButton){
        changePageTo(pageTo: scanFormPageIndex)
    }
    
    @IBAction func ClickOrderManagementButton(sender: UIButton){
        if (orthoticsHasBeenSelected) {
            changePageTo(pageTo: orthoticsDeviceFormPageIndex)
        } else if (richieBraceHasBeenSelected) {
            
        } else {
            changePageTo(pageTo: newOrderTypePageIndex)
        }
    }

    @IBAction func ClickOkDeletePractitioner(sender: UIButton){
        areYouSureView.isHidden = true;
        let selectedRow = practitionerPicker.selectedRow(inComponent: 0);
        if (selectedRow > 0) {
            //TODO add a practitioner equals here
//            if (defaultPractitioner! == practitioners[selectedRow]) {
//                defaultPractitioner = nil;
//            }
            practitioners.remove(at: practitionerPicker.selectedRow(inComponent: 0));
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
    }

    @IBAction func clickRushOrder2DayTurnaround(sender: UIButton){
        if (rushOrder2DayTurnaroundUISwitch.isOn) {
            rushOrderNextDayTurnaroundUISwitch.isOn = false;
        }
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
    
    func 
        changePageTo(pageTo: Int?) {
        clearAllCarrotsFromLables();
        if (screenViewing == escanningPageIndex) {
            depthView.isHidden = true;
            eview.isHidden = true;
        } else if (screenViewing == eViewingMeshPageIndex) {
        } else {
            pages[screenViewing].isHidden = true;
            backStack.append(screenViewing);
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
            nextButton.isHidden = screenViewing == newOrderTypePageIndex;
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
        practitionerFinishedUIImageView.image = isValid ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        deletePractitionerButton.isEnabled = practitionerPicker.selectedRow(inComponent: 0) != 0;
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
            isNotEmptyAndIsNot(thisString: "*Country", stringToTest: practitionerShippingAddressCountry.text!) &&
            isNotEmptyAndIsNot(thisString: "*Address 1", stringToTest: practitionerBillingAddress1.text!) &&
            isNotEmptyAndIsNot(thisString: "*City", stringToTest: practitionerBillingAddressCity.text!) &&
            isNotEmptyAndIsNot(thisString: "*State", stringToTest: practitionerBillingAddressState.text!) &&
            isNotEmptyAndIsNot(thisString: "*Zip", stringToTest: practitionerBillingAddressZip.text!) &&
            isNotEmptyAndIsNot(thisString: "*Country", stringToTest: practitionerBillingAddressCountry.text!) &&
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
        eScanLabel.text = "eScan";
        submitLabel.text = "Submit";

    }

    func orthosisFormValid() -> Bool{
        return orthosisMaterialValid() &&
        correctionsAndModificationsValid() &&
        orthosisSpecificationsValid() &&
        postingValid() &&
        topCoversAndExtensionsValid() &&
        accommodationsValid() &&
        rushOrderValid() &&
            chiefComplaintDiagnosisValid();
    }

    func orthosisMaterialValid() -> Bool {
        let isWeightSupplied = Int((order.orderPatient?.weight) ?? 0) > 0;

        return isWeightSupplied || orthoticMaterialPicker.selectedRow(inComponent: 0) > 0;
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
    func topCoversAndExtensionsValid()-> Bool {
        if (
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0) > 0
            && topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0) > 0
            && topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0) > 0
            
            ) {
            return true;
        }
        if (
            topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0) == 0
                && topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0) == 0
                && topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0) == 0
            
            ) {
            return true;
        }
        return false;
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
        order.postingRearfootPostingElevator4mmLeft = postingRearfootPostingElevator4mmLeftUISwitch.isOn;
        order.postingRearfootPostingElevator8mmLeft = postingRearfootPostingElevator8mmLeftUISwitch.isOn;
        order.postingRearfootPostingElevator4mmRight = postingRearfootPostingElevator8mmRightUISwitch.isOn;
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
        
        
    }
    
    func readTopCoversAndExtensionsForm() {
        let theView = self.pickerView(topCoversAndExtensionsTopCoverLengthPicker, viewForRow: topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
        order.topCoversAndExtensionsTopCoverLength = (theView as! UILabel).text;

        let theView2 = self.pickerView(topCoversAndExtensionsForefootExtensionMaterialPicker, viewForRow: topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
        order.topCoversAndExtensionsForefootExtensionsMaterial = (theView2 as! UILabel).text;

        let theView3 = self.pickerView(topCoversAndExtensionsForefootExtensionThicknessPicker, viewForRow: topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
        order.topCoversAndExtensionsForefootExtensionsThickness = (theView3 as! UILabel).text;

        let theView4 = self.pickerView(topCoversAndExtensionsForefootExtensionExtensionLengthPicker, viewForRow: topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil)
        order.topCoversAndExtensionsForefootExtensionsExtensionLength = (theView4 as! UILabel).text;

        order.topCoversAndExtensionsBottomCoverMaterialEVA116 = topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.isOn;
        
    }
    
    func setTopCoversAndExtensionsFormFromOrder() {
        topCoversAndExtensionsBottomCoverMaterialEVA116UISwitch.isOn = order.topCoversAndExtensionsBottomCoverMaterialEVA116;
        
        topCoversAndExtensionsTopCoverLengthPicker.selectRow(topCoversAndExtensionsTopCoverLengthPickerData.index(of: order.topCoversAndExtensionsTopCoverLength!) ?? 0, inComponent: 0, animated: false)
        topCoversAndExtensionsForefootExtensionMaterialPicker.selectRow(topCoversAndExtensionsForefootExtensionMaterialPickerData.index(of: order.topCoversAndExtensionsForefootExtensionsMaterial!) ?? 0, inComponent: 0, animated: false)
        topCoversAndExtensionsForefootExtensionThicknessPicker.selectRow(topCoversAndExtensionsForefootExtensionThicknessPickerData.index(of: order.topCoversAndExtensionsForefootExtensionsThickness!) ?? 0, inComponent: 0, animated: false)
        topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectRow(topCoversAndExtensionsForefootExtensionExtensionLengthPickerData.index(of: order.topCoversAndExtensionsForefootExtensionsExtensionLength!) ?? 0, inComponent: 0, animated: false)
       
        
        
    }

    func readRushOrderForm() {
        order.rushOrder2DayTurnaround =
            rushOrder2DayTurnaroundUISwitch.isOn;
        order.rushOrderNextDayTurnaround =
            rushOrderNextDayTurnaroundUISwitch.isOn;
        
        let theSelectedRow = rushOrderExpressShippingPicker.selectedRow(inComponent: 0);
        if (theSelectedRow > 0) {
            let theView = self.pickerView(rushOrderExpressShippingPicker, viewForRow: theSelectedRow, forComponent: 0, reusing: nil)
            order.rushOrderExpressShiping = (theView as! UILabel).text;
        }

    }

    func setRushOrderFormFromOrder() {
        rushOrder2DayTurnaroundUISwitch.isOn =
            order.rushOrder2DayTurnaround;
        rushOrderNextDayTurnaroundUISwitch.isOn =
            order.rushOrderNextDayTurnaround;
        
        rushOrderExpressShippingPicker.selectRow(rushOrderExpressShippingPickerData.index(of: order.rushOrderExpressShiping ?? "") ?? 0, inComponent: 0, animated: false)
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
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft =
            correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn;
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight =
            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn;
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft =
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn;
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight =
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn;
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
            
            let accommodationsDescription = calculateAccommodationsOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.accommodationsTextView.text = accommodationsDescription;

            let topCoversAndExtensionsDescription = calculateTopCoversAndExtensionsOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.topCoversAndExtensionsTextView.text = topCoversAndExtensionsDescription;

            let commentsInstructionsDescription = calculateCommentsInstructionsOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.chiefComplaintDiagnosisTextView.text = commentsInstructionsDescription;
            
            let orthosisMaterialDescription = calculateOrthosisMaterialOrderDescriptionFromOrder();
            orthoticsPrescriptionViewController?.orthosisMaterialTextView.text = orthosisMaterialDescription;
            

            
            updateImagesForValidOrthoticsForm()
        }

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

        if(!orthoticMaterialColorPicker.isHidden) {
            let theView2 = self.pickerView(orthoticMaterialColorPicker, viewForRow: orthoticMaterialColorPicker.selectedRow(inComponent: 0), forComponent: 0, reusing: nil);
            order.orthosisMaterialColor = (theView2 as! UILabel).text;
        }
    }
    
    func setOrthosisMaterialFormFromOrder() {
        if (order.orthosisMaterialColor != nil) {
            orthoticMaterialColorPicker.selectRow(orthosisMaterialColorLabels.index(of: order.orthosisMaterialColor!) ?? 0, inComponent: 0, animated: false)
        }
        
        //TODO set orthosisMaterialOption
        
    }
    
    func readOrthosisSpecificationForm() {
//        order.orthosisSpecificationsHeelCupHeight10mmLeft =
//            orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn;
//        order.orthosisSpecificationsHeelCupHeight14mmLeft =
//            orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn;
//        order.orthosisSpecificationsHeelCupHeight18mmLeft =
//            orthosisSpecificationsHeelCupHeight18mmLeftUISwitch.isOn;
//        order.orthosisSpecificationsHeelCupHeight10mmRight =
//            orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn;
//        order.orthosisSpecificationsHeelCupHeight14mmRight =
//            orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn;
//        order.orthosisSpecificationsHeelCupHeight18mmRight =
//            orthosisSpecificationsHeelCupHeight18mmRightUISwitch.isOn;
        
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft =
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight =
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft =
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight =
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact =
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead =
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.isOn;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead =
        orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn;
     
        order.orthosisSpecificationsAnteriorWidthLeft =                 Int16(orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0))
        order.orthosisSpecificationsAnteriorWidthRight =                 Int16(orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0))

        order.orthosisSpecificationsOtherMedmmLeft = Int16(orthosisSpecificationsOtherMedmmLeft.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherMedmmRight = Int16(orthosisSpecificationsOtherMedmmRight.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherLatmmLeft = Int16(orthosisSpecificationsOtherLatmmLeft.text ?? "0") ?? 0;
        order.orthosisSpecificationsOtherLatmmRight = Int16(orthosisSpecificationsOtherLatmmRight.text ?? "0") ?? 0;

    }

    func setOrthosisSpecificationFormFromOrder() {
//            orthosisSpecificationsHeelCupHeight10mmLeftUISwitch.isOn =
//        order.orthosisSpecificationsHeelCupHeight10mmLeft;
//            orthosisSpecificationsHeelCupHeight14mmLeftUISwitch.isOn =
//        order.orthosisSpecificationsHeelCupHeight14mmLeft;
//            orthosisSpecificationsHeelCupHeight18mmLeftUISwitch.isOn =
//        order.orthosisSpecificationsHeelCupHeight18mmLeft;
//            orthosisSpecificationsHeelCupHeight10mmRightUISwitch.isOn =
//        order.orthosisSpecificationsHeelCupHeight10mmRight;
//            orthosisSpecificationsHeelCupHeight14mmRightUISwitch.isOn =
//        order.orthosisSpecificationsHeelCupHeight14mmRight;
//            orthosisSpecificationsHeelCupHeight18mmRightUISwitch.isOn =
//        order.orthosisSpecificationsHeelCupHeight18mmRight;
        
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeftUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft;
            orthosisSpecificationsOtherShellConfigurationsLateralFlangeRightUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight;
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeftUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft;
            orthosisSpecificationsOtherShellConfigurationsWideArchProfileRightUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight;
            orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContactUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact;
            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHeadUISwitch.isOn = 
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead;

            orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHeadUISwitch.isOn =
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead;

        
        orthoticSpecificationsAnteriorWidthLeftPicker.selectRow(
            Int(order.orthosisSpecificationsAnteriorWidthLeft), inComponent: 0, animated: false)
        orthoticSpecificationsAnteriorWidthRightPicker.selectRow(
            Int(order.orthosisSpecificationsAnteriorWidthRight), inComponent: 0, animated: false)
        
        
        
        orthosisSpecificationsOtherMedmmLeft.text =
            String(order.orthosisSpecificationsOtherMedmmLeft);
        orthosisSpecificationsOtherMedmmRight.text =
            String(order.orthosisSpecificationsOtherMedmmRight);
        
        orthosisSpecificationsOtherLatmmLeft.text = String(order.orthosisSpecificationsOtherLatmmLeft);
        orthosisSpecificationsOtherLatmmRight.text =  String(order.orthosisSpecificationsOtherLatmmRight);
        

        
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
        correctionsAndModificationsFillWIthPoronLeftUISwitch.isOn =
            order.correctionsAndModificationsFillWithPoronLeft;
        correctionsAndModificationsFillWIthPoronRightUISwitch.isOn =
            order.correctionsAndModificationsFillWithPoronRight;
        correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn =
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft;
            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn =
        order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn =
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft;
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn =
//        order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight;
    }
    
    func resetDueToOrthosisTypeChange() {
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
        
//        order.orthosisSpecificationsHeelCupHeight10mmLeft = false;
//        order.orthosisSpecificationsHeelCupHeight14mmLeft = false;
//        order.orthosisSpecificationsHeelCupHeight18mmLeft = false;
//        order.orthosisSpecificationsHeelCupHeight10mmRight = false;
//        order.orthosisSpecificationsHeelCupHeight14mmRight = false;
//        order.orthosisSpecificationsHeelCupHeight18mmRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoe = false;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft = false;
        order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight = false;
        order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead = false;
        order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead = false;
    
        order.rushOrder2DayTurnaround = false;
        order.rushOrderNextDayTurnaround = false;
        order.rushOrderRequestedOnOrBefore = false;
    
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
     
        setOrthosisMaterialFormFromOrder()
        setCorrectionsAndModificationsFromOrder()
        setOrthosisSpecificationFormFromOrder()
        setPostingFormFromOrder()
        setTopCoversAndExtensionsFormFromOrder()
        setRushOrderFormFromOrder()
        setCommentsInstructionsFormFromOrder()
        
        postingRearfootPostTypePicker.reloadAllComponents();
    }

    
    func calculateCorrectionsAndModificationsDescriptionFromOrder() -> String {
        var theReturn = "";
        if (order.correctionsAndModificationsNoFillerLeft) {
            theReturn += "No Filler Left, "
        }
        if (order.correctionsAndModificationsNoFillerRight) {
            theReturn += "No Filler Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillMinimalLeft) {
            theReturn += "Medial Arch Fill Minimal Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillMinimalRight) {
            theReturn += "Medial Arch Fill Minimal Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillStandardLeft) {
            theReturn += "Medial Arch Fill Standard Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillStandardRight) {
            theReturn += "Medial Arch Fill Standard Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillDecreasedLeft) {
            theReturn += "Medial Arch Fill Decreased Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillDecreasedRight) {
            theReturn += "Medial Arch Fill Decreased Right, "
        }
        if (order.correctionsAndModificationsMedialArchFillIncreasedLeft) {
            theReturn += "Medial Arch Fill Increased Left, "
        }
        if (order.correctionsAndModificationsMedialArchFillIncreasedRight) {
            theReturn += "Medial Arch Fill Increased Right, "
        }
//        if (order.correctionsAndModificationsCastOrientationVerticalLeft) {
//            theReturn += "Cast Orientation Vertical Left, "
//        }
//        if (order.correctionsAndModificationsCastOrientationVerticalRight) {
//            theReturn += "Cast Orientation Vertical Right, "
//        }
        if (order.correctionsAndModificationsFillWithPoronLeft) {
            theReturn += "Fill with Poron Left, "
        }
        if (order.correctionsAndModificationsFillWithPoronRight) {
            theReturn += "Fill with Poron Right, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeExtrinsicLeft) {
            theReturn += "Forefoot Correction Type Extrinsic Left, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeExtrinsicRight) {
            theReturn += "Forefoot Correction Type Extrinsic Right, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeIntrinsicLeft) {
            theReturn += "Forefoot Correction Type Intrinsic Left, "
        }
        if (order.correctionsAndModificationsForefootCorrectionTypeIntrinsicRight) {
            theReturn += "Forefoot Correction Type Intrinsic Right, "
        }

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }
    
    func calculatePostingDescriptionFromOrder() -> String{
        var theReturn = "";
        if (order.postingRearfootPostingElevator4mmLeft) {
            theReturn += "Rearfoot Posting Elevator 4mm Left, "
        }
        if (order.postingRearfootPostingElevator8mmLeft) {
            theReturn += "Rearfoot Posting Elevator 8mm Left, "
        }
        if (order.postingRearfootPostingElevator4mmRight) {
            theReturn += "Rearfoot Posting Elevator 4mm Right, "
        }
        if (order.postingRearfootPostingElevator8mmRight) {
            theReturn += "Rearfoot Posting Elevator 8mm Right, "
        }
        if (order.postingRearfootPostMotion0DegreesMotionLeft) {
            theReturn += "Rearfoot Posting Motion 0 Degrees Left, "
        }
        if (order.postingRearfootPostMotion0DegreesMotionRight) {
            theReturn += "Rearfoot Posting Motion 0 Degrees Right, "
        }
        if (order.postingRearfootPostMotion4DegreesMotionLeft) {
            theReturn += "Rearfoot Posting Motion 4 Degrees Left, "
        }
        if (order.postingRearfootPostMotion4DegreesMotionRight) {
            theReturn += "Rearfoot Posting Motion 4 Degrees Right, "
        }
        if (order.postingRearfootPostOptionsLongPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Long Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsLongPostFlangeRight) {
            theReturn += "Rearfoot Post Options Long Post Flange Right, "
        }
        if (order.postingRearfootPostOptionsShortPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Short Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsShortPostFlangeRight) {
            theReturn += "Rearfoot Post Options Short Post Flange Right, "
        }
        if (order.postingRearfootPostOptionsLateralPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Lateral Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsLateralPostFlangeRight) {
            theReturn += "Rearfoot Post Options Lateral Post Flange Right, "
        }
        if (order.postingRearfootPostOptionsMedialPostFlangeLeft) {
            theReturn += "Rearfoot Post Options Medial Post Flange Left, "
        }
        if (order.postingRearfootPostOptionsMedialPostFlangeRight) {
            theReturn += "Rearfoot Post Options Medial Post Flange Right, "
        }
        if (order.postingNonCorrectiveForefootPostFullWidthLeft) {
            theReturn += "Non Corrective Forefoot Post Full Width Left, "
        }
        if (order.postingNonCorrectiveForefootPostFullWidthRight) {
            theReturn += "Non Corrective Forefoot Post Full Width Right, "
        }
        if (order.postingNonCorrectiveForefootPostMedialCornerLeft) {
            theReturn += "Non Corrective Forefoot Post Medial Corner Left, "
        }
        if (order.postingNonCorrectiveForefootPostMedialCornerRight) {
            theReturn += "Non Corrective Forefoot Post Medial Corner Right, "
        }
        if (order.postingNonCorrectiveForefootPostLateralCornerWidthLeft) {
            theReturn += "Non Corrective Forefoot Post Lateral Corner Left, "
        }
        if (order.postingNonCorrectiveForefootPostLateralCornerRight) {
            theReturn += "Non Corrective Forefoot Post Lateral Corner Right, "
        }

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;

    }

    func calculateOrthosisSpecificationDescriptionFromOrder() -> String{
        var theReturn = "";
//        if (order.orthosisSpecificationsHeelCupHeight10mmLeft || order.orthosisSpecificationsHeelCupHeight10mmRight) {
//            theReturn += "Heel cup 10 mm"
//            if (order.orthosisSpecificationsHeelCupHeight10mmLeft && order.orthosisSpecificationsHeelCupHeight10mmRight) {
//                theReturn += ", "
//            } else if (order.orthosisSpecificationsHeelCupHeight10mmLeft) {
//                theReturn += " L, "
//            } else {
//                theReturn += " R, "
//            }
//        }
//        if (order.orthosisSpecificationsHeelCupHeight14mmLeft || order.orthosisSpecificationsHeelCupHeight14mmRight) {
//            theReturn += "Heel cup 14 mm"
//            if (order.orthosisSpecificationsHeelCupHeight14mmLeft && order.orthosisSpecificationsHeelCupHeight14mmRight) {
//                theReturn += ", "
//            } else if (order.orthosisSpecificationsHeelCupHeight14mmLeft) {
//                theReturn += " L, "
//            } else {
//                theReturn += " R, "
//            }
//        }
//        if (order.orthosisSpecificationsHeelCupHeight18mmLeft || order.orthosisSpecificationsHeelCupHeight18mmRight) {
//            theReturn += "Heel cup 18 mm"
//            if (order.orthosisSpecificationsHeelCupHeight18mmLeft && order.orthosisSpecificationsHeelCupHeight18mmRight) {
//                theReturn += ", "
//            } else if (order.orthosisSpecificationsHeelCupHeight18mmLeft) {
//                theReturn += " L, "
//            } else {
//                theReturn += " R, "
//            }
//        }
        if (order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft || order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight) {
            theReturn += "Lateral flange"
            if (order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft && order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsOtherShellConfigurationsLateralFlangeLeft) {
                theReturn += " L, "
            } else {
                theReturn += " R, "
            }
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft || order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight) {
            theReturn += "Wide arch profile"
            if (order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft && order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileRight) {
                theReturn += ", "
            } else if (order.orthosisSpecificationsOtherShellConfigurationsWideArchProfileLeft) {
                theReturn += " L, "
            } else {
                theReturn += " R, "
            }
        }

        if (order.orthosisSpecificationsOtherShellConfigurationsFitToEnclosedShoe) {
            theReturn += "Fit to enclosed shoe, "
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsThinMaterialAtHeelContact) {
            theReturn += "Thin material at heel contact, "
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFifthMetHead) {
            theReturn += "Cut out proximinal to fifth met head, "
        }
        if (order.orthosisSpecificationsOtherShellConfigurationsCutOutProximinalToFirstMetHead) {
            theReturn += "Cut out proximinal to first met head, "
        }
        
        theReturn += anteriorWidthPickerData[orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0)];

        if (orthoticSpecificationsAnteriorWidthLeftPicker.selectedRow(inComponent: 0) == orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0)) {
            theReturn += ", ";
        } else {
            theReturn += " L, ";
            theReturn += anteriorWidthPickerData[
                orthoticSpecificationsAnteriorWidthRightPicker.selectedRow(inComponent: 0)];
            theReturn += " R, ";
        }
        
        if (orthosisSpecificationsOtherMedmmLeft.text != "" &&
            orthosisSpecificationsOtherLatmmLeft.text != "0") {
            theReturn += "Med(mm) ";
            theReturn += orthosisSpecificationsOtherMedmmLeft.text!;
            if (orthosisSpecificationsOtherMedmmRight.text == orthosisSpecificationsOtherMedmmLeft.text) {
                theReturn += ", ";
            } else {
                theReturn += " L, ";
                theReturn += orthosisSpecificationsOtherMedmmRight.text!;
                theReturn += " R, ";
            }
        }
        
        if (orthosisSpecificationsOtherLatmmLeft.text != "" &&
            orthosisSpecificationsOtherLatmmLeft.text != "0") {
            theReturn += "Lat(mm) ";
            theReturn += orthosisSpecificationsOtherLatmmLeft.text!;
            if (orthosisSpecificationsOtherLatmmRight.text == orthosisSpecificationsOtherLatmmLeft.text) {
                theReturn += ", ";
            } else {
                theReturn += " L, ";
                theReturn += orthosisSpecificationsOtherLatmmRight.text!;
                theReturn += " R, ";
            }
        }
        
        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func calculateRushOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        if (order.rushOrder2DayTurnaround) {
            theReturn += "2 Day Turnaround, "
        }
        if (order.rushOrderNextDayTurnaround) {
            theReturn += "Next Day Turnaround, "
        }
        if (order.rushOrderExpressShiping != nil) {
            theReturn += order.rushOrderExpressShiping!;
        }

        if (theReturn.hasSuffix(", ")) {
            theReturn = String(theReturn.dropLast(2));
        }
        return theReturn;
    }

    func calculateAccommodationsOrderDescriptionFromOrder() -> String{
        var theReturn = "still working on completing this feature...";
        
        return theReturn;
    }

    func calculateOrthosisMaterialOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        if (order.orthosisMaterialOption != nil) {
            theReturn += order.orthosisMaterialOption! + ", ";
        }
        if (order.orthosisMaterialColor != nil) {
           theReturn += order.orthosisMaterialColor!
        }

        return theReturn;
    }

    func calculateCommentsInstructionsOrderDescriptionFromOrder() -> String{
        return order.chiefComplaintDiagnosis ?? "";
    }

    func calculateCommentsInstructionsOrderDescriptionFromOrderForEmail() -> String{
        return order.chiefComplaintDiagnosis! + "\n" + order.commentsInstructions!;
    }

    func calculateTopCoversAndExtensionsOrderDescriptionFromOrder() -> String{
        var theReturn = "";
        
        let theLengthIndex = topCoversAndExtensionsTopCoverLengthPicker.selectedRow(inComponent: 0)
        if (theLengthIndex > 0) {
            theReturn += "Length: " + topCoversAndExtensionsTopCoverLengthPickerData[theLengthIndex] + ", ";
        }

//        let theMaterialIndex = topCoversAndExtensionsTopCoverMaterialPicker.selectedRow(inComponent: 0)
//        if (theMaterialIndex > 0) {
//            theReturn += "Material: " + topCoversAndExtensionsTopCoverMaterialPickerData[theMaterialIndex] + ", ";
//        }

        let theExtensionThicknessIndex = topCoversAndExtensionsForefootExtensionThicknessPicker.selectedRow(inComponent: 0)
        if (theExtensionThicknessIndex > 0) {
            theReturn += "Extension Thickness: " + topCoversAndExtensionsForefootExtensionThicknessPickerData[theExtensionThicknessIndex] + ", ";
        }

        let theExtensionMaterialIndex = topCoversAndExtensionsForefootExtensionMaterialPicker.selectedRow(inComponent: 0)
        if (theExtensionMaterialIndex > 0) {
            theReturn += "Extension Material: " + topCoversAndExtensionsForefootExtensionMaterialPickerData[theExtensionMaterialIndex] + ", ";
        }
        
        let theExtensionExtensionLengthIndex = topCoversAndExtensionsForefootExtensionExtensionLengthPicker.selectedRow(inComponent: 0)
        if (theExtensionExtensionLengthIndex > 0) {
            theReturn += "Extension Length: " + topCoversAndExtensionsForefootExtensionExtensionLengthPickerData[theExtensionExtensionLengthIndex] + ", ";
        }
        
        if (order.topCoversAndExtensionsBottomCoverMaterialEVA116) {
            theReturn += "EVA 1/16\"";
        }
        //TODO add more here
        
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
            if (practitionerBillingAddressCountry.text == "*Country") {
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
            if (practitionerShippingAddressCountry.text == "*Country") {
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
                practitionerShippingAddressCountry.text = "*Country";
                practitionerShippingAddressCountry.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressCountry.text = practitionerShippingAddressCountry.text!;
                practitionerBillingAddressCountry.textColor = practitionerBillingAddressCountry.text == "*Country" ? .gray : .black
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerShippingAddressFacilityName) {
            if (practitionerShippingAddressFacilityName.text!.isEmpty) {
                practitionerShippingAddressFacilityName.text = "*Business or Facility Name";
                practitionerShippingAddressFacilityName.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn) {
                practitionerBillingAddressFacilityName.text = practitionerShippingAddressFacilityName.text!;
                practitionerBillingAddressFacilityName.textColor = practitionerBillingAddressFacilityName.text == "*Business or Facility Name" ? .gray : .black
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
                practitionerBillingAddressCountry.text = "*Country";
                practitionerBillingAddressCountry.textColor = .gray;
            }
            if (newPractitionerSameAsBillingAddressUiSwitch.isOn &&
                !(practitionerShippingAddressCountry.text == practitionerBillingAddressCountry.text! )) {
                newPractitionerSameAsBillingAddressUiSwitch.isOn = false;
            }
            setValuesBasedOnPractitionerPageValid();
        } else if (textField == practitionerBillingAddressFacilityName) {
            if (practitionerBillingAddressFacilityName.text!.isEmpty) {
                practitionerBillingAddressFacilityName.text = "*Business or Facility Name";
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

    func changeValuesBasedOnChangedInput() {
        changeValuesBasedOnChangedInput(force: false)
    }
    func changeValuesBasedOnChangedInput(force: Bool) {

        if (escanFormValid()) {
            eScanFinishedUIImageView.image = UIImage(named: "checked.png");
        }
        
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
            screenViewing == orthoticsChiefComplaintFormPageIndex
            || force) {
            updateImagesForValidOrthoticsForm()
        }
        
        if (screenViewing == orthoticsDeviceFormPageIndex || force) {
            if (orthoticDeviceSelected > -1) {
                orthoticsPrescriptionViewController?.orthosisHeadingLabel.text =  orthoticMaterialDescriptionMap[orthoticDeviceSelected];
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
            needToUpdateScreen = true;

        } else if (screenViewing == orthoticsRushOrderFormPageIndex || force) {
            needToUpdateScreen = true;

        } else if (screenViewing == orthoticsChiefComplaintFormPageIndex || force) {
            needToUpdateScreen = true;

        } else if (screenViewing == orthoticsAccommodationsAndAdditionsFormPageIndex || force) {
            needToUpdateScreen = true;

        }

        if (needToUpdateScreen || force) {
            updateOrthosisScreenFromModel()
        }
        
        let isEverythingValid = everythingValid();
        submitFormButton.isEnabled = isEverythingValid;
        submitFinishedUIImageView.image = isEverythingValid ? UIImage(named: "checked.png") : UIImage(named: "unchecked.png");
        
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
                practitionerBillingAddressCountry.textColor = practitionerBillingAddressCountry.text == "*Country" ? .gray : .black
                practitionerBillingAddressFacilityName.textColor = practitionerBillingAddressFacilityName.text == "*Business or Facility Name" ? .gray : .black

                setValuesBasedOnPractitionerPageValid();
            }
//        } else if (mySwitch == correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch && correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn) {
//            correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn = false;
//        } else if (mySwitch == correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch && correctionsAndModificationsForefootCorrectionTypeExtrinsicLeftUISwitch.isOn) {
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicLeftUISwitch.isOn = false;
//        } else if (mySwitch == correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch && correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn) {
//            correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn = false;
//        } else if (mySwitch == correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch && correctionsAndModificationsForefootCorrectionTypeExtrinsicRightUISwitch.isOn) {
//            correctionsAndModificationsForefootCorrectionTypeIntrinsicRightUISwitch.isOn = false;
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
    }

    @IBAction func clickPostingRearfootPostMotion4DegreesMotionLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion4DegreesMotionLeftUISwitch.isOn) {
            postingRearfootPostMotion0DegreesMotionLeftUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesLeft.text = "";
        }
    }

    @IBAction func clickPostingRearfootPostMotion0DegreesMotionRightUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn) {
            postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesRight.text = "";
        }
    }
    
    @IBAction func clickPostingRearfootPostMotion4DegreesMotionRightUISwitch(sender: UIButton) {
        if (postingRearfootPostMotion4DegreesMotionRightUISwitch.isOn) {
            postingRearfootPostMotion0DegreesMotionRightUISwitch.isOn = false;
            postingRearfootPostMotionOtherDegreesRight.text = "";
        }
    }
    
    
    @IBAction func clickPostingRearfootPostingElevator4mmLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator4mmLeftUISwitch.isOn) {
            postingRearfootPostingElevator8mmLeftUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmLeft.text = "";
        }
    }
    
    @IBAction func clickPostingRearfootPostingElevator8mmLeftUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator8mmLeftUISwitch.isOn) {
            postingRearfootPostingElevator4mmLeftUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmLeft.text = "";
        }
    }
    
    @IBAction func clickPostingRearfootPostingElevator4mmRightUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator4mmRightUISwitch.isOn) {
            postingRearfootPostingElevator8mmRightUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmRight.text = "";
        }
    }
    
    @IBAction func clickPostingRearfootPostingElevator8mmRightUISwitch(sender: UIButton) {
        if (postingRearfootPostingElevator8mmRightUISwitch.isOn) {
            postingRearfootPostingElevator4mmRightUISwitch.isOn = false;
            postingRearfootPostingElevatorOthermmRight.text = "";
        }
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
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            if patientShoeSizeInput.isEditing{
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddress1.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddress2.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddressCity.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddressState.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddressZip.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddressCountry.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            } else if practitionerBillingAddressFacilityName.isEditing {
                self.view.window?.frame.origin.y = -1 * keyboardHeight
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification: NSNotification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            if self.view.window?.frame.origin.y != 0 {
                self.view.window?.frame.origin.y += keyboardHeight
            }
        }
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
    
    @IBAction func emailMesh(sender: AnyObject) {
        order.orderPractitioner = practitioners[practitionerPicker.selectedRow(inComponent: 0)];
        
            
        mailViewController = MFMailComposeViewController.init()
        
        if mailViewController == nil {
            let alert = UIAlertController.init(title: "The email could not be sent.", message: "Please make sure an email account is properly setup on this device.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
            
            alert.addAction(defaultAction)
            
            present(alert, animated: true, completion: nil)
            
            return
        }
        
        mailViewController!.mailComposeDelegate = self
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            mailViewController!.modalPresentationStyle = .formSheet
        }
        
        mailViewController!.setToRecipients(["scans@root-lab.com"]);
        mailViewController!.setCcRecipients([(order.orderPractitioner?.email)!]);
        
        // Setup paths and filenames.
        
        let zipFilename = "Model.zip"
        let screenshotFilename = "Preview.jpg"
        
        let fullPathFilename = FileMgr.sharedInstance.full(screenshotFilename)
        
        FileMgr.sharedInstance.del(screenshotFilename)
        
        // Take a screenshot and save it to disk.
        
        if (!reorderUISwitch.isOn) {
            prepareScreenShotCurrentViewpoint(screenshotPath: fullPathFilename)
            
            // since file is save in prepareScreenShot() need to getData() here
            
            if let sshot = NSData(contentsOfFile: fullPathFilename) {
                
                mailViewController?.addAttachmentData(sshot as Data, mimeType: "image/jpeg", fileName: screenshotFilename)
            }
            else {
                let alert = UIAlertController.init(title: "Error", message: "no pic", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
                
                alert.addAction(defaultAction)
                
                present(alert, animated: true, completion: nil)
            }

        }
        
        var i = 0;
        for iUiImageView in reorderScrollView.subviews {
            let theImageView = (iUiImageView as! UIImageView);
            let theImage = theImageView.image;
            //Only get the images we put in, not the scrollbars
            if (theImageView.bounds.size.height == setImagePictureHeight) {
                let imageData = theImage!.pngData()!
                mailViewController!.addAttachmentData(imageData, mimeType: "image/png", fileName: "photo" + String(i) + ".png")
            }
            i = i + 1;
        }
        
        let thePractitionerName = (order.orderPractitioner?.firstName)! + " " + (order.orderPractitioner?.lastName)!;
        let thePatientName = (order.orderPatient?.firstName)! + " " + (order.orderPatient?.lastName)!;
        let theStandardSubject = "Prescription from " + thePractitionerName + " for " + thePatientName;
        let theSubject = (order.rushOrder2DayTurnaround ||
            order.rushOrderNextDayTurnaround) ? "RUSH ORDER: " + theStandardSubject : theStandardSubject;
        
        mailViewController!.setSubject(theSubject)
        
        let messageBody = calculateOrthosisSpecificationDescriptionFromOrder() + "; " + calculateRushOrderDescriptionFromOrder() + "; " +
            calculatePostingDescriptionFromOrder() + "; " +
            calculateCorrectionsAndModificationsDescriptionFromOrder() +
            calculateAccommodationsOrderDescriptionFromOrder() +
            calculateTopCoversAndExtensionsOrderDescriptionFromOrder() +
            calculateCommentsInstructionsOrderDescriptionFromOrderForEmail() +
            calculateOrthosisMaterialOrderDescriptionFromOrder()
        ;
        
        
        
        mailViewController?.setMessageBody(messageBody, isHTML: false)
        
        if (!reorderUISwitch.isOn) {

            if let meshToSend = _meshToSave {
                let zipfile = FileMgr.sharedInstance.saveMesh(zipFilename, data: meshToSend)
                
                if zipfile != nil {
                    mailViewController?.addAttachmentData(zipfile!, mimeType: "application/zip", fileName: zipFilename)
                }
            }
            else {
                
                mailViewController = nil
                
                let alert = UIAlertController.init(title: "The email could not be sent", message: "Exporting the mesh failed", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
                
                alert.addAction(defaultAction)
                
                present(alert, animated: true, completion: nil)
                
                return
            }
        }
        present(mailViewController!, animated: true, completion: nil)
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

//    func makePdf2() {
//        let aPDFDocument = PDFDocument();
//        
//        
//        let pdfLocation = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("nameOfPDFfile.pdf")
//        
//        aPDFDocument.insert(TestPDFPage(), at: 0)
//        
//        aPDFDocument.write(toFile: "/Users/rahmat/nameOfPDFfile.pdf")
//
//    }
//
//    class TestPDFPage :PDFPage{
//        override func draw(with box: PDFDisplayBox, to context: CGContext) {
//            super.draw(with: box, to: context)
//            
////            context.concatenate(CGAffineTransform(scaleX: 1.0, y: -1.0));
////            context.concatenate(CGAffineTransform(translationX: 0.0, y: -CGFloat(context.height)));
//            context.concatenate(CGAffineTransform(translationX: 0.0, y: 10.0));
//
//            
//            UIGraphicsPushContext(context)
//            context.saveGState()
//            
//            let aPath = UIBezierPath()
//            aPath.move(to: CGPoint(x: 0, y: 0))
//            aPath.addLine(to: CGPoint(x: 10, y: 10))
//            aPath.close()
//            
//            UIColor.red.set()
//            aPath.stroke()
//            aPath.fill()
//            
//            let paragraphStyle = NSMutableParagraphStyle()
//            paragraphStyle.alignment = .center
//            
//            let attrs = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Thin", size: 36)!, NSAttributedString.Key.paragraphStyle: paragraphStyle]
//            
//            let string = "How much wood would a woodchuck\nchuck if a woodchuck would chuck wood?"
//            string.draw(with: CGRect(x: 32, y: 32, width: 448, height: 448), options: .usesLineFragmentOrigin, attributes: attrs, context: nil)
//
//            
//
//            context.restoreGState()
//            UIGraphicsPopContext()
//        }
//    }

    
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
}
