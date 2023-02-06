import 'dart:io';

void main() {
  
  String studentName = "Zahra";
  String studentSurname = "Aliyeva";
  String letter = '';
  int entranceScore=0;
  num totalScore =0;

 
  print("Zehmet olma kodunuzu daxil edin:");
  String? studentId = stdin.readLineSync();

  if(studentId == "12345") {
    print('Telebe adi: $studentName \nTelebe soyadi: $studentSurname \nTelebe id: $studentId');
    print("-------------------------------");

    print("1)Probability; \n2)Fuzzy logic; \n3)English; \n4)Computer networks");
    print("Fenn secin:");
    int subject = int.parse(stdin.readLineSync()!);


    print("Ballarinizi daxil edin: \nMidterm score:");
    int? midtermScore = int.parse(stdin.readLineSync()!);
    print("Active score:");
    int? activeScore = int.parse(stdin.readLineSync()!);
    print("presentation Score:");
    int? presentationScore = int.parse(stdin.readLineSync()!);
    print("exam Score:");
    int? examScore = int.parse(stdin.readLineSync()!);
    print("subjectCredit:");
    int? subjectCredit = int.parse(stdin.readLineSync()!);
    

    if(subject ==1) {
      
      exam(entranceScore, examScore, totalScore, midtermScore, activeScore, presentationScore, letter);
     
    } else if (subject == 2) {
      
      exam(entranceScore, examScore, totalScore, midtermScore, activeScore, presentationScore, letter);


    } else if (subject == 3){
      
      exam(entranceScore, examScore, totalScore, midtermScore, activeScore, presentationScore, letter);
      

    } else if(subject == 4) {
     
      exam(entranceScore, examScore, totalScore, midtermScore, activeScore, presentationScore, letter);

    } else {
      print("Bu fenn tedris olunmur!");
    }


  } else {
    print('Sistemde $studentId ile telebe yoxdu');
  }
}




void exam(int entranceScore, int examScore, num totalScore, int midtermScore, int activeScore,int presentationScore, String letter) {
  
  if(midtermScore <=20 && activeScore <=10 && presentationScore <=20) {

    entranceScore = midtermScore + activeScore + presentationScore;
    
    if(examScore <17) {
      print('Imtahandan topladiginiz bal: $examScore . Kesildiniz!');
          //kesirpulu Hesabla
    }else if (17 <= examScore && examScore <=50) {

      totalScore = examScore + entranceScore;
          
      if(51 <= totalScore && totalScore < 61) {
        letter= 'E';
        print('midterm Score: $midtermScore \nactive score: $activeScore \npresentation score: $presentationScore \nentrance score: $entranceScore \nexam score: $examScore \ntotalScore: $totalScore \nLetter: $letter');
      }else if (61 <= totalScore && totalScore <71) {
        letter= 'D';
        print('midterm Score: $midtermScore \nactive score: $activeScore \npresentation score: $presentationScore \nentrance score: $entranceScore \nexam score: $examScore \ntotalScore: $totalScore \nLetter: $letter');
      }else if (71 <= totalScore && totalScore < 81) {
        letter= 'C';
        print('midterm Score: $midtermScore \nactive score: $activeScore \npresentation score: $presentationScore \nentrance score: $entranceScore \nexam score: $examScore \ntotalScore: $totalScore \nLetter: $letter');
      }else if (81 <= totalScore && totalScore <91) {
        letter= 'B';
        print('midterm Score: $midtermScore \nactive score: $activeScore \npresentation score: $presentationScore \nentrance score: $entranceScore \nexam score: $examScore \ntotalScore: $totalScore \nLetter: $letter');
      }else if(91 <= totalScore && totalScore <=100){
        letter= 'A';
        print('midterm Score: $midtermScore \nactive score: $activeScore \npresentation score: $presentationScore \entrance score: $entranceScore \nexam score: $examScore \ntotalScore: $totalScore \nLetter: $letter');
      }else {
        print("Imtahandan topladiginiz bal: $totalScore. Kesildiniz!");
            //kesirpulu Hesabla
      }
    }else {
      print("Sistem xetasi...");
    }

  } else {
    print("Sistem xetasi...");
  }
}