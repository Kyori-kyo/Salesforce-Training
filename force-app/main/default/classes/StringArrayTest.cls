public class StringArrayTest {
    //Public Method
    public static String[] generateStringArray(Integer length) {
        //Instantiate the list
        String[] myArray = new List<String>();

        //Iterate throught the list
        for(Integer i=0;i<length;i++) {
            //Populate the array
            myArray.add('Test ' + i);

            // Write value to the debug log
            System.debug(myArray[i]);
        } //end loop

        return myArray;
    }//end method       
}// end class