 class Vehicle

    attr_accessor :brand, :year, :model, :no_of_wheels;

    def initialize(brand, year, model, no_of_wheels)
        @brand = brand;
        @year = year;
        @model = model;
        @no_of_wheels = no_of_wheels;
    end

    def self.instance_count
        ObjectSpace.each_object(self).count
    end

    def self.descendants
     descendants = []
      ObjectSpace.each_object(singleton_class) do |k|
        # prepends to front of descendants
        descendants.unshift k unless k == self
      end
      descendants
    end
 
    def self.subclasses
        subclasses, chain = [], descendants
        chain.each do |k|
            subclasses << k unless chain.any? { |c| c > k }
        end
        subclasses
    end

    def self.get_hash
        hash = {}
        hash[:count] =  self.instance_count
        sub_class_arr = []
        self.subclasses.each do |sub_klass|
            sub_klass_hash= {}
            sub_klass_hash[sub_klass.to_s.to_sym] = sub_klass.get_hash
            sub_class_arr << sub_klass_hash
        end
        hash[:subclasses] = sub_class_arr unless sub_class_arr.empty?
        hash
    end


 end