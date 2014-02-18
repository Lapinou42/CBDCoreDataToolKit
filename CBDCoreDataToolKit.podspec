Pod::Spec.new do |s|


  s.name         = "CBDCoreDataToolKit"
  s.version      = "2.0.0"
  s.summary      = "Cloning, replacing, importing with CoreData"

  s.description  = <<-DESC
                  Cloning, replacing, importing with CoreData

                  * cloning a NSManagedObject from a NSManagedObjectContext (MOC) to another
                  * replacing a NSManagedObject by another
                  * importing objects from a MOC to another MOC
                  * wrapping methods for fetching objects. These methods don't create the MOC, the NSManagedObjectModel, etc. So, they are fully working with NSPersistentDocument
                   DESC

  s.author        = { "Colas" => "colas.bardavid@gmail.com" }
  s.homepage      = "https://github.com/colasjojo/CBDCoreDataToolKit"

  s.license = { :type => 'MIT'}

  s.source       = { :git => 'https://github.com/colasjojo/CBDCoreDataToolKit.git', 
                     :tag =>  "#{s.version}" }

  s.source_files = 'Classes/CBDCoreDataToolKit.h'
  s.requires_arc = true

# *******************************
# ************* TODO ************
# *******************************
#
# Comment out the following line to see the TODO
  s.prefix_header_contents = '#define TODO(args...)'
# *******************************


  s.subspec 'Importing' do |ss|
    ss.dependency 'CBDCoreDataToolKit/ActiveRecord'


    ss.source_files = 'Classes/Importing/*.{h,m}'
    ss.requires_arc = true
    ss.ios.platform   = :ios, '5.0'
    ss.osx.platform   = :osx, '10.7'


    ss.subspec 'CBDCoreDataDiscriminator' do |sss|
      sss.dependency 'CBDCoreDataToolKit/Misc'
      sss.dependency 'CBDCoreDataToolKit/CBDDecisionCenter+Unit'

      sss.source_files = 'Classes/Importing/CBDCoreDataDiscriminator/*.{h,m}'
      sss.requires_arc = true
      sss.ios.platform   = :ios, '5.0'
      sss.osx.platform   = :osx, '10.7'

      sss.subspec 'CBDCoreDataDiscriminatorHint' do |ssss|
        ssss.source_files = 'Classes/Importing/CBDCoreDataDiscriminator/CBDCoreDataDiscriminatorHint/**/*.{h,m}'
        ssss.requires_arc = true
        ssss.ios.platform   = :ios, '5.0'
        ssss.osx.platform   = :osx, '10.7'
      end

    end



    ss.subspec 'CBDCoreDataDecision' do |sss|
      sss.dependency 'CBDCoreDataToolKit/Misc'

      sss.source_files = 'Classes/Importing/CBDCoreDataDecision/**/*.{h,m}'
      sss.requires_arc = true
      sss.ios.platform   = :ios, '5.0'
      sss.osx.platform   = :osx, '10.7'

    end

  end



  s.subspec 'Cloning' do |ss|
    ss.source_files = 'Classes/Cloning/**/*.{h,m}'
    ss.requires_arc = true
    ss.ios.platform   = :ios, '5.0'
    ss.osx.platform   = :osx, '10.7'   
  end



  s.subspec 'Replacing' do |ss|
    ss.source_files = 'Classes/Replacing/**/*.{h,m}'
    ss.requires_arc = true
    ss.ios.platform   = :ios, '5.0'
    ss.osx.platform   = :osx, '10.7'
  end
  

  s.subspec 'ActiveRecord' do |ss|
    ss.source_files = 'Classes/ActiveRecord/**/*.{h,m}'
    ss.requires_arc = true
  end


  s.subspec 'Misc' do |ss|
    ss.source_files = 'Classes/Misc/**/*.{h,m}'
    ss.requires_arc = true
    ss.ios.platform   = :ios, '5.0'
    ss.osx.platform   = :osx, '10.7'
  end




  s.ios.platform   = :ios, '5.0'
  s.osx.platform   = :osx, '10.7'

  s.framework = 'CoreData'
  
  
end
