from pathlib import Path
import re
import sys

BASE_DATA_PATH = Path(__file__) / '../../../data/pokemon/base_stats'

STATS = re.compile(r'db\s+(\d+),\s+(\d+),\s+(\d+),\s+(\d+),\s+(\d+),\s+(\d+)')

def handle_file(path):
    print('  > Edit file: ' + str(path))
    with open(str(path), 'r', encoding='utf-8') as f:
        lines = f.readlines()
    for i in range(len(lines)):
        match = STATS.search(lines[i])
        if match is not None:
            break
    else:
        print('Malformed file: cannot find base stats: ' + str(path))
        return
    bst = 0
    for j in range(1, 7):
        s = match.group(j)
        v = int(s)
        bst += v
    energy = bst // 12
    i += 1
    for j in range(i, len(lines)):
        if lines[j].strip().startswith('db MAX_ENERGY,'):
            lines[j] = lines[j].replace('MAX_ENERGY,', f'{energy} ; energy\n\tdb')
            break
    else:
        print('Malformed file: cannot find energy byte: ' + str(path))
        return
    text = ''.join(lines)
    path.write_text(text, encoding='utf-8')

def main():
    base_stats = BASE_DATA_PATH.resolve()
    assert base_stats.is_dir(), f'not a directory: {base_stats}'
    print('Editing files in ' + str(base_stats))
    for path in base_stats.iterdir():
        if not path.is_file():
            continue
        handle_file(path)
    return 0

if __name__ == '__main__':
    sys.exit(main())
