namespace :indextank do

  desc "imports data into indextank"
  task :import => :environment do
    client = IndexTank::Client.new(ENV['INDEXTANK_API_URL'] || 'http://:ru9qFNqdHsqIvt@z9m8.api.indextank.com')
    index = client.indexes('lulz')
    Spill.all.each do |spill|
      puts(spill["_id"].to_s)
      index.document( spill["_id"].to_s).add(spill.to_document)      
    end
  end

end
