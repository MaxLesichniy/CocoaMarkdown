Pod::Spec.new do |s|

  s.name          = 'CocoaMarkdown'
  s.version       = '1.3.6'
  s.summary       = 'Markdown parsing and rendering for iOS and OS X'
  s.description   = "CocoaMarkdown aims to solve two primary problems better than existing libraries:
More flexibility. CocoaMarkdown allows you to define custom parsing hooks or even traverse the Markdown AST using the low-level API.
Efficient NSAttributedString creation for easy rendering on iOS and OS X. Most existing libraries just generate HTML from the Markdown, which is not a convenient representation to work with in native apps."

  s.homepage      = 'https://github.com/MaxLesichniy/CocoaMarkdown'
  s.license       = 'MIT'

  s.author        = "Aymen letaief"
  s.ios.deployment_target = '9.0'

  s.source        = { :git => 'https://github.com/MaxLesichniy/CocoaMarkdown.git', :tag => "#{s.version}" }
  # s.preserve_paths = ['CocoaMarkdown.framework/*']
  # s.ios.source_files = 'CocoaMarkdown.framework/**/*.{h,m}'
  # s.ios.public_header_files = 'CocoaMarkdown.framework/Headers/*.h'
  # s.ios.vendored_frameworks = 'CocoaMarkdown.framework'
  s.source_files  = 'CocoaMarkdown'
  s.private_header_files = 'CocoaMarkdown/*_Private.h'
  s.ios.framework = 'UIKit'
  s.osx.framework = 'Cocoa'
  s.libraries = 'xml2'

  # s.xcconfig      = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  s.requires_arc  = true

  s.dependency 'cmark', '~> 0.21.0'
  s.dependency 'Ono', '~> 1.1.3'

end
