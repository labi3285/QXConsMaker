Pod::Spec.new do |s|

  s.name         = "QXConsMaker"
  s.version      = "0.0.6"
  s.summary      = "The easiest way to layout in swift."
  s.description  = <<-DESC
                    The easiest way to layout in swift. Just enjoy!
                   DESC
  s.homepage     = "https://github.com/labi3285/QXConsMaker"
  s.license      = "MIT"
  s.author       = { "labi3285" => "766043285@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/labi3285/QXConsMaker.git", :tag => "#{s.version}" }
  s.source_files  = "QXConsMaker/QXConsMaker/*.swift"
  s.requires_arc = true

end
