IWSLT:
	th translate.lua -model models/onmt_baseline_wmt15-all.de-en_epoch13_8.98_release.t7 -src data/IWSLT/test.de-en.de -gpuid 1,2 -output data/IWSLT/test.de-en.de.pred -replace_unk
	./benchmark/3rdParty/multi-bleu.perl data/IWSLT/test.de-en.en < data/IWSLT/test.de-en.de.pred
wmt14:
	th translate.lua -model models/onmt_baseline_wmt15-all.de-en_epoch13_8.98_release.t7 -src data/tgt-test.txt -gpuid 1,2 -output data/tgt-test.pred -replace_unk
	./benchmark/3rdParty/multi-bleu.perl data/src-test.txt < data/tgt-test.pred
