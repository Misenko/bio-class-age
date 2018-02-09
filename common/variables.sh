## Not executable

# End on any non-zero return code
set -e

BASE_DIR="/opt/bio-class"
BASE_BIN_DIR="${BASE_DIR}/bin"
BASE_COMMON_DIR="${BASE_DIR}/common"

source "${BASE_COMMON_DIR}/variables.sh"

# Paths
CONF_DIR="/opt/bio-class-age/conf"
TMP_DIR="/tmp/bio-class-age-tmp"
