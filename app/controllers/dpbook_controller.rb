class DpbookController < ApplicationController
  def handle_data
    json_data = JSON.parse(File.open("./public/omega.json").read)
    final_response = ""
    json_data.each do |b_c|
      b_c.each do |k,v|
        if k == "data"
          v.each do |rec|
           if rec.has_key?("author_data")
             auths_data = rec.delete("author_data") 
           else
             auths_data = nil
           end
           rec["subject_ids"] = rec["subject_ids"].join(",") if rec.has_key?("subject_ids")
           b = Book.new(rec)
           unless auths_data.nil?
             auths_data.each do |auth_data|
               auth_data["slug"] = auth_data.delete("id") if auth_data.has_key?("id")
               persisted_auth = Author.find(:first, :conditions => auth_data)
               if persisted_auth.nil?
                 b.authors << Author.new(auth_data)
               else
                 b.authors << persisted_auth
               end
             end
           end
           b.save
          end
          final_response += v.to_s
          final_response += "\n---------------------------\n"
        end
      end
    end
    render :json => final_response
  end
end
