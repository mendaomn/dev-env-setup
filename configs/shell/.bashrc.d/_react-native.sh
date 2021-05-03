# Utilites for RN project

peanut() {
    PROJECT="project-name"
    echo "cd $HOME/Documents/Development/$PROJECT"
    cd $HOME/Documents/Development/$PROJECT

    case "$1" in
        ios)
            echo "yarn run-ios-dev"
            yarn run-ios-dev
            ;;
         
        android)
            echo "yarn run-android-dev"
            yarn run-android-dev
            ;;
         
        flush)
            echo "rimraf node_modules && rimraf ios/Pods && yarn && yarn pod-install"
            rimraf node_modules && rimraf ios/Pods && yarn && yarn pod-install
            ;;

        start)
            echo "yarn start --reset-cache"
            yarn start --reset-cache
            ;;
        
        open)
            echo "code ."
            code .
            ;;

        story)
            echo "fromstory $2"
            fromstory $2
            ;;
         
        *)
            echo "Usage: $0 {ios|android|flush|start|open|story}"
 
    esac
}

branchify() {
    echo "$1" | tr A-Z a-z | sed 's/ /-/g' | sed 's/,//g'
}

fromstory() {
    link=$(lab issue create  -l "workflow::doing" -m "$1")
    echo $link
    issueNumber=$(basename $link)
    git checkout -B $(branchify $issueNumber-$1)
}