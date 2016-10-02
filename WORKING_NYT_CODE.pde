
/* The NYT api uses the HTTP protocol; we start with the base URL that 
we can add search terms to.  When we get really fancy we can break this URL into components
to make searching easier for ourselves.  Then we have our api key which we got by applying for a key on 
their developer site.  Then we add all of those elements together to create a long
request url that is specific to us. 
*/

String baseURL = "https://api.nytimes.com/svc/search/v2/articlesearch.json";
String apiKey = "5e68e656b0fa41b982a23747cf9f674c";
String request = baseURL + "?q=disease&begin_date=19900101&end_date=19901225&api-key=" + apiKey;


JSONObject nytdata;  // This is where we will store the data in a JSON format
int hits; // This is how many hits we get for a specific query.  
//We are declaring it up here because we want it to be global and to be able to use it later on.

void setup() {
  size(600,600);
  background(255,0,0);
 
 // Go and get the data we've requested using our request url.
  String result = join( loadStrings( request ), "");
  
  //Parse and store it in a JSON format called "nytdata"
  nytdata = parseJSONObject(result);
  
  // Check for errors
  if (nytdata == null) {
    println("JSONObject could not be parsed");
  } else {
    println( nytdata );
  };

  // Now find the specific piece we want, that is tucked away inside some other JSON Objects.
  // Response is the first layer
  JSONObject response = nytdata.getJSONObject("response");
  // Then there is a meta file underneath that
  JSONObject meta = response.getJSONObject("meta");
  // Now give me the integer for how many hits we got.
  hits = meta.getInt("hits");
  println(hits);
};

// Visualize some stuff using our hits integer
void draw() {
  ellipse(0,0,hits/10, hits/10);
  
};