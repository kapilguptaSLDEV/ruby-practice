class Car < Vehicle
    BRANDS = ["Toyota", "Suzuki", "Tesla"];
    def initialize(brand, year, model, no_of_wheels)
        super
        @no_of_wheels = 4;
    end

end