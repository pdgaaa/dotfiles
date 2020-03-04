env() {
  #only bash4
  declare -A environnement=( ["BAS"]="A" ["DEV"]="D" ["DEV2"]="E" ["FORM"]="F" ["INT"]="I" ["DEVS"]="L" ["QUAS"]="M" ["INTS"]="N" ["PROD"]="P" ["PPR"]="R" ["PPR2"]="S" ["QUA"]="T" ["QUA2"]="U" ["ATST"]="Z" )
  echo ${environnement[$1]}
}
