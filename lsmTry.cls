public class lsmTry {
    public void liSttt()
    {
        List <string> namee = new List <string>();
        namee.add('God');
        namee.add('VS');
        system.debug('new namee list are:' +namee);
        /*namee.add(0,'ram');
        namee.add(1,'devulala');
        namee.add(1,'rahim');
        namee.add(4,'nullp');
        system.debug(' namee list after add by index and value is:'+namee);
        List <string> addAllfunction = new List <string>(namee);
        system.debug('Copied list from namee is :'+addAllfunction);
        
       /* cleaning = addAllfunction.clear();
        system.debug('clear copied list is:'+cleaning); */
        
        /*List <integer> numberByFor = new List <integer> ();
        for(integer i=0;i<10;i++) numberByFor.add(i);
        system.debug('integer Number by for loop list by using for loop is :' +numberByFor);
        
        /* collections.reverse(numberByFor);
        system.debug('integer list by using for loop after reversing is :' +numberByFor);*/
        
        // Is slicing of list possible?, Deepcloning?, index out of bound when adding?,Iterator?,clone? date?  
           
        /*system.debug ('Boolean function value for copied lists:' +namee.equals(addAllfunction));
        system.debug('Boolean value for for addall and namee:' +numberByFor.equals(namee));
        system.debug('Get the value of a namee list by using get function :' +namee.get(4));
        // hash code? 
        system.debug('Removing a element in Namee list by using remove:' +numberByFor.remove(9));
        system.debug('integer Number by for loop list by using for loop is after removing :' +numberByFor);
        addAllfunction.clear();
        system.debug('Is my addAllfunction list is empty after I cleared:' +addAllfunction.isempty());
        +namee.set(4, 'value');
        system.debug('setting object in namee list :' +namee);
        system.debug('Size of namee:'+namee.size());
        system.debug('Size of addAllfunctionlist:' +addAllfunction.size());
        namee.sort();
        system.debug('Sort of namee :' +namee);
       
       // can't we write sort and clear functions inside the debug statement? */
    }
    public void settt()
    {
        /*set <string> namee = new set <string>();
        namee.add('God');
        namee.add('VS');
        
        
        //system.debug('new namee list are:' +namee);
        /*namee.add(0,'ram');
        namee.add(1,'devulala');
        namee.add(1,'rahim');
        namee.add(4,'nullp');
        system.debug(' namee list after add by index and value is:'+namee);*/
        // Note : If we add any elemnt to set by using index number it'll give error [Method does not exist or 
        //										incorrect signature:[set].add(Integer,string)]
        
       
       /* namee.add('ram');
        namee.add('devulala');
        namee.add('rahim');
        namee.add('nullp');
        system.debug(' namee set after add by index and value is:'+namee);
        system.debug('is rahim contains in set:'+namee.contains('rahim'));
        set <string> addAllfunction = new set <string>(namee);
        system.debug('Copied set from namee is :'+addAllfunction);
        
        /* cleaning = addAllfunction.clear();
        system.debug('clear copied list is:'+cleaning); */
        
        /*set <integer> numberByFor = new set <integer> ();
        for(integer i=0;i<10;i++) numberByFor.add(i);
        system.debug('integer Number by for loop set by using for loop is :' +numberByFor);
        
        /* collections.reverse(numberByFor);
        system.debug('integer set by using for loop after reversing is :' +numberByFor);*/
        
        // Is slicing of set possible?, Iterator?,clone?
        
        /*system.debug ('Boolean function value for copied set:' +namee.equals(addAllfunction));
        system.debug('Boolean value for for addall and namee:' +numberByFor.equals(namee));
        
        // system.debug('Get the value of a namee set by using get function :' +namee.get(4));
                                                // Note : "get function is also not there in set function"
        // hash code? 
         
        system.debug('Removing a element in Namee set by using remove:' +numberByFor.remove(9));
        system.debug('integer Number by for loop set by using for loop is after removing :' +numberByFor);
        
        addAllfunction.clear();
        system.debug('Is my addAllfunction set is empty after I cleared:' +addAllfunction.isempty());
        
        //+namee.set(4, 'value');
        //Note : set function is also no there in sets
        //system.debug('setting object in namee set :' +namee);
        
        system.debug('Size of namee:'+namee.size());
        system.debug('Size of addAllfunction set:' +addAllfunction.size());
        
        //namee.sort();
        				// Note:sorting is also not there in set because it's a odered collection of data
        //system.debug('Sort of namee :' +namee);
       
       // can't we write clear functions inside the debug statement?*/
    }
    public void setAndlistRelation()
    {
       /* List <integer> list1 = new List<integer>();
       for(integer i=1;i<15;i++) list1.add(i);
        system.debug('List1 number are :' +list1);
        set <integer> set1 = new set<integer>();
        for(integer j=15;j<30;j++) set1.add(j);
        system.debug('set numbers are:' +set1);
        List <integer> list2 = new List <integer> (set1);
        system.debug('Copying set to empty list:' +list2);
        set <integer> set2 = new set<integer>(list1);
        system.debug('copying list to empty set:' +set2);
        /*list1.addAll(from set1);
        
        // if set has already elemnts it won't copy elements from another list
        
        system.debug('elements in set are :' +list1);
        system.debug('is element is present in set1 :' +set1.contains(5));
        
        set1.addAll(from list1);
        system.debug('elements in set are :' +set1);*/
    }
    public void mappingD()
    {
       /*map<string,integer> mapping1 = new map<string,integer>();
        mapping1.put('Vikky age is', 25);
        mapping1.put('Ram age is', 26);
        mapping1.put('Rahim age is', 24);
        system.debug('Mapping is:' +mapping1);
        system.debug('getting function :'+mapping1.get('Rahim age is'));
        system.debug('is the key present in function:' +mapping1.containsKey('Ravi in'));  
        system.debug('equals function :' +mapping1.equals('Vikky age is'));
        //system.debug('sobject :'+mapping1.getSObjectType('APPLE__C'));
        //s object doubt......, put(sobject),clone,*/
  }
    

}