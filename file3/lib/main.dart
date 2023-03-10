import 'dart:math';

void main() {
  doChores();
}

Future<String> makeToast() async {
  int randomNumber = Random().nextInt(3);
  // 0,1,2
  print('toaster is ON');
  // againMakeNotes();
  print(randomNumber);

  if (randomNumber == 0) {
    await Future.delayed(Duration(seconds: 2));
    return "success";
  } else if (randomNumber == 1) {
    await Future.delayed(Duration(seconds: 1));
    return "falure";
  } else {
    throw Exception();
  }
}

void makeNotes() {
  print('i am making notes');
}

void againMakeNotes() {
  print('i am agai making notes');
}

void hungury(String reason) {
  print(reason);
}

void doChores() {
  makeNotes();
  var toast = makeToast();
  againMakeNotes();
  toast.then((value) {
    if (value == "success") {
      hungury('i had my toast!!!');
    } else {
      hungury('a poor friend took my toast :-( ), i am hungery');
    }
  });
  toast.catchError((err) => hungury('light went, i am hungury'));
  // againMakeNotes();
}

Future<void> doChores2() async {
  makeNotes();
  String makesToast = await makeToast();
  if (makesToast == 'success') {
    hungury('i had toast');
  } else {
    hungury('friend took it');
  }
}
