def convert_temp(temperature, input_scale: 'celsius', output_scale: 'celsius')
    temp_conv_table = {
        k_to_c: -> (k) { k - 273.15 },
        k_to_f: -> (k) { k * 5.0 / 9.0 + 32 + 273.15 },
        c_to_f: -> (c) { c * 5.0 / 9.0 + 32 },
        c_to_k: -> (c) { c + 273.15 },
        f_to_c: -> (f) { (f - 32) * 5.0 / 9.0 },
        f_to_k: -> (f) { (f - 32) * 5.0 / 9.0 + 273.15 }
    }
    
    key = ("#{input_scale[0]}_to_#{output_scale[0]}").to_sym
    temp_conv_table.has_key?(key) ? temp_conv_table[key].call(temperature) : temperature
end
