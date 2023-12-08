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
        columns: (0.3fr, 1fr, 0.3fr),
        align: horizon,
        [*Requisito*], [*Descrizione*], [*Funzionalità*],
        [#printRF()],[L'utente vuole visualizzare la lista dei luoghi], [F1], //
        [#printRF()],[L'utente vuole selezionare un luogo dalla lista per vederne i dettagli], [F1], //
        [#printRF()],[L'utente vuole visualizzare i dettagli di un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare la posizione geografica un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare i contatti di un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare le caratteristiche di un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare gli orari di apertura di un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare le immagini di un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare il numero di recensioni di un luogo], [F3], //
        [#printRF()],[L'utente vuole visualizzare la mappa dei luoghi],[F2], //X
        [#printRF()],[L'utente vuole selezionare un luogo dalla mappa per vederne i dettagli],[F2], //X
        [#printRF()],[L'utente visualizza un messaggio a causa di un errore nel caricamento dei dati], [F1, F2, F3], //
        [#printRF()],[L'utente visualizza un messaggio che indica che la lista dei luoghi è vuota], [F1], //
        [#printRF()],[L'ospite vuole effettuare il login all'suo profilo utente], [F5], //X
        [#printRF()],[L'ospite vuole effettuare il login all'suo profilo utente utilizzando un Account _Google_], [F5], //X
        [#printRF()],[L'ospite vuole creare un nuovo account per registrarsi sull'applicazione], [F7],
        [#printRF()],[L'ospite inserisce un nome utente per registrarsi], [F7],
        [#printRF()],[L'ospite inserisce una e-mail per registrarsi], [F7],
        [#printRF()],[L'utente vuole effettuare il logout dal suo profilo utente], [F6], //X
        [#printRF()],[L'utente registrato vuole visualizzare il suo profilo utente], [F6], //X
        [#printRF()],[L'utente registrato visualizza i suoi dati personali], [F6], //X
        [#printRF()],[L'utente registrato vuole caricare un nuovo luogo], [F4], //X
        [#printRF()],[L'utente registrato inserisce il nome del luogo da caricare], [F4], //X
        [#printRF()],[L'utente registrato inserisce una descrizione del luogo da caricare], [F4], //X
        [#printRF()],[L'utente registrato inserisce la posizione geografica del luogo da caricare], [F4], //X
        [#printRF()],[L'utente registrato inserisce le caratteristiche del luogo da caricare], [F4], //X
        [#printRF()],[L'utente registrato inserisce gli orari di apertura del luogo da caricare], [F4], //X
        [#printRF()],[L'utente registrato inserisce i contatti del luogo da caricare], [F4], //X
        [#printRF()],[L'utente registrato inserisce una o più immagini del luogo da caricare], [F4], //X
        [#printRF()],[L'utente visualizza un messaggio che indica che non ha inserito tutte le informazioni richieste del luogo da caricare], [F4], //X
        [#printRF()],[L'utente visualizza un messaggio a causa di un errore nel caricamento del nuovo luogo], [F4], //X
        [#printRF()],[L'utente registrato vuole salvare un luogo nei preferiti], [F1, F2, F3],
        [#printRF()],[L'utente registrato vuole rimuovere un luogo dai preferiti], [F1, F2, F3], 
        [#printRF()],[L'utente registrato vuole visualizzare la lista dei luoghi preferiti salvati], [F6], //X
        [#printRF()],[L'utente registrato vuole selezionare un luogo dalla lista dei luoghi preferiti salvati], [F6], //X
        [#printRF()],[L'utente vuole visualizzare la lista dei luoghi caricati da lui], [F6], //X
        [#printRF()],[L'utente vuole selezionare un luogo dalla lista dei luoghi caricati da lui], [F6], //X
        [#printRF()],[L'utente vuole visualizzare la lista delle recensioni di un luogo], [F8],
        [#printRF()],[L'utente registrato vuole caricare una nuova recensione di un luogo], [F9],
        [#printRF()],[L'utente registrato vuole inserire il testo di una nuova recensione], [F9], 
        [#printRF()],[L'utente registrato vuole inserire una valutazione insieme alla recensione], [F9], 
        [#printRF()],[L'utente registrato visualizza un messaggio a causa di un errore nel caricamento della nuova recensione], [F9],
        [#printRF()],[L'utente vuole ordinare la lista dei luoghi per distanza], [F1], //
        [#printRF()],[L'utente vuole ordinare la lista dei luoghi per valutazione], [F1], //
        [#printRF()],[L'utente vuole ordinare la lista dei luoghi per data di caricamento], [F1], //
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per nome], [F1, F2], //X
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per prezzo], [F1, F2], //X
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per le caratteristiche scelte], [F1, F2], //X
        [#printRF()],[L'utente vuole filtrare la lista o la mappa dei luoghi per orario di apertura], [F1, F2] //X
    ),
    caption: [Requisiti funzionali dell'applicazione _Android_.]
)

#pagebreak()

#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr),
        align: horizon,
        [*Requisito*], [*Descrizione*],
        [#printRV()], [L'applicazione deve essere sviluppata utilizzando il toolkit UI _Jetpack Compose_], //
        [#printRV()], [L'applicazione deve essere sviluppata utilizzando il linguaggio _Kotlin_], //
        [#printRV()], [L'applicazione finale deve essere utilizzabile da dispositivi _Android_ dalla versione 13.0], //
        [#printRV()], [Le componenti sviluppate devono essere documentate]

    ),
    caption: [Requisiti di vincolo dell'applicazione _Android_.]
)


#figure(
    table(
        fill: (_, row) => if calc.odd(row) { luma(240) } else { white },
        columns: (0.3fr, 1fr),
        align: horizon,
        [*Requisito*], [*Descrizione*],
        [#printRQ()], [L'applicazione deve essere fruibile anche in assenza di connessione ad Internet],
        [#printRQ()], [Il codice dell'applicazione deve essere presente nel repository _Bitbucket_ aziendale], //
        [#printRQ()], [Il codice del progetto deve passare tutte le _Pull requests_]
    ),
    caption: [Requisiti di qualità dell'applicazione _Android_.]
)

== Tabella requisiti soddisfatti <requisiti-soddisfatti>

In seguito, viene riportata la tabella dei requisiti con il seguente grado di soddisfazione:

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
        [RF-37],[S],
        [RF-38],[NS],
        [RF-39],[NS],
        [RF-40],[NS],
        [RF-41],[NS],
        [RF-42],[NS],
        [RF-44],[S],
        [RF-45],[S],
        [RF-46],[S],
        [RF-47],[S],
        [RF-48],[S],
        [RF-49],[S],
        [RV-1],[S],
        [RV-2],[S],
        [RV-3],[S],
        [RV-4],[NS],
        [RQ-1],[S],
        [RQ-2],[S],
        [RV-3],[S],
    ),
    caption: [Tabella requisiti soddisfatti e non soddisfatti.]
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

Classe che estende `ComponentActivity` ed è la prima classe che genera contenuti a schermo: inizializza il tema dell'applicazione ed inizializza il `NavHost` e il `NavController` che gestiscono la navigazione tra i vari schermi. Ho implementato solamente la funzione `onCreate` che viene chiamata quando il processo viene creato, tenendo il comportamento di default per le altre funzioni. L'annotazione `@AndroidEntryPoint` permette di iniettare le dipendenze con _Hilt_, in questo caso ho iniettato l'oggetto `AmplifyManager` che gestisce le operazioni di autenticazione utenti per poi passarlo alla schermata di login/profilo utente.

== Destinazione di navigazione <navigation-destination>

```kt
@RootNavGraph(
    start = true
)
@Destination
@Composable
fun PlacesListRoute(
    viewModel: PlacesListViewModel = hiltViewModel(),
    navigator: DestinationsNavigator
) {

    val uiState by viewModel.uiState.collectAsState()

    /**
    ...
    */

    when(uiState.response){
        is ListState.Success -> PlacesListScreen(
            filters = uiState.filters,
            showFilters = uiState.showFilters,
            placesList = uiState.placesList,
            onUploadScreenClick = {navigator.navigate(UploadPlaceRouteDestination)},
            onFiltersClick = { viewModel.toggleFilters(true) },
            onDismissFilters = { viewModel.toggleFilters(false) },
            onSearchFilter = { viewModel.updateSearchFilter(it) },
            onFilter = { viewModel.updateFilters(it) },
            onSelectAccountBox = { navigator.navigate(AccountRedirectRouteDestination) },
            onResetAllFilters = viewModel::resetAllFilters,
            onApplyFilters = viewModel::applyFilters,
            onClickCard = {navigator.navigate(PlacesDetailsRouteDestination(it))},
            onAddFavoritesCard = {viewModel.onToggleLocation(it)},
            onMapClick = { navigator.navigate(PlacesMapRouteDestination) },
            onToggleBottomBar = viewModel::toggleBottomBar,
            showBottomBar = uiState.showBottomBar,
            onRetry = {
                viewModel.resetAllFilters()
                viewModel.getLocationList()
            },
            isLoggedIn = uiState.isLoggedIn
        )
        is ListState.Loading -> LoadingScreen(
            modifier = Modifier
                .fillMaxSize()
                .size(100.dp)
        )
        else -> PlacesListErrorScreen(
            message = R.string.location_list_error_msg,
            onRetry = {
                viewModel.resetAllFilters()
                viewModel.getLocationList()
            },
            onAccountBoxClick = {
                navigator.navigate(AccountRedirectRouteDestination)
            },
            onNavigationScreen = {
                navigator.navigate(UploadPlaceRouteDestination)
            }
        )
    }
}
```

Una destinazione è una funzione annotata con `@Destination` e prende come parametri il `navigator` usato per navigare da una schermata all'altra e il _ViewModel_ della schermata associata; dal _ViewModel_ poi viene estratto lo stato dell'interfaccia che viene fatto passare al _Composable_ della schermata. Oltre allo stato dell'interfaccia vengono passate anche le funzioni invocate all'input dell'utente. La notazione `@RootNavGraph` indica che si tratta del nodo iniziale, cioè la prima schermata visualizzata avviata l'applicazione.

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

Le classi _ViewModel_ sono i titolari di stato di una schermata, estendono la classe `ViewModel` del framework _Android_ e il loro ciclo di vita è regolato dal framework stesso. 
Con l'annotazione `@HiltViewModel` è possibile iniettare la classe nell'interfaccia grafica e con l'annotazione `@Inject` nel costruttore è possono iniettare le dipendenze con _Hilt_. In questo esempio la classe gestisce lo stato della schermata di dettaglio di un luogo. 
All'interno della classe è contenuto lo stato dell'interfaccia grafica, che è uno `StateFlow`: la sua caratteristica è che ad ogni sua modifica l'interfaccia grafica viene aggiornata. La classe contiene anche metodi per modificare lo stato dell'interfaccia, dato che lo stato è mutabile solo all'interno della classe e all'esterno viene esposto solo lo stato in sola lettura.

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

Le classi `UseCase` sono classi particolari che contengono una sola funzione: vengono usate quando un _ViewModel_ richiede un'elaborazione dei dati più complessa o di dati che provengono da più repository diversi. La loro caratteristica è appunto di avere una sola funzione `invoke`, un operatore di _Kotlin_. In questo esempio il `UseCase` è usato per ottenere la lista dei luoghi, che è composta da dati provenienti da più repository, in questo caso il repository dei luoghi e quello degli utenti: viene usato il metodo `combine` di _Kotlin_ per combinare i dati provenienti da più flussi in un unico flusso. L'annotazione `@ViewModelScoped` permette di iniettare la classe con _Hilt_ e di mantenere lo stesso oggetto per tutta la durata del ciclo di vita del _ViewModel_, sempre con _Hilt_ vengono iniettati i repository con l'annotazione `@inject` nel costruttore.

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

La classe `SmartOfficesDatabase` estende `RoomDatabase` e rappresenta il database locale. 
Questa classe contiene i metodi per ottenere i DAO, in questo caso dalla classe si può richiedere due DAO, uno per accedere alle tabelle dei luoghi e uno per accedere alle tabelle degli utenti. L'annotazione `@Database` permette di definire le entità del database.
La classe in sé è astratta, la classe concreta viene implementata tramite una build di _Gradle_.

== Schema ER database locale <db-scheme>

#figure(
    image("../resources/images/local_db.svg", width: 80%),
    caption: [Schema ER del database locale.]
)

Essendo un database relazionale, il database locale è composto da tabelle che sono collegate tra loro tramite chiavi esterne, queste tabelle sono state progettate per avere una struttura simile alle risposte JSON del API remota, dato che quando vengono prelevati i dati dal back-end remoto, questi vengono salvati nel database locale. in questo caso il database è composto da cinque tabelle, che sono:

- `location`: tabella che contiene i dati dei luoghi, con nome, descrizione, indirizzo, posizione geografica, contatti, caratteristiche, orari di apertura e numero di recensioni;
- `photos`: tabella che contiene i link delle immagini dei luoghi salvate su _Amazon S3_, una `location` ha una relazione uno a molti con `photos`;
- `links`: tabella che contiene i link a siti esterni, una `location` ha una relazione uno a molti con `links`;
- `LoggedUser`: tabella che contiene i dati dell'utente che ha effettuato l'accesso, cioè il nome, cognome, possibile e-mail, possibile numero di telefono e l'immagine del profilo;
- `UserFavoriteLocations`: tabella che contiene i luoghi preferiti salvati dall'utente, `LoggedUser` ha una relazione uno a molti con `UserFavoriteLocations`.

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

Le interfacce DAO di _Room_ vengono utilizzate per implementare il codice effettivo per fare le query dal database locale, il codice delle classi concrete viene generato con una build di _Gradle_. In questo caso la classe `LocationDao` contiene tutte le query necessarie per ottenere i dati dei luoghi. Le query sono scritte in SQL, ma _Room_ permette di scrivere query più complesse, come query che ritornano più tabelle, usando l'annotazione `@Transaction` che permette di eseguire più query in una transazione. Le query ritornano un `Flow`, un flusso di dati che ha la caratteristica che, quando viene aggiornato, chi lo osserva viene notificato. Il tipo di query viene indicato con l'annotazione `@Query`, `@Insert`, `@Delete`, `@Update` e `@Upsert`, quest'ultimo effettua l'_Insert_ se la chiave principale non è presente, altrimenti l'_Update_.

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

Le classi API sono classi che contengono metodi per effettuare chiamate al API remota. Il client _Ktor_ fa una chiamata all'API remota con l'indirizzo del back-end più l'endpoint interessato. I metodi sono scritti in modo tale da ritornare un oggetto `Result` che è un oggetto che può contenere un valore o un'eccezione, sarà il chiamante poi a gestire i vari casi. Le chiamate sono scritte in modo da essere effetuate in modo asincrono. In questo esempio vengono gestite le chiamate sul endpoint `/location` che permette di ottenere i dati dei luoghi e di caricare nuovi luoghi: il primo metodo ottiene i dati di un luogo, il secondo ottiene la lista dei luoghi, il terzo carica un nuovo luogo, notare come per caricare un luogo bisogna accedere al proprio account così da poter usare un token valido. Le risposte vengono convertite in oggetti serializzabili e per inviare dati al back-end viene convertito un oggetto serializzabile in JSON.
Come per i luoghi, anche per gli utenti esiste una classe API che contiene i metodi per effettuare chiamate al API remota sul endpoint `/user`.
