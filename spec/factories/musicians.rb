FactoryGirl.define do
  factory :johannes, :class => "Musician" do
    first_name "Johannes"
    last_name "Thoma"
  end

  factory :gina, :class => "Musician" do
    first_name "Gina"
    last_name "Schwarz"
  end

  factory :klemens, :class => "Musician" do
    first_name "Klemens"
    last_name "Marktl"
  end

  factory :trio, :class => "Band" do
    band_name "Johannes Thoma Trio"
  end

  factory :schwarzmarkt, :class => "Band" do
    band_name "Schwarzmarkt"
  end
end
