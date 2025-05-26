import re
import logging
from collections import defaultdict

# Step 1: Parse the CFG (Control Flow Graph)
def parse_cfg(cfg_str):
    cfg = defaultdict(list)
    # Adjust regex to match transitions in the format "BBx -> BBy"
    pattern = r'BB(\d+)\s*->\s*BB(\d+)'
    matches = re.findall(pattern, cfg_str)
    
    logging.debug(f"Found {len(matches)} transitions in CFG.")
    
    for bb, next_bb in matches:
        cfg[bb].append(next_bb)  # Store edges from one BB to another
    
    logging.debug(f"CFG parsed: {cfg}")
    return cfg

# Step 2: Parse the dynamic execution sequence
def parse_execution_sequence(seq_str):
    execution_sequence = re.findall(r'main\*(\d+)', seq_str)
    logging.debug(f"Execution sequence: {execution_sequence}")
    return execution_sequence

# Step 3: Build the dependency graph with edge weights
def build_dependency_graph(execution_sequence, cfg):
    edge_weights = defaultdict(int)  # Will hold the count of transitions between BBs
    logging.debug("Building dependency graph...")
    
    # Iterate through the execution sequence
    for i in range(1, len(execution_sequence)):
        prev_bb = execution_sequence[i - 1]
        curr_bb = execution_sequence[i]
        
        # Only count the transitions that are in the CFG
        if curr_bb in cfg.get(prev_bb, []):
            edge_weights[(prev_bb, curr_bb)] += 1
            logging.debug(f"Transition from BB{prev_bb} to BB{curr_bb} counted.")
    
    logging.debug(f"Edge weights: {dict(edge_weights)}")
    return edge_weights

# Step 4: Generate the .dot file with weighted edges
def generate_dot_file(cfg, edge_weights):
    dot_file = "digraph CFG {\n"
    
    # Add the edges with weights
    for bb in cfg:
        for next_bb in cfg[bb]:
            weight = edge_weights.get((bb, next_bb), 0)
            dot_file += f'    BB{bb} -> BB{next_bb} [label="{weight}"];\n'
    
    dot_file += "}"
    logging.debug(f"Generated dot file content:\n{dot_file}")
    return dot_file

# Main function
def main():
    # Setup logging configuration
    logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(message)s')
    
    # Interactive input for file paths
    cfg_file = input("Please enter the path to the CFG file: ")
    seq_file = input("Please enter the path to the dynamic execution sequence file: ")

    try:
        with open(cfg_file, 'r') as cfg_f:
            cfg_str = cfg_f.read()
        
        with open(seq_file, 'r') as seq_f:
            seq_str = seq_f.read()
    except FileNotFoundError:
        logging.error("Error: One or both of the file paths are incorrect.")
        return
    
    # Step 1: Parse the CFG and dynamic sequence
    cfg = parse_cfg(cfg_str)
    execution_sequence = parse_execution_sequence(seq_str)
    
    # Step 2: Build the dependency graph with edge weights
    edge_weights = build_dependency_graph(execution_sequence, cfg)
    
    # Step 3: Generate the .dot file with weights
    dot_output = generate_dot_file(cfg, edge_weights)
    
    # Save the .dot file
    with open("weighted_dependency_graph.dot", 'w') as dot_f:
        dot_f.write(dot_output)
    
    logging.info("Dependency graph with weights .dot file generated!")

# Example of how to use the script
if __name__ == "__main__":
    main()
