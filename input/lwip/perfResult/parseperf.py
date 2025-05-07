
def parse_perf_data(file_path, events):
    event_counts = {event: 0.0 for event in events}

    with open(file_path, 'r') as file:
        for line in file:
            parts = line.split()
            if len(parts) < 5: 
                continue
            try:
                count = int(parts[3])
                event_type = parts[4].split(':')[0]
                if event_type in events:
                    event_counts[event_type] += count
            except ValueError:
                continue  

    return event_counts

def print_event_results(event_counts, events, output_file):
    for event in events:
        output_file.write("  {}: {}\n".format(event, event_counts[event]))
        if  event != 'INSTRUCTIONS':
            if event_counts['INSTRUCTIONS'] > 0: 
                output_file.write("  {}  / INSTRUCTIONS: {:.5f}\n".format(event, event_counts[event] / event_counts['INSTRUCTIONS']))
            else:
                output_file.write("  {}  / INSTRUCTIONS: N/A\n".format(event))

def main():
    events = ['INSTRUCTIONS', 'CACHE-MISSES']
    
    with open('output_results.txt', 'a') as output_file:
        # Process source file
        file_path = 'perf_script_output.txt'
        event_counts = parse_perf_data(file_path, events)
        output_file.write('---------------source-----------------------\n')
        print_event_results(event_counts, events, output_file)
        
        # Process optimization file
        file_path = 'perf_script_outputO1.txt'
        event_counts = parse_perf_data(file_path, events)
        output_file.write('---------------optimization-----------------\n')
        print_event_results(event_counts, events, output_file)
        for i in range(2):
           output_file.write('\n') 

if __name__ == "__main__":
    main()
