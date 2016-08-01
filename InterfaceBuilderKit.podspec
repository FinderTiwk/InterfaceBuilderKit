Pod::Spec.new do |spec|
  spec.name         = "InterfaceBuilderKit"      #名称
  spec.version      = "1.0.0"                    #版本号
  spec.summary      = "在interface builder中快速设置一些Xcode没有提供的custom runtime attributes的UI分类"
  spec.homepage     = "http://findertiwk.github.io"
  spec.license      = 'MIT'
  spec.author       = { "_Finder丶Tiwk" => "136652711@qq.com" }
  spec.source       = { :git => "https://github.com/FinderTiwk/InterfaceBuilderKit.git", :tag => "v1.0.0" }
  spec.platform     = :ios, '8.0'    #支持的系统
  spec.requires_arc = true           #是否需要arc

  # UIView
  spec.subspec 'UIView' do |view|
      view.source_files = 'InterfaceBuilderKit/Src/UIView/*.{h,m}'
      view.public_header_files = 'InterfaceBuilderKit/Src/UIView/*.h'
  end

  # UIButton
  spec.subspec 'UIButton' do |button|
      button.source_files = 'InterfaceBuilderKit/Src/UIButton/*.{h,m}'
      button.public_header_files = 'InterfaceBuilderKit/Src/UIButton/*.h'
  end

  # UITextField
  spec.subspec 'UITextField' do |button|
      button.source_files = 'InterfaceBuilderKit/Src/UITextField/*.{h,m}'
      button.public_header_files = 'InterfaceBuilderKit/Src/UITextField/*.h'
  end

  # UITableView
  spec.subspec 'UITableView' do |button|
      button.source_files = 'InterfaceBuilderKit/Src/UITableView/*.{h,m}'
      button.public_header_files = 'InterfaceBuilderKit/Src/UITableView/*.h'
  end

end
