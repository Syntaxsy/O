def encrypt_string(input_string):
    hex_codes = []
    
    for char in input_string:
        hex_codes.append(format(ord(char), 'x'))
    
    encrypted_lua_table = "{" + ', '.join([f"'{code}'" for code in hex_codes]) + "}"
    return encrypted_lua_table

# Beispielaufruf
plaintext = ""
encrypted_lua_table = encrypt_string(plaintext)
print(encrypted_lua_table)
