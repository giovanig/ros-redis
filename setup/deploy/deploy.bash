#!/bin/bash
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

RED='\033[0;31m'
GREEN='\033[0;92m'
GRAY='\033[38;5;247m'
BLUE='\033[0;34m'
NC='\033[0m'

NO_FLAGS=true

read_args()
{
    BUILD_FOR_INSTALL=
    COPY_DEVEL=
    INSTALL_LOCAL=
    INSTALL_PC=
    ENABLE_STARTUP=
    DISABLE_STARTUP=
    DELETE_SERVICE=
    SERVICE_STATUS=
    RESTART_SERVICE=
    for arg in "$@"; do
        case $arg in
            -b)
                NO_FLAGS=false
                BUILD_FOR_INSTALL="true";;
            -c)
                NO_FLAGS=false
                COPY_DEVEL="true";;
            -l)
                NO_FLAGS=false
                INSTALL_LOCAL="true";;
            -p)
                NO_FLAGS=false
                INSTALL_PC="true";;
            -e)
                NO_FLAGS=false
                ENABLE_STARTUP="true";;
            -d)
                NO_FLAGS=false
                DISABLE_STARTUP="true";;
            -x)
                NO_FLAGS=false
                DELETE_SERVICE="true";;     
            -s)
                NO_FLAGS=false
                SERVICE_STATUS="true";;  
            -r)
                NO_FLAGS=false
                RESTART_SERVICE="true";;             
        esac
    done
}

main()
{

    if [ -n "$BUILD_FOR_INSTALL" ]; then
        echo "Perform Build"
        bash $SCRIPT_DIR/build_for_install.bash
    fi   

    if [ -n "$COPY_DEVEL" ]; then
        echo "Copy devel to repo"
        bash $SCRIPT_DIR/copy_install_to_repo.bash
    fi 

    if [ -n "$INSTALL_LOCAL" ]; then
        echo "Install Local"
        bash $SCRIPT_DIR/install-local.bash
    fi 

    if [ -n "$INSTALL_PC" ]; then
        echo "Install to PC"
        bash $SCRIPT_DIR/install-to-PC.bash
    fi   

    if [ -n "$ENABLE_STARTUP" ]; then
        echo "Enable fischRedis service"
        bash $SCRIPT_DIR/enable_startup.bash
    fi   

    if [ -n "$DISABLE_STARTUP" ]; then
        echo "Disable fischRedis service"
        bash $SCRIPT_DIR/enable_startup.bash
    fi 

    if [ -n "$DELETE_SERVICE" ]; then
        echo "Delete fischRedis service"
        bash $SCRIPT_DIR/delete_service.bash
    fi 

    if [ -n "$SERVICE_STATUS" ]; then
        echo "check status fischRedis service"
        systemctl status fischRedis
    fi 

    if [ -n "$RESTART_SERVICE" ]; then
        echo "Restart Delete fischRedis service"
        sudo systemctl restart fischRedis
    fi 
}

echo_error()
{
    echo -e "${RED}[Error] $1${NC}"
}

echo_success()
{
    echo -e "${GREEN}$1${NC}"
}

read_args "$@"
main