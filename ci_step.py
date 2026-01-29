# ci_step.py
# Simulated CI pipeline step

import subprocess
import sys
from datetime import datetime

def run_build():
    print("CI Pipeline: Starting build step")
    print(f"Timestamp: {datetime.now()}")

    try:
        result = subprocess.run(
            ["./simulate_build.sh"],
            check=True,
            capture_output=True,
            text=True
        )
        print("Build output:")
        print(result.stdout)
        print("CI Status: SUCCESS")
        return 0

    except subprocess.CalledProcessError as error:
        print("Build output:")
        print(error.stdout)
        print("CI Status: FAILURE")
        return 1

if __name__ == "__main__":
    exit_code = run_build()
    sys.exit(exit_code)
