
#!/bin/bash

# simulate_build.sh
# Simulated build script for learning CI/CD and build workflows

BUILD_DIR="build_output"
LOG_FILE="build.log"

echo "Starting build process..." | tee $LOG_FILE

# Step 1: Prepare build environment
echo "Preparing build environment..." | tee -a $LOG_FILE
sleep 1
mkdir -p $BUILD_DIR

# Step 2: Simulate compilation
echo "Compiling source files..." | tee -a $LOG_FILE
sleep 2

# Randomly simulate success or failure
if [ $((RANDOM % 10)) -lt 8 ]; then
  echo "Compilation successful." | tee -a $LOG_FILE
else
  echo "Compilation failed!" | tee -a $LOG_FILE
  exit 1
fi

# Step 3: Package artifacts
echo "Packaging build artifacts..." | tee -a $LOG_FILE
sleep 1
echo "FAKE_FIRMWARE_BINARY" > $BUILD_DIR/firmware.bin

# Step 4: Finish
echo "Build completed successfully." | tee -a $LOG_FILE
exit 0
