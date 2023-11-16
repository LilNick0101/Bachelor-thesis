= Appendice

== Lista requisiti <requirements-list>

I requisiti sono classificati con la seguente codifica:

#align(
    center
)[
    *R[Tipo]-numero*
]

- *R*: Acronimo di _Requisito_
- *Tipo*: Tipo di requisito, può essere:
    - *F*: _Funzionale_
    - *V*: _Vincolo_
    - *Q*: _Qualità_

#let RFcounter = counter("RFcounter")
#let printRF() = block[
    #RFcounter.step()
    *RF-#RFcounter.display()*
]

#let RVcounter = counter("RVcounter")
#let printRV() = block[
    #RVcounter.step()
    *RV-#RVcounter.display()*
]

#let RQcounter = counter("RQcounter")
#let printRQ() = block[
    #RQcounter.step()
    *RQ-#RQcounter.display()*
]

#show figure: set block(breakable: true)

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr),
        align: horizon,
        [*Requisito*], [*Descrizione*],
        [#printRF()],[L'utente vuole visualizzare la lista dei luoghi],
        [#printRF()],[L'utente vuole selezionare un luogo dalla lista per vederne i dettagli],
        [#printRF()],[L'utente vuole visualizzare i dettagli di un luogo],
        [#printRF()],[L'utente vuole visualizzare dove si trova un luogo],
        [#printRF()],[L'utente vuole visualizzare i contatti di un luogo],
        [#printRF()],[L'utente vuole visualizzare le caratteristiche di un luogo],
        [#printRF()],[L'utente vuole visualizzare gli orari di apertura di un luogo],
        [#printRF()],[L'utente vuole visualizzare le immagini di un luogo],
        [#printRF()],[L'utente vuole visualizzare il numero di recensioni di un luogo],
        [#printRF()],[L'utente vuole visualizzare la mappa dei luoghi],
        [#printRF()],[L'utente vuole selezionare un luogo dalla mappa per vederne i dettagli],
        [#printRF()],[L'utente visualizza un messaggio a causa di un errore nel caricamento dei dati],
        [#printRF()],[L'utente visualizza un messaggio che indica che la lista dei luoghi è vuota],
        [#printRF()],[L'utente vuole effettuare il login all'suo profilo utente],
        [#printRF()],[L'utente vuole effettuare il login all'suo profilo utente utilizzando un Account Google],
        [#printRF()],[L'utente vuole creare un nuovo account per registrarsi sull'applicazione],
        [#printRF()],[L'utente inserisce un nome utente per registrarsi],
        [#printRF()],[L'utente inserisce una email per registrarsi],
        [#printRF()],[L'utente vuole effettuare il logout dal suo profilo utente],
        [#printRF()],[L'utente vuole visualizzare il suo profilo utente],
        [#printRF()],[L'utente visualizza i suoi dati personali],
        [#printRF()],[L'utente vuole caricare un nuovo luogo],
        [#printRF()],[L'utente inserisce il nome del luogo da caricare],
        [#printRF()],[L'utente inserisce dove si trova il luogo da caricare],
        [#printRF()],[L'utente inserisce i contatti del luogo da caricare],
        [#printRF()],[L'utente inserisce una descrizione del luogo da caricare],
        [#printRF()],[L'utente inserisce gli orari di apertura del luogo da caricare],
        [#printRF()],[L'utente inserisce una o più immmagini del luogo da caricare],
        [#printRF()],[L'utente visualizza un messaggio che indica che non ha inserito tutte le informazioni richieste del luogo da caricare],
        [#printRF()],[L'utente visualizza un messaggio a causa di un errore nel caricamento del nuovo luogo],
        [#printRF()],[L'utente vuole salvare un luogo nei preferiti],
        [#printRF()],[L'utente vuole disfare l'azione di salvataggio di un luogo nei preferiti],
        [#printRF()],[L'utente vuole visualizzare la lista dei luoghi preferiti salvati],
        [#printRF()],[L'utente vuole selezionare un luogo dalla lista dei luoghi preferiti salvati],
        [#printRF()],[L'utente vuole visualizzare la lista dei luogi caricati da lui],
        [#printRF()],[L'utente vuole selezionare un luogo dalla lista dei luoghi caricati da lui],
        [#printRF()],[L'utente vuole visualizzare la lista delle recensioni di un luogo],
        [#printRF()],[L'utente vuole caricare una nuova recensione di un luogo],
        [#printRF()],[L'utente vuole inserire il testo di una nuova recensione],
        [#printRF()],[L'utente vuole inserire una valutazione insieme alla recensione],
        [#printRF()],[L'utente visualizza un messaggio a causa di un errore nel caricamento della nuova recensione],
        [#printRF()],[L'utente vuole visualizzare la lista delle recensioni caricate da lui],
        [#printRF()],[L'utente vuole ordinare la lista dei luoghi per distanza],
        [#printRF()],[L'utente vuole ordinare la lista dei luoghi per valutazione],
        [#printRF()],[L'utente vuole ordinare la lista dei luoghi per data di caricamento],
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per nome],
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per prezzo],
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per le caratteristiche scelte],
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per orario di apertura]
    ),
    caption: [Requsiti funzionali di Smart Officies]
)

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr),
        align: horizon,
        [*Requisito*], [*Descrizione*],
        [#printRV()],[L'applicazione deve essere sviluppata utilizzando il toolkit UI _Jetpack Compose_],
        [#printRV()],[L'applicazione deve essere sviluppata utilizzando il linguaggio Kotlin],
        [#printRV()], [L'applicazione finale deve essere utilizzabile da dispositivi Android dalla versione 13.0],
        [#printRV()], [Le componenti sviluppate devono essere documentate]

    ),
    caption: [Requsiti di vincolo di Smart Officies]
)

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr),
        align: horizon,
        [*Requisito*], [*Descrizione*],
        [#printRQ()],[L'applicazione deve essere fruibile anche in assenza di connessione ad Internet],
        [#printRQ()], [Il codice dell'applicazione deve essere presente nel repository _Bitbucket_ aziendale],
        [#printRQ()],[Il codice del progetto deve passare tutte le Pull requests]
    ),
    caption: [Requsiti di qualità di Smart Officies]
)

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (1fr, 1fr),
        align: horizon,
        [*Tipo di requisito*], [*Numero*],
        [Funzionali],[#RFcounter.display()],
        [Di vincolo],[#RVcounter.display()],
        [Di qualità],[#RQcounter.display()],
        [*Totali*],[56]
    ),
    caption: [Conteggio requsiti di Smart Officies]
)

== Tabella requisiti soddisfatti

In seguito viene riportata la tabella dei requisiti, con il seguente grado di soddisfazione:

- *S*: Soddisfatto
- *NS*: Non soddisfatto

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (80pt, 80pt),
        align: horizon,
        [*Requisito*], [*S/NS*],
        [RF-1],[S],
        [RF-2],[S],
        [RF-3],[S],
        [RF-4],[S],
        [RF-5],[S],
        [RF-6],[S],
        [RF-7],[S],
        [RF-8],[S],
        [RF-9],[S],
        [RF-10],[S],
        [RF-11],[S],
        [RF-12],[S],
        [RF-13],[S],
        [RF-14],[S],
        [RF-15],[S],
        [RF-16],[NS],
        [RF-17],[NS],
        [RF-18],[NS],
        [RF-19],[S],
        [RF-20],[S],
        [RF-21],[S],
        [RF-22],[S],
        [RF-23],[S],
        [RF-24],[S],
        [RF-25],[S],
        [RF-26],[S],
        [RF-27],[S],
        [RF-28],[S],
        [RF-29],[S],
        [RF-30],[S],
        [RF-31],[S],
        [RF-32],[S],
        [RF-33],[S],
        [RF-34],[S],
        [RF-35],[S],
        [RF-36],[S],
        [RF-37],[NS],
        [RF-38],[NS],
        [RF-39],[NS],
        [RF-40],[NS],
        [RF-41],[NS],
        [RF-42],[NS],
        [RF-43],[S],
        [RF-44],[S],
        [RF-45],[S],
        [RF-46],[S],
        [RF-47],[S],
        [RF-48],[S],
        [RF-49],[S],
    ),
    caption: [Tabella requisti soddisfatti e non soddisfatti]
)

== MainActivity <main-activity>
```kt
@AndroidEntryPoint
class MainActivity : ComponentActivity() {

    @Inject
    lateinit var amplifyManager: AmplifyManager
    @OptIn(ExperimentalAnimationApi::class, ExperimentalMaterialNavigationApi::class)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        setContent {
            SmartOfficesTheme() {
                // A surface container using the 'background' color from the theme
                Surface(modifier = Modifier.fillMaxSize(), color = MaterialTheme.colorScheme.background) {
                    val navController = rememberAnimatedNavController()

                    val navHostEngine = rememberAnimatedNavHostEngine(
                        /**
                        ...
                        */
                    )
                    DestinationsNavHost(
                       navGraph = NavGraphs.root,
                       navController = navController,
                       engine = navHostEngine
                   ){
                        composable(AccountRedirectRouteDestination){
                            AccountRedirectRoute(
                                navigator = destinationsNavigator,
                                amplify = amplifyManager
                            )
                        }
                   }
                }
            }
        }
    }
}
```

Classe che estende `ComponentActivity` ed è la prima classe che genera contenuti a schermo, quindi inizializza il tema dell'applicazione, inizia a generare contenuti a schermo ed inizializza il `NavHost` e il `NavController` che gestisce la navigazione tra i vari schermi. Ho implementato solamente la funzione onCreate che viene chiamata quando il processo viene creato, tenendo il comportamento di default per le altre funzioni. L'annotazione `\@AndroidEntryPoint` permette di iniettare le dipendenze con Hilt, in questo caso ho iniettato l'oggetto AmplifyManager che gestisce le operazioni di autenticazione e di accesso ai dati.

== Classi ViewModel <view-model>

```kt
@HiltViewModel
class PlaceDetailsViewModel @Inject constructor(
    private val getLocalDetailsStreamUseCase: GetLocalDetailsStreamUseCase,
    private val toggleSavedLocationUseCase: ToggleSavedLocationUseCase,
    private val fetchCurrentUserDataUseCase: FetchCurrentUserDataUseCase
) : ViewModel() {

    private val _uiState: MutableStateFlow<PlaceDetailsUiState> =
        MutableStateFlow(PlaceDetailsUiState())
    val uiState: StateFlow<PlaceDetailsUiState> = _uiState.asStateFlow()

    private val mutex = Mutex()

    fun toggleGallery(enabled : Boolean){
        _uiState.update {
            it.copy(showGallery = enabled)
        }
    }

    init {
        viewModelScope.launch {
            fetchCurrentUserDataUseCase().collect {
                _uiState.update { state ->
                    state.copy(isLoggedIn = it)
                }
            }
        }
    }

    fun toggleMap(enabled: Boolean){
        _uiState.update {
            it.copy(showMap = enabled)
        }
    }

    fun toggleTimetable(enabled: Boolean){
        _uiState.update {
            it.copy(showHours = enabled)
        }
    }

    fun toggleSavedLocation(){
        viewModelScope.launch {
            if(!mutex.isLocked) {
                mutex.lock()
                val details = uiState.value.details
                details?.let {
                    val placeId = it.placeDetails.id
                    toggleSavedLocationUseCase(placeId)
                }
                mutex.unlock()
            }
        }
    }
    fun getLocationDetails(id : String) {
        viewModelScope.launch {
            getLocalDetailsStreamUseCase(id).collect { loc ->
                _uiState.update { state ->
                    state.copy(response = ListState.Success, details = loc)
                }
            }
        }
    }
}
```

Le classi _ViewModel_ sono i titolari di stato di una schermata, estendono la classe `ViewModel` del framework Android quindi il loro ciclo di vita è regolato dal framework stesso, con l'annotazione `\@HiltViewModel` è possibile iniettare la classe nell'interfaccia grafica e l'annotazione `\@inject` nel costruttore per iniettare le dipendenze con Hilt. In questo esempio la classe gestisce lo stato della schermata di dettaglio di un luogo, all'interno della classe è contenuto lo stato del interfaccia grafica, che è uno `StateFlow`: la sua caratteristica è che ad ogni sua modifica l'interfaccia grafica viene aggiornata. La classe contiene anche i metodi per modificare lo stato, in questo caso sono metodi che modificano lo stato della schermata, dato che lo stato è mutabile solo all'interno della classe e all'esterno viene esposto solo lo stato in sola lettura.

== Classi UseCase <use-case>

```kt
@ViewModelScoped
class GetLocalListUseCase @Inject constructor(
    private val locationRepository: LocationRepository,
    private val savedLocationRepository: SavedLocationRepository,
    private val userRepository: UserRepository
) {

    suspend operator fun invoke(filters : PlacesListFilters) : Flow<List<PlaceListItemWithSavedModel>> {

        return combine(locationRepository.getLocationListStream(filters),userRepository.getLoggedUserFlow()){
            locStream, user ->
            locStream.map {
                PlaceListItemWithSavedModel(
                    place = it,
                    isSaved = if(user != null) savedLocationRepository.isLocationSaved(it.id) else false
                )
            }
        }
    }
}
```

Le classi `UseCase` sono classi particolari che contengono una sola funzione, vengono usate quando un ViewModel richiede un elaborazione dei dati più complessa o di dati che provengono da più Repository diversi. La loro caratteristica è appunto di avere una sola funzione `invoke`, un operatore di Kotlin. In questo esempio il `UseCase` è usato per ottenere la lista dei luoghi, che è composta da dati provenienti da più repository, quindi viene usato il metodo `combine` di Kotlin per combinare i dati provenienti da più flussi in un unico flusso. L'annotazione `\@ViewModelScoped` permette di iniettare la classe con Hilt e di mantenere lo stesso oggetto per tutta la durata del ciclo di vita del ViewModel, inoltre con Hilt vengono iniettati i Repository con l'annotazione `\@inject` nel costruttore.

== Classe Database <database-class>

```kt
@Database(
    entities = [
        LocationEntity::class,
        PhotosEntity::class,
        LinksEntity::class,
        HourRangeEntity::class,
        LoggedUserEntity::class,
        UserFavoriteLocations::class,
        UserFullNameEntity::class], version = 5)
abstract class SmartOfficesDatabase : RoomDatabase(){
    abstract fun locationDao() : LocationDao

    abstract fun userDao() : UserDao
}
```

La classe `SmartOfficesDatabase` estende `RoomDatabase` e contiene i metodi per ottenere i DAO, in questo caso il database contiene due DAO, uno per i luoghi e uno per gli utenti. L'annotazione `\@Database` permette di definire le entità del database e inoltre permette di definire le funzioni per ottenere i DAO.
La classe in per sè è astratta, la classe concreta viene implementata tramite una build di Gradle.

== Interfacce DAO <room-dao>

```kt
@Dao
interface LocationDao {

    /*...

    */

    @Transaction
    @Query("""
        SELECT * FROM location
        ...query lunga...
         """)
    fun getLocationsStream(
        /**
        ...
        */
        ) : Flow<List<CompleteLocation>>

    @Transaction
    @Query("SELECT * FROM location WHERE uploader = :userId")
    fun getUserUploadedLocations(userId : String) : Flow<List<CompleteLocation>>

    @Transaction
    @Query("""SELECT * FROM location INNER JOIN user_favorites ON location_id = id WHERE user_id = :userId """)
    fun getUserFavoriteLocations(userId: String) : Flow<List<CompleteLocation>>

    @Transaction
    @Query("SELECT * FROM location WHERE id IN (:ids)")
    fun getLocationsFromIds(ids : Set<String>) : Flow<List<CompleteLocation>>

    @Transaction
    @Query("SELECT * FROM location WHERE id = :id")
    fun getLocationById(id : String) : Flow<CompleteLocation>

    @Transaction
    @Upsert
    fun insertOrUpdateLocations(
        locations : List<LocationEntity>,
        hours : List<HourRangeEntity> = emptyList(),
        photos : List<PhotosEntity> = emptyList(),
        links : List<LinksEntity> = emptyList()
    )
}
```

Le interfacce DAO di Room vengono utilizzate per implementare il codice effettivo per fare le query dal database locale, il codice delle classi concrete viene generato con una build di Gradle, in questo caso la classe `LocationDao` contiene tutte le query necessarie per ottenere i dati dei luoghi. Le query sono scritte in SQL, ma Room permette di scrivere query più complesse, come query che ritornano più tabelle, usando l'annotazione `\@Transaction` che permette di eseguire più query in una transazione. Le query ritornano un `Flow` che è un flusso di dati, quindi ogni volta che i dati cambiano, il flusso viene aggiornato e chi lo osserva viene notificato. Le query sono scritte in modo tale da poter essere chiamate con parametri opzionali, quindi è possibile chiamare la stessa query con parametri diversi per ottenere risultati diversi. Le query di inserimento e aggiornamento sono scritte usando l'annotazione `\@Upsert` che permette di inserire o aggiornare i dati in base alla chiave primaria. 

== Classi API <api-classes>

```kt
class LocationApiService(private val ktor: HttpClient) {

    suspend fun getLocation(id: String): Result<PlaceDetailsResponse> {
        return try {
            val response = ktor.get("location/$id")

            when (response.status.value) {
                200 -> Result.success(response.body())
                422 -> Result.failure(ValidationException(response.body<ValidationErrorResponse>().description[0]))
                else -> Result.failure(Exception(response.body<ErrorResponse>().message))
            }
        }catch (ex: Exception){
            Result.failure(ex)
        }
    }

    //Location list
    suspend fun getLocationList(
        /**
        ...
        */
    ): Result<PlacesListResponse> {
        try {
            val response = ktor.get("location/") {
                /**
                ...
                */
            }

            return when (response.status.value) {
                200 -> {
                    val responseBody = response.body<PlacesListResponse>()
                    Result.success(responseBody)
                }

                422 -> {
                    val responseBody = response.body<ValidationErrorResponse>()
                    Result.failure(ValidationException(responseBody.description[0]))
                }

                else -> {
                    val responseBody = response.body<ErrorResponse>()
                    Result.failure(Exception(responseBody.message))
                }
            }
        }catch (ex :Exception) {
            return Result.failure(ex)
        }
    }

    suspend fun uploadNewLocation(module: ResponseModule, token: String?): Result<SuccessResponse> {
        try {

            val response = ktor.post("location/") {
                contentType(ContentType.Application.Json)
                header(HttpHeaders.Authorization, "Bearer $token")
                setBody(module)
            }

            return when (response.status.value) {
                201 -> Result.success(response.body())
                422 -> Result.failure(ValidationException(response.body<ValidationErrorResponse>().description[0]))
                else -> Result.failure(Exception(response.body<ErrorResponse>().message))
            }
        }catch (ex: Exception){
            return Result.failure(ex)
        }
    }
}
```

Le classi API sono classi che contengono metodi per effetuare chiamate al API remota, le API ricevono il client Ktor con l'indirizzo del server remoto e contengono metodi per effettuare chiamate al server. Le chiamate sono scritte in modo tale da ritornare un oggetto `Result` che è un oggetto che può contenere un valore o un'eccezione, sarà il chaiamante poi a gestire i vari casi deve gestire entrambi i casi. Le chiamate sono scritte usando il client Ktor, che permette di effettuare chiamate in modo asincrono e di gestire le risposte in modo semplice. In questo esempio vengono gestite le chiamate sul endpoint `/location` che permette di ottenere i dati dei luoghi e di caricare nuovi luoghi: il primo metodo ottiene i dati di un luogo, il secondo ottiene la lista dei luoghi, il terzo carica un nuovo luogo, notare come per caricare un luogo bisogna accedere al proprio account, così da poter usare un token valido.

