# https://github.com/andreax79/pizza-mandolino-shell
# This is free and unencumbered software released into the public domain.
#
# usage: source italian.sh

# CMD gatto                 cat
# CMD copia                 cp
# CMD meno                  less
# CMD piu                   more
# CMD muovi                 mv
# CMD rimuovi               rm
# CMD creacartella          mkdir
# CMD rimuovicartella       rmdir
# CMD grappa                grep
# CMD sciacquone            wc
# CMD dovesono              pwd
# CMD vai                   cd
# CMD data                  date
# CMD lista                 ls
# CMD esci                  exit
# CMD chi                   who
# CMD machisonoio           whoami
# CMD uccidi                kill
# CMD ucciditutti           killall
# CMD dito                  finger
# CMD discousato            du
# CMD discolibero           df
# CMD prova                 test
# CMD tocca                 touch
# CMD ultimo                last
# CMD cerca                 find
# CMD ambiente              env
# CMD storia                history
# CMD esporta               export
# CMD imposta               set
# CMD eco                   echo
# CMD chiama                telnet
# CMD conchigliasicura      ssh
# CMD copiasicura           scp
# CMD cambiamodo            chmod
# CMD conchiglia            sh
# CMD processi              ps
# CMD cima                  top
# CMD manuale               man
# CMD sesto                 vi
# CMD fai                   make
# CMD cambialaparolachiave  passwd
# CMD tintinnio             ping
# CMD sinonimo              alias
# CMD riordina              sort
# CMD catrame               tar
# CMD confronta             diff
# CMD spegni                shutdown
# CMD libero                free
# CMD monta                 mount
# CMD smonta                umount
# CMD dovesta               whereis
# CMD coda                  tail
# CMD testa                 head
# CMD leggi                 read
# CMD vero                  true
# CMD falso                 false
# CMD se                    if
# CMD allora                then
# CMD altrimenti            else
# CMD ealtrimentise         elif
# CMD poibasta              fi

if [ -n "$ZSH_VERSION" ]; then
  self=$0
elif [ -n "$KSH_VERSION" ]; then
  self=${.sh.file}
elif [ -n "$BASH_VERSION" ]; then
  self=${BASH_ARGV[0]}
fi

cmds=""
if [ -n "$BASH_VERSION" ]; then
    while read line;
    do
        k=( $line )
        v=${k[3]}
        k=${k[2]}
        alias $k=$v
        cmds="$cmds $k"
    done < <(grep "^# CMD" $self | sort)

elif [ -n "$ZSH_VERSION" -o -n "$KSH_VERSION" ]; then
    grep "^# CMD" $self | sort | while read line
    do
        if [ -n "$ZSH_VERSION" ]; then
            k=${line[(ws: :)3]}
            v=${line[(ws: :)4]}
        else # KSH
            k=( $line )
            v=${k[3]}
            k=${k[2]}
        fi
        alias $k=$v
        cmds="$cmds $k"
    done
fi
alias aiuto="echo $cmds"
unset k v line self cmds

