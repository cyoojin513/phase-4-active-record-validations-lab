class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validates :clickbait?, inclusion: {in: ["Won't Believe", "Secret", `Top`, "Guess"]}

  def clickbait?
    # "Won't Believe" || "Secret" || `Top #{Integer}` || "Guess"
      errors.add(:title, "Matching title not found")
  end
end
