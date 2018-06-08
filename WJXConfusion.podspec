Pod::Spec.new do |s|
s.name = 'WJXConfusion'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = '代码混淆脚本!'
s.description = '代码混淆脚本,小概率避免被逆向!'
s.homepage = 'https://github.com/wangjixiao1992/WJXConfusion'
s.authors = {'wangjixiao' => '642907599@qq.com' }
s.source = {:git => "https://github.com/wangjixiao1992/WJXConfusion.git", :tag => "v1.0.0"}
s.source_files  = "**/*.{h,sh,list, }"
s.platform = :ios, "8.0"
s.requires_arc = false
end
