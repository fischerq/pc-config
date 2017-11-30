export TINKERBELL_CODE_DIR=~/openai
export AZURE_STORAGE_ACCOUNT=rapidcode
export AZURE_STORAGE_KEY=U6SDZ9fpJJshsBLSVUt1EXQ5P4vFYTPA4zSdSh3912F7VlbCokkoojkYKOGCkfRlXW5l5WTH6PFK4G3wMXhS4A==  #key1
export DOCKER_BUILDTOOL_RSYNC=y

alias tembryo="cd ~/Documents/Tembryo/"


wisdota-ssh() {
    #    ssh 46.101.126.200
    ssh wisdota.com
}

wisdota-dev-ssh()
{
    ssh 46.101.112.71
}

mini1-ssh() {
    ssh 46.101.238.115
}
mini2-ssh() {
    ssh 46.101.214.33
}
mini3-ssh() {
    ssh 139.59.134.181
}
mini4-ssh() {
    ssh 139.59.134.184
}
mini5-ssh() {
    ssh 139.59.142.44
}
mini6-ssh() {
    ssh 139.59.141.196
}
mini7-ssh() {
    ssh 139.59.131.25
}
mini8-ssh() {
    ssh 139.59.159.90
}
mini9-ssh() {
    ssh 139.59.152.28
}
mini10-ssh() {
    ssh 178.62.121.95
}
mini11-ssh() {
    ssh 178.62.121.184
}
mini12-ssh() {
    ssh 178.62.124.156
}

webhost-tembryo()
{
    ssh 46.101.126.136
}


wisdota-db() {
    psql postgresql://wisdota:the-database-elephant@46.101.126.200/wisdota
}

wisdota-dev-db() {
    psql postgresql://wisdota:whoop-whoop-devdb@46.101.112.71/wisdota
}

enter-postgre(){
    psql postgresql://wisdota:the-database-elephant@172.17.0.$@/wisdota
}

runExtractor()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/dotaReplayProcessor
    java -jar target/dotaReplayProcessor-0.0.1-SNAPSHOT.jar /home/fischerq/Documents/Wisdota/2366032695.dem /home/fischerq/Documents/Wisdota/output/
    popd
}

runAnalysis()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/replayAnalyser/Beta
    python event_extractor4.py 2366032695 /home/fischerq/Documents/Wisdota/output/2366032695 /home/fischerq/Documents/Wisdota/analysis/2366032695/analysis.json /home/fischerq/Documents/Wisdota/analysis/2366032695/header.json /home/fischerq/Documents/Wisdota/analysis/2366032695/stats.json
    popd
}

runNewAnalysis()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/python-analysis
    python analysis.py 2366032695 /home/fischerq/Documents/Wisdota/output/2366032695 /home/fischerq/Documents/Wisdota/analysisNew/2366032695/analysis.json /home/fischerq/Documents/Wisdota/analysis/2366032695/header.json /home/fischerq/Documents/Wisdota/analysis/2366032695/stats.json
    popd
}

runExtractorPro()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/dotaReplayProcessor
    java -jar target/dotaReplayProcessor-0.0.1-SNAPSHOT.jar /home/fischerq/Documents/Wisdota/2364597318.dem /home/fischerq/Documents/Wisdota/output/
    popd
}
runAnalysisPro()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/replayAnalyser/Beta
    python event_extractor4.py 2364597318 /home/fischerq/Documents/Wisdota/output/2364597318 /home/fischerq/Documents/Wisdota/analysis/2364597318/analysis.json /home/fischerq/Documents/Wisdota/analysis/2364597318/header.json /home/fischerq/Documents/Wisdota/analysis/2364597318/stats.json
    popd
}
runNewAnalysisPro()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/python-analysis
    python analysis.py 2364597318 /home/fischerq/Documents/Wisdota/output/2364597318 /home/fischerq/Documents/Wisdota/analysisNew/2364597318/analysis.json /home/fischerq/Documents/Wisdota/analysisNew/2364597318/header.json /home/fischerq/Documents/Wisdota/analysisNew/2364597318/stats.json
    popd
}

runExtractorFinal()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/dotaReplayProcessor
    java -jar target/dotaReplayProcessor-0.0.1-SNAPSHOT.jar /home/fischerq/Documents/Wisdota/2365455182.dem /home/fischerq/Documents/Wisdota/output/
    popd
}
runAnalysisFinal()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/replayAnalyser/Beta
    python event_extractor4.py 2365455182 /home/fischerq/Documents/Wisdota/output/2365455182 /home/fischerq/Documents/Wisdota/analysis/2365455182/analysis.json /home/fischerq/Documents/Wisdota/analysis/2365455182/header.json /home/fischerq/Documents/Wisdota/analysis/2365455182/stats.json
    popd
}

runNewAnalysisFinal()
{
    pushd /home/fischerq/Documents/Wisdota/dota-analysis/python-analysis
    python analysis.py 2365455182 /home/fischerq/Documents/Wisdota/output/2365455182 /home/fischerq/Documents/Wisdota/analysisNew/2365455182/analysis.json /home/fischerq/Documents/Wisdota/analysisNew/2365455182/header.json /home/fischerq/Documents/Wisdota/analysisNew/2365455182/stats.json
    popd
}


# Openai ocean development

ocean()
{
    cd /home/fischerq/openai/gym-ocean
}

