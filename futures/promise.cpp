/*/
std::promise crea i dati condivisi
std::future aspetta peri dati e li ritorna

std::promise è la classe di templete std::promise<int> p;

std::promise::get_future() 
- ritorna il std::future associato alla promise

std::promise::set_value()
- setta il risultato della promise

std::promise::set_exception()
- dice che è presente una eccezione
*/

