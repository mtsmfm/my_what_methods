require "my_what_methods/version"

module MyWhatMethods
  def what?(expected, *args)
    methods.select {|method_name|
      if method(method_name).arity == args.count
        obj =
          begin
            dup
          rescue
            self
          end

        begin
          obj.__send__(method_name, *args) == expected
        rescue
          false
        end
      end
    }
  end
end

Object.include MyWhatMethods
