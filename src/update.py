path = "../README.md"

def main():
    with open(path, "r") as f:
        lines = f.readlines()
    with open(path, "w") as f:
        prev = int(lines[-1])
        lines.append(str(prev + 1) + "\n")
        f.writelines(lines)

if __name__ == "__main__":
    main()