ocean_rapid()
{
    cd /home/fischerq/openai/rapid/rapid_ocean/mid
}

ocean-parser()
{
    cd /home/fischerq/openai/gym-ocean/replay-transformer
}

clarity-analyzer()
{
    pushd /home/fischerq/Documents/clarity-analyzer
    java -jar target/analyzer.one-jar.jar
    popd
}

ocean_run_server()
{
    pushd /home/fischerq/openai/gym-ocean/utils/replay-transformer
    make
    cd java
    java -jar target/ocean.one-jar.jar 2> ../../../data/results/log.txt
    popd
}

ocean_parse_example()
{
    pushd /home/fischerq/openai/gym-ocean/utils/replay-transformer
    tools/parse_replay.sh ../../data/replays/2910472250.dem ../../data/parsed/2910472250.fullparse.pb
    popd
}

ocean_view_example()
{
    pushd /home/fischerq/openai/gym-ocean/utils/replay-transformer
    tools/interval-state-print.py ../../data/parsed/2910472250.fullparse.pb > ../../data/results/viewlog.txt
    popd
}

ocean_print_example()
{
    pushd /home/fischerq/openai/gym-ocean/utils/replay-transformer
    tools/display_parsed.py ../../data/parsed/2910472250.fullparse.pb > ../../data/results/example.txt
    popd
}

#######################

ocean_copy_comparison()
{
    pushd /tmp/ocean
    DEM_FILE="$(ls -t *.dem | head -1)"
    PB_RADIANT_FILE="$(ls -t *.radiant.direct.fullparse.pb | head -1)"
    PB_DIRE_FILE="$(ls -t *.dire.direct.fullparse.pb | head -1)"
    cp $DEM_FILE /home/fischerq/openai/gym-ocean/data/replay_comparison/test.dem
    cp $PB_RADIANT_FILE /home/fischerq/openai/gym-ocean/data/replay_comparison/test.radiant.direct.fullparse.pb
    cp $PB_DIRE_FILE /home/fischerq/openai/gym-ocean/data/replay_comparison/test.dire.direct.fullparse.pb
    popd
}

ocean_parse_comparison()
{
    pushd /home/fischerq/openai/gym-ocean/
    utils/replay-transformer/tools/parse_replay_radiant.sh data/replay_comparison/test.dem data/replay_comparison/test.radiant.fullparse.pb 
    #utils/replay-transformer/tools/parse_replay_dire.sh data/replay_comparison/test.dem data/replay_comparison/test.dire.fullparse.pb 
    popd
}

ocean_do_comparison()
{
    pushd /home/fischerq/openai/gym-ocean/
    mv data/replay_comparison/comparison_radiant.txt data/replay_comparison/comparison_radiant_old.txt
    mv data/replay_comparison/comparison_counted.txt data/replay_comparison/comparison_counted_old.txt
    gym_ocean/sandbox/fischerq/compare-replays.py data/replay_comparison/test.radiant > data/replay_comparison/comparison_radiant.txt
    gym_ocean/sandbox/fischerq/count-comparison.py data/replay_comparison/comparison_radiant.txt > data/replay_comparison/comparison_counted.txt
    #sandbox/fischerq/compare-replays.py data/replay_comparison/test.dire > data/replay_comparison/comparison_dire.txt
    popd
}

ocean_diff_comparison()
{
    pushd /home/fischerq/openai/gym-ocean/
    meld data/replay_comparison/comparison_counted.txt data/replay_comparison/comparison_counted_old.txt
    popd
}

#######################

ocean_dota()
{
    /ocean/dota.sh +map dota
}

ocean_bot()
{
    pushd /home/fischerq/openai/gym-ocean/scoreboard
    python battle.py local-human --player fischerq --opponent_image 1ed05f5e
    popd
}

ocean_sammy_server()
{
    ssh -i ~/.ssh/rapid.id_rsa root@104.198.3.20
}

ocean_danny_server()
{
    ssh -i ~/.ssh/rapid.id_rsa root@35.197.99.92
}


ocean_reset()
{
    pushd /home/fischerq/openai/gym-ocean
    sudo bin/ocean-evaluation init
    popd
}

ocean_log()
{
    tail -f /ocean/dota/console.log
}

ocean_pybot()
{
    pushd /home/fischerq/openai/gym-ocean
    gym_ocean/bots/scripted/runbot -r static://
    popd
}

ocean_circle()
{
    pushd /home/fischerq/openai/gym-ocean/
    examples/circle/circle-agent -c local://fischerq/example-rpcbot -r static://
    popd
}
ocean_examplebot()
{
    pushd /home/fischerq/openai/gym-ocean/
    python sandbox/fischerq/minimal-bot/runbots.py -c local://fischerq/minimal-bot -r static://
    popd
}

rapid_list()
{
    az group list -o table
}

ocean_dl_replay()
{
    pushd /home/fischerq/openai/gym-ocean/data
    aws s3 cp s3://openai-kubernetes-sci-ocean-replays/v2017-01-16/decompressed/$1.dem replays/
    aws s3 cp s3://openai-kubernetes-sci-ocean-replays/v2017-01-16/fullparse/$1.fullparse.pb parsed/
    popd
}

ocean_remake_protos(){
    pushd ~/openai/gym-ocean/gym_ocean/pb
    make
    popd
    pushd ~/openai/gym-ocean
    sudo -H bin/ocean-evaluation init
    popd
}
