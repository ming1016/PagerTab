Pod::Spec.new do |s|


  s.name         = "SMPagerTab"
  s.version      = "0.0.1"
  s.summary      = "UIScrollView实现滑动转换页面，类似网易云音乐iOS版的页面滑动切换效果"

  s.homepage     = "https://github.com/ming1016/PagerTab"
  s.license      = "MIT"

  s.author       = { "ming1016" => "ming1016@foxmail.com" }
  s.source       = { :git => "https://github.com/ming1016/PagerTab.git", :tag => "0.0.1" }

  s.source_files  = "SMPagerTab/SMPagerTabView/**/*.{h,m}"
  s.dependency 'Masonry'
end
