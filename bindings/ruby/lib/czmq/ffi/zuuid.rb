################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

module CZMQ
  module FFI

    # UUID support class
    class Zuuid
      class DestroyedError < RuntimeError; end

      # Boilerplate for self pointer, initializer, and finalizer
      class << self
        alias :__new :new
      end
      def initialize ptr, finalize=true
        @ptr = ptr
        if @ptr.null?
          @ptr = nil # Remove null pointers so we don't have to test for them.
        elsif finalize
          @finalizer = self.class.create_finalizer_for @ptr
          ObjectSpace.define_finalizer self, @finalizer
        end
      end
      def self.create_finalizer_for ptr
        Proc.new do
          ptr_ptr = ::FFI::MemoryPointer.new :pointer
          ptr_ptr.write_pointer ptr
          ::CZMQ::FFI.zuuid_destroy ptr_ptr
        end
      end
      def null?
        !@ptr or @ptr.null?
      end
      # Return internal pointer
      def __ptr
        raise DestroyedError unless @ptr
        @ptr
      end
      # So external Libraries can just pass the Object to a FFI function which expects a :pointer
      alias_method :to_ptr, :__ptr
      # Nullify internal pointer and return pointer pointer
      def __ptr_give_ref
        raise DestroyedError unless @ptr
        ptr_ptr = ::FFI::MemoryPointer.new :pointer
        ptr_ptr.write_pointer @ptr
        ObjectSpace.undefine_finalizer self if @finalizer
        @finalizer = nil
        @ptr = nil
        ptr_ptr
      end

      # Create a new UUID object.
      def self.new()
        ptr = ::CZMQ::FFI.zuuid_new()
        __new ptr
      end

      # Destroy a specified UUID object.
      def destroy()
        return unless @ptr
        self_p = __ptr_give_ref
        result = ::CZMQ::FFI.zuuid_destroy(self_p)
        result
      end

      # Create UUID object from supplied ZUUID_LEN-octet value.
      def self.new_from(source)
        result = ::CZMQ::FFI.zuuid_new_from(source)
        result = Zuuid.__new result, true
        result
      end

      # Set UUID to new supplied ZUUID_LEN-octet value.
      def set(source)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_set(self_p, source)
        result
      end

      # Set UUID to new supplied string value skipping '-' and '{' '}'
      # optional delimiters. Return 0 if OK, else returns -1.         
      def set_str(source)
        raise DestroyedError unless @ptr
        self_p = @ptr
        source = String(source)
        result = ::CZMQ::FFI.zuuid_set_str(self_p, source)
        result
      end

      # Return UUID binary data.
      def data()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_data(self_p)
        result
      end

      # Return UUID binary size
      def size()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_size(self_p)
        result
      end

      # Returns UUID as string
      def str()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_str(self_p)
        result
      end

      # Return UUID in the canonical string format: 8-4-4-4-12, in lower
      # case. Caller does not modify or free returned value. See        
      # http://en.wikipedia.org/wiki/Universally_unique_identifier      
      def str_canonical()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_str_canonical(self_p)
        result
      end

      # Store UUID blob in target array
      def export(target)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_export(self_p, target)
        result
      end

      # Check if UUID is same as supplied value
      def eq(compare)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_eq(self_p, compare)
        result
      end

      # Check if UUID is different from supplied value
      def neq(compare)
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_neq(self_p, compare)
        result
      end

      # Make copy of UUID object; if uuid is null, or memory was exhausted,
      # returns null.                                                      
      def dup()
        raise DestroyedError unless @ptr
        self_p = @ptr
        result = ::CZMQ::FFI.zuuid_dup(self_p)
        result = Zuuid.__new result, false
        result
      end

      # Self test of this class.
      def self.test(verbose)
        verbose = !(0==verbose||!verbose) # boolean
        result = ::CZMQ::FFI.zuuid_test(verbose)
        result
      end
    end
  end
end

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
