/*
  Support for dired-sclang-preview-soundfile in emacs
*/
~sampleBufferDictionary = Dictionary[];

~sampleBuffer = {|path|
  s.waitForBoot({
    if (~sampleBufferDictionary[path].isNil) {
      ~sampleBufferDictionary.add(path -> Buffer.read(s, path, action: {|buf| buf.play(mul: 0.5)}));
    } {
      ~sampleBufferDictionary[path].play(mul: 0.5);
    };
  });
};
