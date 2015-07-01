class Assembly < ActiveRecord::Base
  has_many :sequences
  has_many :genes, through: :sequences
  has_many :hits, through: :genes

  # def hits
  #   hits = []
  #   genes = Gene.joins(sequence: [:assembly]).where('assemblies.name ="'+name+'"')
  #   genes.each do |g|
  #     hits += g.hits
  #   end
  #   hits.sort! {|a, b| b.percent_similarity <=> a.percent_similarity}
  # end
end

# SELECT "hits".*
# FROM "hits"
#   INNER JOIN "genes" ON "hits"."subject_id" = "genes"."id"
#   INNER JOIN "sequences" ON "genes"."sequence_id" = "sequences"."id"
# WHERE "sequences"."assembly_id" = 1
#   AND "hits"."subject_type" = "Gene"
