namespace :indextank do

  desc "imports data into indextank"
  task :import => :environment do
    client = IndexTank::Client.new(ENV['INDEXTANK_API_URL'])
    index = client.indexes('idx')
    Spill.all.each do |spill|
      puts(spill["_id"].to_s)
      index.document( spill["_id"].to_s).add(spill.to_document)      
    end
  end

end
