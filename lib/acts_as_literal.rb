require "acts_as_literal/version"

module ActsAsLiteral
    def self.included(base)
	    base.instance_eval do
		    def acts_as_literal(column_name = "name")
		        define_method(:to_param) do
		            "#{id}-#{URI.encode(self[column_name].to_s)}"
		        end
		    end
		end
	end
end