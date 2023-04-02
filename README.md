pizza-mandolino-shell 🍕🎻🐌
=====================

![Made in Italy](https://img.shields.io/badge/%F0%9F%87%AE%F0%9F%87%B9%20made%20in%20italy-gray.svg)

Practice your Italian with shell

usage: source italian.sh

---

*Pizza-Mandolino-Shell è uno strumento indispensabile per il videoterminalista che vuole dominare con disciplina il suo terminale in lingua italiana.*

Il terminale è uno strumento meraviglioso che permette di comunicare con la macchina elettrica che si chiama calcolatore.
Il terminale è una finestra dove si possono impartire ordini perentori che il calcolatore capisce e obbedisce.

Per esempio, con il comando `dovesono` si può sapere in che luogo del calcolare ci si trova,
con il comando `lista` si può vedere cosa c'è in quel luogo, con il comando `vai` si può cambiare luogo.

Il terminale è quindi una conquista della scienza e della tecnica che dimostra la grandezza dell'uomo e della civiltà moderna, un simbolo del progresso e
della cultura che l'Italia vuole diffondere tra i suoi cittadini.


Prontuario
----------

`dovesono` Usa il comando `dovesono` per trovare il percorso della vostra attuale catella di lavoro nello schedario.

`vai` Per navigare tra i documenti e le cartelle, utilizzare il comando `vai`.

`lista` Il comando `lista` elenca i documenti e le cartelle all'interno di un sistema. Eseguirlo senza una bandiera o un parametro mostrerà il contenuto della cartella di lavoro corrente. Per vedere il contenuto di altre cartelle, digitare `lista` seguito dal percorso desiderato.

`copia` Utilizzare il comando `copia` per copiare documenti o cartelle e il loro contenuto. 

`muovi` Il comando serve per spostare e rinominare documenti e cartelle.

`rimuovi` Il comando serve per eliminare i documenti all'interno di una cartella.

`creacartella` Utilizzare questo comando comando per creare una o più cartelle.

`rimuovicartella` Per eliminare definitivamente una cartella vuota, utilizzare il comando `rimuovicartella`.

`tocca` Il comando `tocca`  consente di creare un documento vuoto o modificare la marca temporale di un documento.

`gatto` Elenca, combina e scrive il contenuto del documento. Per eseguire il comando, digitare `gatto` seguito dal nome del documento e dalla sua estensione.

`testa` Consente di visualizzare le prime dieci righe di un testo. L'aggiunta di una bandiera consente di modificare il numero di righe visualizzate.

`coda` Il comando visualizza le ultime righe di un documento.


`manuale` Il comando `manuale` fornisce un manuale utente di tutti i comandi o utilità che è possibile eseguire dal terminale, inclusi il nome, la descrizione e le bandiere.

`eco` Il comando visualizza una riga di testo o una stringa utilizzando sul terminale.


`cernieralampo` Usate il comando `cernieralampo` per comprimere i vostri documenti in un archivio.

`nocernieralampo` Il comando estrae i documenti compressi da un archivio.


`processi` Visualizza tutti i processi in esecuzione.

`cima` Il comando `cima` visualizzerà tutti i processi in esecuzione e una vista dinamica in tempo reale del sistema corrente.

`uccidi` Termina o invia segnali di sistema specifici ai processi in base al numero ID processo (PID).

`ucciditutti` Termina o invia segnali di sistema specifici ai processi in esecuzione sul sistema in base al nome.


`tintinnio` Per di verificare se una rete o un servo è raggiungibile.


Esempi di utilizzo
------------------

Iniziate aprendo il vostro terminale, ed eseguendo lo straniero comando di inizializzazione:

```
$ source italian.sh
```

Poi spostatevi nella vostra cartella casa eseguendo:

```
$ vai ~
```

Notate che `$` qui sta per il pronto dei comandi che il vostro terminale mostra quando è in attesa di istruzioni.
La lineetta ondulata `~` è una scorciatoia per la vostra cartella casa e `vai` è un comando che vi sposta nel percorso che gli fornite come argomento.
In questo esempio `~` è l'argomento. Per vedere dove vi trovate nel vostro schedario, potete stampare la vostra attuale cartella di lavoro con il seguente comando:

```
$ dovesono
/utenti/mario
```

L'argomento `-` è una scorciatoia che dice a `vai` di tornare alla cartella di lavoro precedente e `..` si riferisce alla cartella principale,
`/` si riferisce alla radice del vostro schedario.

```
$ dovesono
/utenti/mario
$ vai ..
$ dovesono
/utenti
$ vai /
$ dovesono
/
$ vai -
$ dovesono
/utenti
```

Create una cartella nel vostro schedario.

```
$ vai /il/vostro/percorso/desiderato
$ creacartella nuova_cartella
```

Il comando `creacartella` crea una cartella nella cartella corrente con il nome specificato.

```
$ vai nuova_cartella
```

