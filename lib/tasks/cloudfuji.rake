namespace :cloudfuji do
  desc "Run the initial setup for a Busido app. Copies config files and seeds db."
  task :install => :environment do
    user = User.first

    if user.nil?
      puts "Creating default user..."
      user = User.new
      user.email = "#{::Cloudfuji::Platform.name}@#{ENV['CLOUDFUJI_HOST']}"
      user.first_name = ::Cloudfuji::Platform.name[0..1].upcase
      user.last_name  = ::Cloudfuji::Platform.name
      user.ido_id = "temporary_user"
      user.save!
    end

    channel = Channel.first

    if channel.nil?
      puts "Creating default channel..."
      channel = Channel.create :name => "Tea room"

      ["Welcome to Kandan, the slickest chat app out there. Brought to you by the good people of CloudFuji (http://cloudfuji.com) and friends",
       "We think you'll really like Kandan, but if there's anything you would like to see, Kandan is fully open source, so you can dive into it or make suggestions on the mailing list.",
       "To get started, you can embed images or youtube clips, use the /me command (/me is in proper love with Kandan, innit!), upload files, or of course, just chat with your teammates.",
       "Just paste in an image url and type a subtitle http://kandan.me/images/kandan.png",
       "http://www.youtube.com/watch?v=Jgpty017CIw Same with youtube videos",
       "/me is in proper love with Kandan, innit!",
       "If you're the type of person who enjoys hacking on projects, the source to Kandan is at https://github.com/cloudfuji/kandan",
       "Well, that's about it. If you have any questions, concerns, or ideas, just shoot us an email support@cloudfuji.com! Have fun!",
       "Oh, sorry, one last thing - be sure to join the mailing list at https://groups.google.com/forum/?fromgroups#!forum/cloudfuji so you know there's a new release of Kandan!"
      ].each do |message|
        a = Activity.new
        a.content    = message
        a.channel_id = Channel.first
        a.user_id    = User.first
        a.action     = "message"
        a.save!
      end
    end

    # Create Hubot
    Rake::Task['kandan:boot_hubot'].invoke
  end

  desc "Run on update for a Busido app. Copies config files and seeds db."
  task :update => :environment do
    # Create Hubot if not already present
    Rake::Task['kandan:boot_hubot'].invoke
  end
end
