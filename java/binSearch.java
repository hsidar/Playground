public int binSearch(number, arr){
    
    int middleIndex = Math.floor(arr.length / 2);
    System.out.println(arr[middleIndex]);
    
    if(arr.length < 2){
        return -1;
    } else if(arr[middleIndex] == number){
        return middleIndex;
    } else if(arr[middleIndex] > number){
        int[] newArr = Arrays.copyOfRange(arr, 0, middleIndex);
        binsearch(number, newArr);
    } else if(arr[middleIndex] < number){
        int[] newArr = Arrays.copyOfRange(arr, middleIndex, arr.length);
        binsearch(number, newArr);
    }
}