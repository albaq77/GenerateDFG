import re

def parse_store_instruction(instruction):
    # Match the format of the store instruction
    match = re.match(r'store (?P<type>[<\w\s\dx]+) (?P<value>.+?), .* (?P<pointer>.+?), align (?P<align>\d+)', instruction)
    if match:
        var_type = match.group('type').strip()
        size = None  # Initialize size

        # Determine the size from the type
        if var_type.startswith('<'):
            # Handle vector types like <4 x i32>
            vector_match = re.match(r'<(?P<count>\d+) x i(?P<bit>\d+)>', var_type)
            if vector_match:
                count = int(vector_match.group('count'))
                bit = int(vector_match.group('bit'))
                size = count * bit
        else:
            # Handle simple types like i32, i8, etc.
            scalar_match = re.match(r'i(?P<bit>\d+)', var_type)
            if scalar_match:
                size = int(scalar_match.group('bit'))

        # If size is still None, set a default or raise an error
        if size is None:
            size = 0  # or raise an error if size is critical

        # Attempt to get a variable name from the pointer
        pointer = match.group('pointer')
        var_name_match = re.search(r'@(\w+)', pointer)
        if var_name_match:
            var_name = var_name_match.group(1)
        else:
            var_name = "unknown"

        return (var_name, var_type, size)
    else:
        return None

with open('storeIns.txt', 'r') as file:
    for line in file:
        line = line.strip()
        if line.startswith('store'):
            result = parse_store_instruction(line)
            if result:
                print(f"Variable: {result[0]}, Type: {result[1]}, Size: {result[2]} bits")
