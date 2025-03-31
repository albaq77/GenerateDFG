# -*- coding: utf-8 -*-

def parse_perf_data(file_path, target_event, events):
    # 初始化事件计数字典
    event_counts = {event: 0 for event in events}

    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            # if line.startswith(target_event):
            if 1 :
                parts = line.split()
                count = int(parts[3])
                event_type = parts[4].split(':')[0]

                if event_type in events:
                    event_counts[event_type] += count

    return event_counts

def main():
    file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/perf_script_output.txt' 
    target_event = 'example_app' 
    events = ['instructions', 'CACHE-MISSES', 'CYCLES', 'LLC_MISSES', 
              'L1-icache-load-misses', 'L1-dcache-load-misses'] 

    event_counts = parse_perf_data(file_path, target_event, events)

    results = [event_counts[event] for event in events]

    print("Results for {}: {}".format(target_event, results))

    file_path = '/mnt/hgfs/graduate/codeProgram/HUAWEIProject/DFG-NewGraph-Changer-main/BBDyAnalysis/perf_script_outputO1.txt' 
    target_event = 'lwipO1U22' 

    event_counts = parse_perf_data(file_path, target_event, events)
    
    results = [event_counts[event] for event in events]

    print("Results for {}: {}".format(target_event, results))


if __name__ == "__main__":
    main()
