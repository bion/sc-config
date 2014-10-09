q = [
  "cruciallib",
  "Ctk",
  "BatLib",
  "Feedback",
  "Vowel",
  "XML"
];

q.do {|quark|
  Quarks.install(quark);
};
