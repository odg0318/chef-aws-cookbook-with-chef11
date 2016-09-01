task :default do
  puts '[Usage] rake aws'
end

task :aws do
  `rm -rf temp`
  `mkdir temp`

  Dir.chdir('temp')

  `gem install --install-dir . --no-document aws-sdk -v '~> 2.2'`

  aws_sdk_path = Dir.glob("gems/**/lib/aws-sdk.rb")[0]
  new_sdk_path = aws_sdk_path.gsub('aws-sdk.rb', 'aws-sdk-v2.rb')
  File.rename(aws_sdk_path, new_sdk_path) 

  `tar cvfz aws-libs.tar.gz gems`

  Dir.chdir('..')

  `rm -rf files`
  `mkdir files`
  `mkdir files/default`
  `cp -f temp/aws-libs.tar.gz files/default/aws-libs.tar.gz`

  `rm -rf temp`
end
