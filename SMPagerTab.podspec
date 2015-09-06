Pod::Spec.new do |s|
  s.name         = "SMPagerTab"
  s.version      = "0.0.1"
  s.homepage     = "https://github.com/ming1016/PagerTab"
  s.license      = "MIT"
  s.author       = { "ming1016" => "ming1016@foxmail.com" }
  s.source       = { :git => "https://github.com/ming1016/PagerTab.git" :tag => s.version.to_s }
  s.source_files  = 'SMPagerTab/SMPagerTabView/**/*.{h,m}'
  s.dependency 'Masonry', '~> 0.6.2'
end
