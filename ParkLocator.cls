global class ParkLocator 
{
    
    webservice static string[] country (string name)
    {
        ParkService.ParksImplPort a = new ParkService.ParksImplPort();
        return a.byCountry(name);
    }

}