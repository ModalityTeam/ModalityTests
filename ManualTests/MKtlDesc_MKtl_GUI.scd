~descs = MKtlDesc.loadDescs; ~descs.size;

~mktls = ~descs.collect { |desc| MKtl(desc.name, desc) }; ~mktls.size;
// ~mktls.do { |mk| try { mk.gui } { "fail: %\n".postf(mk) } };
~guis = ~mktls.collect (_.gui); ~guis.size;

// should be the same:
[~descs.size, ~mktls.size, ~guis.size];
Window.closeAll;

