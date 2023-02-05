import 'dart:math';

void main() {
  doChores();
}

Future<String> makeToast() async {
  int randomNumber = Random().nextInt(3);
  // 0,1,2
  print('toaster is ON');
  againMakeNotes();
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

Future<void> doChores() async {
  makeNotes();
  try {
    String makesToast = await makeToast();
    if (makesToast == 'success') {
      hungury('i had toast');
    } else {
      hungury('friend took it');
    }
  } catch (err) {
    print('electrivty went');
  }
}
