use strict;
use warnings;

my $needle = "gattaatgcgatacgag";
my $haystack  = <<"_END_";
	1 cggacacaca aaaagaaaga agaattttta ggatcttttg tgtgcgaata actatgagga
       61 agattaataa ttttcctctc attgaaattt atatcggaat ttaaattgaa attgttactg
      121 taatcacacc tggtttgttt cagagccaca tcacaaagat agagaacaac ctaggtctcc
      181 gaagggagca agggcatcag tgtgctcagt tgaaaatccc ttgtcaacac ctaggtctta
      241 tcacatcaca agttccacct cagactctgc agggtgatcc aacaacctta atagaaacat
      301 tattgttaaa ggacagcatt agttcacagt caaacaagca agattgagaa ttaaccttgg
      361 ttttgaactt gaacacttag gggattgaag attcaacaac cctaaagctt ggggtaaaac
      421 attggaaata gttaaaagac aaattgctcg gaatcacaaa attccgagta tggattctcg
      481 tcctcagaaa atctggatgg cgccgagtct cactgaatct gacatggatt accacaagat
      541 cttgacagca ggtctgtccg ttcaacaggg gattgttcgg caaagagtca tcccagtgta
      601 tcaagtaaac aatcttgaag aaatttgcca acttatcata caggcctttg aagcaggtgt
      661 tgattttcaa gagagtgcgg acagtttcct tctcatgctt tgtcttcatc atgcgtacca
      721 gggagattac aaacttttct tggaaagtgg cgcagtcaag tatttggaag ggcacgggtt
      781 ccgttttgaa gtcaagaagc gtgatggagt gaagcgcctt gaggaattgc tgccagcagt
      841 atctagtgga aaaaacatta agagaacact tgctgccatg ccggaagagg agacaactga
      901 agctaatgcc ggtcagtttc tctcctttgc aagtctattc cttccgaaat tggtagtagg
      961 agaaaaggct tgccttgaga aggttcaaag gcaaattcaa gtacatgcag agcaaggact
     1021 gatacaatat ccaacagctt ggcaatcagt aggacacatg atggtgattt tccgtttgat
     1081 gcgaacaaat tttctgatca aatttctcct aatacaccaa gggatgcaca tggttgccgg
     1141 gcatgatgcc aacgatgctg tgatttcaaa ttcagtggct caagctcgtt tttcaggctt
     1201 attgattgtc aaaacagtac ttgatcatat cctacaaaag acagaacgag gagttcgtct
     1261 ccatcctctt gcaaggaccg ccaaggtaaa aaatgaggtg aactccttta aggctgcact
     1321 cagctccctg gccaagcatg gagagtatgc tcctttcgcc cgacttttga acctttctgg
     1381 agtaaataat cttgagcatg gtcttttccc tcaactatcg gcaattgcac tcggagtcgc
     1441 cacagcacac gggagtaccc tcgcaggagt aaatgttgga gaacagtatc aacaactcag
     1501 agaggctgcc actgaggctg agaagcaact ccaacaatat gcagagtctc gcgaacttga
     1561 ccatcttgga cttgatgatc aggaaaagaa aattcttatg aacttccatc agaaaaagaa
     1621 cgaaatcagc ttccagcaaa caaacgctat ggtaactcta agaaaagagc gcctggccaa
     1681 gctgacagaa gctatcactg ctgcgtcact gcccaaaaca agtggacatt acgatgatga
     1741 tgacgacatt ccctttccag gacccatcaa tgatgacgac aatcctggcc atcaagatga
     1801 tgatccgact gactcacagg atacgaccat tcccgatgtg gtggttgatc ccgatgatgg
     1861 aagctacggc gaataccaga gttactcgga aaacggcatg aatgcaccag atgacttggt
     1921 cctattcgat ctagacgagg acgacgagga cactaagcca gtgcctaata gatcgaccaa
     1981 gggtggacaa cagaagaaca gtcaaaaggg ccagcatata gagggcagac agacacaatc
     2041 caggccaatt caaaatgtcc caggccctca cagaacaatc caccacgcca gtgcgccact
     2101 cacggacaat gacagaagaa atgaaccctc cggctcaacc agccctcgca tgctgacacc
     2161 aattaacgaa gaggcagacc cactggacga tgccgacgac gagacgtcta gccttccgcc
     2221 cttggagtca gatgatgaag agcaggacag ggacggaact tccaaccgca cacccactgt
     2281 cgccccaccg gctcccgtat acagagatca ctctgaaaag aaagaactcc cgcaagacga
     2341 gcaacaagat caggaccaca ctcaagaggc caggaaccag gacagtgaca acacccagtc
     2401 agaacactct tttgaggaga tgtatcgcca cattctaaga tcacaggggc catttgatgc
     2461 tgttttgtat tatcatatga tgaaggatga gcctgtagtt ttcagtacca gtgatggcaa
     2521 agagtacacg tatccagact cccttgaaga ggaatatcca ccatggctca ctgaaaaaga
     2581 ggctatgaat gaagagaata gatttgttac attggatggt caacaatttt attggccggt
     2641 gatgaatcac aagaataaat tcatggcaat cctgcaacat catcagtgaa tgagcatgga
     2701 acaatgggat gattcaaccg acaaatagct aacattaagt agtcaaggaa cgaaaacagg
     2761 aagaattttt gatgtctaag gtgtgaatta ttatcacaat aaaagtgatt cttatttttg
     2821 aatttaaagc tagcttatta ttactagccg tttttcaaag ttcaatttga gtcttaatgc
     2881 aaataggcgt taagccacag ttatagccat aattgtaact caatattcta actagcgatt
     2941 tatctaaatt aaattacatt atgcttttat aacttaccta ctagcctgcc caacatttac
     3001 acgatcgttt tataattaag aaaaaactaa tgatgaagat taaaaccttc atcatcctta
     3061 cgtcaattga attctctagc actcgaagct tattgtcttc aatgtaaaag aaaagctggt
     3121 ctaacaagat gacaactaga acaaagggca ggggccatac tgcggccacg actcaaaacg
     3181 acagaatgcc aggccctgag ctttcgggct ggatctctga gcagctaatg accggaagaa
     3241 ttcctgtaag cgacatcttc tgtgatattg agaacaatcc aggattatgc tacgcatccc
     3301 aaatgcaaca aacgaagcca aacccgaaga cgcgcaacag tcaaacccaa acggacccaa
     3361 tttgcaatca tagttttgag gaggtagtac aaacattggc ttcattggct actgttgtgc
     3421 aacaacaaac catcgcatca gaatcattag aacaacgcat tacgagtctt gagaatggtc
     3481 taaagccagt ttatgatatg gcaaaaacaa tctcctcatt gaacagggtt tgtgctgaga
     3541 tggttgcaaa atatgatctt ctggtgatga caaccggtcg ggcaacagca accgctgcgg
     3601 caactgaggc ttattgggcc gaacatggtc aaccaccacc tggaccatca ctttatgaag
     3661 aaagtgcgat tcggggtaag attgaatcta gagatgagac cgtccctcaa agtgttaggg
     3721 aggcattcaa caatctaaac agtaccactt cactaactga ggaaaatttt gggaaacctg
     3781 acatttcggc aaaggatttg agaaacatta tgtatgatca cttgcctggt tttggaactg
     3841 ctttccacca attagtacaa gtgatttgta aattgggaaa agatagcaac tcattggaca
     3901 tcattcatgc tgagttccag gccagcctgg ctgaaggaga ctctcctcaa tgtgccctaa
     3961 ttcaaattac aaaaagagtt ccaatcttcc aagatgctgc tccacctgtc atccacatcc
     4021 gctctcgagg tgacattccc cgagcttgcc agaaaagctt gcgtccagtc ccaccatcgc
     4081 ccaagattga tcgaggttgg gtatgtgttt ttcagcttca agatggtaaa acacttggac
     4141 tcaaaatttg agccaatctc ccttccctcc gaaagaggcg aataatagca gaggcttcaa
     4201 ctgctgaact atagggtacg ttacattaat gatacacttg tgagtatcag ccctggataa
     4261 tataagtcaa ttaaacgacc aagataaaat tgttcatatc tcgctagcag cttaaaatct
     4321 aaatgtaata ggagctatat ctctgacagt attataatca attgttatta agtaacccaa
     4381 accaaaagtg atgaagatta agaaaaacct acctcggctg agagagtgtt ttttcattaa
     4441 ccttcatctt gtaaacgttg agcaaaattg ttaaaaatat gaggcgggtt atattgccta
     4501 ctgctcctcc tgaatatatg gaggccatat accctgtcag gtcaaattca acaattgcta
     4561 gaggtggcaa cagcaataca ggcttcctga caccggagtc agtcaatggg gacactccat
     4621 cgaatccact caggccaatt gccgatgaca ccatcgacca tgccagccac acaccaggca
     4681 gtgtgtcatc agcattcatc cttgaagcta tggtgaatgt catatcgggc cccaaagtgc
     4741 taatgaagca aattccaatt tggcttcctc taggtgtcgc tgatcaaaag acctacagct
     4801 ttgactcaac tacggccgcc atcatgcttg cttcatacac tatcacccat ttcggcaagg
     4861 caaccaatcc acttgtcaga gtcaatcggc tgggtcctgg aatcccggat catcccctca
     4921 ggctcctgcg aattggaaac caggctttcc tccaggagtt cgttcttccg ccagtccaac
     4981 taccccagta tttcaccttt gatttgacag cactcaaact gatcacccaa ccactgcctg
     5041 ctgcaacatg gaccgatgac actccaacag gatcaaatgg agcgttgcgt ccaggaattt
     5101 catttcatcc aaaacttcgc cccattcttt tacccaacaa aagtgggaag aaggggaaca
     5161 gtgccgatct aacatctccg gagaaaatcc aagcaataat gacttcactc caggacttta
     5221 agatcgttcc aattgatcca accaaaaata tcatgggaat cgaagtgcca gaaactctgg
     5281 tccacaagct gaccggtaag aaggtgactt ctaaaaatgg acaaccaatc atccctgttc
     5341 ttttgccaaa gtacattggg ttggacccgg tggctccagg agacctcacc atggtaatca
     5401 cacaggattg tgacacgtgt cattctcctg caagtcttcc agctgtgatt gagaagtaat
     5461 tgcaataatt gactcagatc cagttttata gaatcttctc agggatagtg ataacatcta
     5521 tttagtaatc cgtccattag aggagacact tttaattgat caatatacta aaggtgcttt
     5581 acaccattgt cttttttctc tcctaaatgt agaacttaac aaaagactca taatatactt
     5641 gtttttaaag gattgattga tgaaagatca taactaataa cattacaaat aatcctacta
     5701 taatcaatac ggtgattcaa atgttaatct ttctcattgc acatactttt tgcccttatc
     5761 ctcaaattgc ctgcatgctt acatctgagg atagccagtg tgacttggat tggaaatgtg
     5821 gagaaaaaat cgggacccat ttctaggttg ttcacaatcc aagtacagac attgcccttc
     5881 taattaagaa aaaatcggcg atgaagatta agccgacagt gagcgtaatc ttcatctctc
     5941 ttagattatt tgttttccag agtaggggtc gtcaggtcct tttcaatcgt gtaaccaaaa
     6001 taaactccac tagaaggata ttgtggggca acaacacaat gggcgttaca ggaatattgc
     6061 agttacctcg tgatcgattc aagaggacat cattctttct ttgggtaatt atccttttcc
     6121 aaagaacatt ttccatccca cttggagtca tccacaatag cacattacag gttagtgatg
     6181 tcgacaaact agtttgtcgt gacaaactgt catccacaaa tcaattgaga tcagttggac
     6241 tgaatctcga agggaatgga gtggcaactg acgtgccatc tgcaactaaa agatggggct
     6301 tcaggtccgg tgtcccacca aaggtggtca attatgaagc tggtgaatgg gctgaaaact
     6361 gctacaatct tgaaatcaaa aaacctgacg ggagtgagtg tctaccagca gcgccagacg
     6421 ggattcgggg cttcccccgg tgccggtatg tgcacaaagt atcaggaacg ggaccgtgtg
     6481 ccggagactt tgccttccat aaagagggtg ctttcttcct gtatgatcga cttgcttcca
     6541 cagttatcta ccgaggaacg actttcgctg aaggtgtcgt tgcatttctg atactgcccc
     6601 aagctaagaa ggacttcttc agctcacacc ccttgagaga gccggtcaat gcaacggagg
     6661 acccgtctag tggctactat tctaccacaa ttagatatca ggctaccggt tttggaacca
     6721 atgagacaga gtacttgttc gaggttgaca atttgaccta cgtccaactt gaatcaagat
     6781 tcacaccaca gtttctgctc cagctgaatg agacaatata tacaagtggg aaaaggagca
     6841 ataccacggg aaaactaatt tggaaggtca accccgaaat tgatacaaca atcggggagt
     6901 gggccttctg ggaaactaaa aaaacctcac tagaaaaatt cgcagtgaag agttgtcttt
     6961 cacagttgta tcaaacggag ccaaaaacat cagtggtcag agtccggcgc gaacttcttc
     7021 cgacccaggg accaacacaa caactgaaga ccacaaaatc atggcttcag aaaattcctc
     7081 tgcaatggtt caagtgcaca gtcaaggaag ggaagctgca gtgtcgcatc taacaaccct
     7141 tgccacaatc tccacgagtc cccaatccct cacaaccaaa ccaggtccgg acaacagcac
     7201 ccataataca cccgtgtata aacttgacat ctctgaggca actcaagttg aacaacatca
     7261 ccgcagaaca gacaacgaca gcacagcctc cgacactccc tctgccacga ccgcagccgg
     7321 acccccaaaa gcagagaaca ccaacacgag caagagcact gacttcctgg accccgccac
     7381 cacaacaagt ccccaaaacc acagcgagac cgctggcaac aacaacactc atcaccaaga
     7441 taccggagaa gagagtgcca gcagcgggaa gctaggctta attaccaata ctattgctgg
     7501 agtcgcagga ctgatcacag gcgggagaag aactcgaaga gaagcaattg tcaatgctca
     7561 acccaaatgc aaccctaatt tacattactg gactactcag gatgaaggtg ctgcaatcgg
     7621 actggcctgg ataccatatt tcgggccagc agccgaggga atttacatag aggggctaat
     7681 gcacaatcaa gatggtttaa tctgtgggtt gagacagctg gccaacgaga cgactcaagc
     7741 tcttcaactg ttcctgagag ccacaactga gctacgcacc ttttcaatcc tcaaccgtaa
     7801 ggcaattgat ttcttgctgc agcgatgggg cggcacatgc cacattctgg gaccggactg
     7861 ctgtatcgaa ccacatgatt ggaccaagaa cataacagac aaaattgatc agattattca
     7921 tgattttgtt gataaaaccc ttccggacca gggggacaat gacaattggt ggacaggatg
     7981 gagacaatgg ataccggcag gtattggagt tacaggcgtt ataattgcag ttatcgcttt
     8041 attctgtata tgcaaatttg tcttttagtt tttcttcaga ttgcttcatg gaaaagctca
     8101 gcctcaaatc aatgaaacca ggatttaatt atatggatta cttgaatcta agattacttg
     8161 acaaatgata atataataca ctggagcttt aaacatagcc aatgtgattc taactccttt
     8221 aaactcacag ttaatcataa acaaggtttg acatcaatct agttatctct ttgagaatga
     8281 taaacttgat gaagattaag aaaaaggtaa tctttcgatt atctttaatc ttcatccttg
     8341 attctacaat catgacagtt gtctttagtg acaagggaaa gaagcctttt tattaagttg
     8401 taataatcag atctgcgaac cggtagagtt tagttgcaac ctaacacaca taaagcattg
     8461 gtcaaaaagt caatagaaat ttaaacagtg agtggagaca acttttaaat ggaagcttca
     8521 tatgagagag gacgcccacg agctgccaga cagcattcaa gggatggaca cgaccaccat
     8581 gttcgagcac gatcatcatc cagagagaat tatcgaggtg agtaccgtca atcaaggagc
     8641 gcctcacaag tgcgcgttcc tactgtattt cataagaaga gagttgaacc attaacagtt
     8701 cctccagcac ctaaagacat atgtccgacc ttgaaaaaag gatttttgtg tgacagtagt
     8761 ttttgcaaaa aagatcacca gttggagagt ttaactgata gggaattact cctactaatc
     8821 gcccgtaaga cttgtggatc agtagaacaa caattaaata taactgcacc caaggactcg
     8881 cgcttagcaa atccaacggc tgatgatttc cagcaagagg aaggtccaaa aattaccttg
     8941 ttgacactga tcaagacggc agaacactgg gcgagacaag acatcagaac catagaggat
     9001 tcaaaattaa gagcattgtt gactctatgt gctgtgatga cgaggaaatt ctcaaaatcc
     9061 cagctgagtc ttttatgtga gacacaccta aggcgcgagg ggcttgggca agatcaggca
     9121 gaacccgttc tcgaagtata tcaacgatta cacagtgata aaggaggcag ttttgaagct
     9181 gcactatggc aacaatggga ccgacaatcc ctaattatgt ttatcactgc attcttgaat
     9241 attgctctcc agttaccgtg tgaaagttct gctgtcgttg tttcagggtt aagaacattg
     9301 gttcctcaat cagataatga ggaagcttca accaacccgg ggacatgctc atggtctgat
     9361 gagggtaccc cttaataagg ctgactaaaa cactatataa ccttctactt gatcacaata
     9421 ctccgtatac ctatcatcat atatttaatc aagacgatat cctttaaaac ttattcagta
     9481 ctataatcac tctcgtttca aattaataag atgtgcatga ttgccctaat atatgaagag
     9541 gtatgataca accctaacag tgatcaaaga aaatcataat ctcgtatcgc tcgtaatata
     9601 acctgccaag catacctctt gcacaaagtg attcttgtac acaaataatg ttttactcta
     9661 caggaggtag caacgatcca tcccatcaaa aaataagtat ttcatgactt actaatgatc
     9721 tcttaaaata ttaagaaaaa ctgacggaac ataaattctt tatgcttcaa gctgtggagg
     9781 aggtgtttgg tattggctat tgttatatta caatcaataa caagcttgta aaaatattgt
     9841 tcttgtttca agaggtagat tgtgaccgga aatgctaaac taatgatgaa gattaatgcg
     9901 gaggtctgat aagaataaac cttattattc agattaggcc ccaagaggca ttcttcatct
     9961 ccttttagca aagtactatt tcagggtagt ccaattagtg gcacgtcttt tagctgtata
    10021 tcagtcgccc ctgagatacg ccacaaaagt gtctctaagc taaattggtc tgtacacatc
    10081 ccatacattg tattaggggc aataatatct aattgaactt agccgtttaa aatttagtgc
    10141 ataaatctgg gctaacacca ccaggtcaac tccattggct gaaaagaagc ttacctacaa
    10201 cgaacatcac tttgagcgcc ctcacaatta aaaaatagga acgtcgttcc aacaatcgag
    10261 cgcaaggttt caaggttgaa ctgagagtgt ctagacaaca aaatattgat actccagaca
    10321 ccaagcaaga cctgagaaaa aaccatggct aaagctacgg gacgatacaa tctaatatcg
    10381 cccaaaaagg acctggagaa aggggttgtc ttaagcgacc tctgtaactt cttagttagc
    10441 caaactattc aggggtggaa ggtttattgg gctggtattg agtttgatgt gactcacaaa
    10501 ggaatggccc tattgcatag actgaaaact aatgactttg cccctgcatg gtcaatgaca
    10561 aggaatctct ttcctcattt atttcaaaat ccgaattcca caattgaatc accgctgtgg
    10621 gcattgagag tcatccttgc agcagggata caggaccagc tgattgacca gtctttgatt
    10681 gaacccttag caggagccct tggtctgatc tctgattggc tgctaacaac caacactaac
    10741 catttcaaca tgcgaacaca acgtgtcaag gaacaattga gcctaaaaat gctgtcgttg
    10801 attcgatcca atattctcaa gtttattaac aaattggatg ctctacatgt cgtgaactac
    10861 aacggattgt tgagcagtat tgaaattgga actcaaaatc atacaatcat cataactcga
    10921 actaacatgg gttttctggt ggagctccaa gaacccgaca aatcggcaat gaaccgcatg
    10981 aagcctgggc cggcgaaatt ttccctcctt catgagtcca cactgaaagc atttacacaa
    11041 ggatcctcga cacgaatgca aagtttgatt cttgaattta atagctctct tgctatctaa
    11101 ctaaggtaga atacttcata ttgagctaac tcatatatgc tgactcaata gttatcttga
    11161 catctctgct ttcataatca gatatataag cataataaat aaatactcat atttcttgat
    11221 aatttgttta accacagata aatcctcact gtaagccagc ttccaagttg acacccttac
    11281 aaaaaccagg actcagaatc cctcaaacaa gagattccaa gacaacatca tagaattgct
    11341 ttattatatg aataagcatt ttatcaccag aaatcctata tactaaatgg ttaattgtaa
    11401 ctgaacccgc aggtcacatg tgttaggttt cacagattct atatattact aactctatac
    11461 tcgtaattaa cattagataa gtagattaag aaaaaagcct gaggaagatt aagaaaaact
    11521 gcttattggg tctttccgtg ttttagatga agcagttgaa attcttcctc ttgatattaa
    11581 atggctacac aacataccca atacccagac gctaggttat catcaccaat tgtattggac
    11641 caatgtgacc tagtcactag agcttgcggg ttatattcat catactccct taatccgcaa
    11701 ctacgcaact gtaaactccc gaaacatatc taccgtttga aatacgatgt aactgttacc
    11761 aagttcttga gtgatgtacc agtggcgaca ttgcccatag atttcatagt cccagttctt
    11821 ctcaaggcac tgtcaggcaa tggattctgt cctgttgagc cgcggtgcca acagttctta
    11881 gatgaaatca ttaagtacac aatgcaagat gctctcttct tgaaatatta tctcaaaaat
    11941 gtgggtgctc aagaagactg tgttgatgaa cactttcaag agaaaatctt atcttcaatt
    12001 cagggcaatg aatttttaca tcaaatgttt ttctggtatg atctggctat tttaactcga
    12061 aggggtagat taaatcgagg aaactctaga tcaacatggt ttgttcatga tgatttaata
    12121 gacatcttag gctatgggga ctatgttttt tggaagatcc caatttcaat gttaccactg
    12181 aacacacaag gaatccccca tgctgctatg gactggtatc aggcatcagt attcaaagaa
    12241 gcggttcaag ggcatacaca cattgtttct gtttctactg ccgacgtctt gataatgtgc
    12301 aaagatttaa ttacatgtcg attcaacaca actctaatct caaaaatagc agagattgag
    12361 gatccagttt gttctgatta tcccaatttt aagattgtgt ctatgcttta ccagagcgga
    12421 gattacttac tctccatatt agggtctgat gggtataaaa ttattaagtt cctcgaacca
    12481 ttgtgcttgg ccaaaattca attatgctca aagtacactg agaggaaggg ccgattctta
    12541 acacaaatgc atttagctgt aaatcacacc ctagaagaaa ttacagaaat gcgtgcacta
    12601 aagccttcac aggctcaaaa gatccgtgaa ttccatagaa cattgataag gctggagatg
    12661 acgccacaac aactttgtga gctattttcc attcaaaaac actgggggca tcctgtgcta
    12721 catagtgaaa cagcaatcca aaaagttaaa aaacatgcta cggtgctaaa agcattacgc
    12781 cctatagtga ttttcgagac atactgtgtt tttaaatata gtattgccaa acattatttt
    12841 gatagtcaag gatcttggta cagtgttact tcagatagga atctaacacc gggtcttaat
    12901 tcttatatca aaagaaatca attccctccg ttgccaatga ttaaagaact actatgggaa
    12961 ttttaccacc ttgaccaccc tccacttttc tcaaccaaaa ttattagtga cttaagtatt
    13021 tttataaaag acagagctac cgcagtagaa aggacatgct gggatgcagt attcgagcct
    13081 aatgttctag gatataatcc acctcacaaa tttagtacta aacgtgtacc ggaacaattt
    13141 ttagagcaag aaaacttttc tattgagaat gttctttcct acgcacaaaa actcgagtat
    13201 ctactaccac aatatcggaa cttttctttc tcattgaaag agaaagagtt gaatgtaggt
    13261 agaaccttcg gaaaattgcc ttatccgact cgcaatgttc aaacactttg tgaagctctg
    13321 ttagctgatg gtcttgctaa agcatttcct agcaatatga tggtagttac ggaacgtgag
    13381 caaaaagaaa gcttattgca tcaagcatca tggcaccaca caagtgatga ttttggtgaa
    13441 catgccacag ttagagggag tagctttgta actgatttag agaaatacaa tcttgcattt
    13501 agatatgagt ttacagcacc ttttatagaa tattgcaacc gttgctatgg tgttaagaat
    13561 gtttttaatt ggatgcatta tacaatccca cagtgttata tgcatgtcag tgattattat
    13621 aatccaccac ataacctcac actggagaat cgagacaacc cccccgaagg gcctagttca
    13681 tacaggggtc atatgggagg gattgaagga ctgcaacaaa aactctggac aagtatttca
    13741 tgtgctcaaa tttctttagt tgaaattaag actggtttta agttacgctc agctgtgatg
    13801 ggtgacaatc agtgcattac tgttttatca gtcttcccct tagagactga cgcagacgag
    13861 caggaacaga gcgccgaaga caatgcagcg agggtggccg ccagcctagc aaaagttaca
    13921 agtgcctgtg gaatcttttt aaaacctgat gaaacatttg tacattcagg ttttatctat
    13981 tttggaaaaa aacaatattt gaatggggtc caattgcctc agtcccttaa aacggctaca
    14041 agaatggcac cattgtctga tgcaattttt gatgatcttc aagggaccct ggctagtata
    14101 ggcactgctt ttgagcgatc catctctgag acacgacata tctttccttg caggataacc
    14161 gcagctttcc atacgttttt ttcggtgaga atcttgcaat atcatcatct cgggttcaat
    14221 aaaggttttg accttggaca gttaacactc ggcaaacctc tggatttcgg aacaatatca
    14281 ttggcactag cggtaccgca ggtgcttgga gggttatcct tcttgaatcc tgagaaatgt
    14341 ttctaccgga atctaggaga tccagttacc tcaggcttat tccagttaaa aacttatctc
    14401 cgaatgattg agatggatga tttattctta cctttaattg cgaagaaccc tgggaactgc
    14461 actgccattg actttgtgct aaatcctagc ggattaaatg tccctgggtc gcaagactta
    14521 acttcatttc tgcgccagat tgtacgcagg accatcaccc taagtgcgaa aaacaaactt
    14581 attaatacct tatttcatgc gtcagctgac ttcgaagacg aaatggtttg taaatggcta
    14641 ttatcatcaa ctcctgttat gagtcgtttt gcggccgata tcttttcacg cacgccgagc
    14701 gggaagcgat tgcaaattct aggatacctg gaaggaacac gcacattatt agcctctaag
    14761 atcatcaaca ataatacaga gacaccggtt ttggacagac tgaggaaaat aacattgcaa
    14821 aggtggagcc tatggtttag ttatcttgat cattgtgata atatcctggc ggaggcttta
    14881 acccaaataa cttgcacagt tgatttagca cagattctga gggaatattc atgggctcat
    14941 attttagagg gaagacctct tattggagcc acactcccat gtatgattga gcaattcaaa
    15001 gtgttttggc tgaaacccta cgaacaatgt ccgcagtgtt caaatgcaaa gcaaccaggt
    15061 gggaaaccat tcgtgtcagt ggcagtcaag aaacatattg ttagtgcatg gccgaacgca
    15121 tcccgaataa gctggactat cggggatgga atcccataca ttggatcaag gacagaagat
    15181 aagataggac aacctgctat taaaccaaaa tgtccttccg cagccttaag agaggccatt
    15241 gaattggcgt cccgtttaac atgggtaact caaggcagtt cgaacagtga cttgctaata
    15301 aaaccatttt tggaagcacg agtaaattta agtgttcaag aaatacttca aatgacccct
    15361 tcacattact caggaaatat tgttcacagg tacaacgatc aatacagtcc tcattctttc
    15421 atggccaatc gtatgagtaa ttcagcaacg cgattgattg tttctacaaa cactttaggt
    15481 gagttttcag gaggtggcca gtctgcacgc gacagcaata ttattttcca gaatgttata
    15541 aattatgcag ttgcactgtt cgatattaaa tttagaaaca ctgaggctac agatatccaa
    15601 tataatcgtg ctcaccttca tctaactaag tgttgcaccc gggaagtacc agctcagtat
    15661 ttaacataca catctacatt ggatttagat ttaacaagat accgagaaaa cgaattgatt
    15721 tatgacagta atcctctaaa aggaggactc aattgcaata tctcattcga taatccattt
    15781 ttccaaggta aacggctgaa cattatagaa gatgatctta ttcgactgcc tcacttatct
    15841 ggatgggagc tagccaagac catcatgcaa tcaattattt cagatagcaa caattcatct
    15901 acagacccaa ttagcagtgg agaaacaaga tcattcacta cccatttctt aacttatccc
    15961 aagataggac ttctgtacag ttttggggcc tttgtaagtt attatcttgg caatacaatt
    16021 cttcggacta agaaattaac acttgacaat tttttatatt acttaactac tcaaattcat
    16081 aatctaccac atcgctcatt gcgaatactt aagccaacat tcaaacatgc aagcgttatg
    16141 tcacggttaa tgagtattga tcctcatttt tctatttaca taggcggtgc tgcaggtgac
    16201 agaggactct cagatgcggc caggttattt ttgagaacgt ccatttcatc ttttcttaca
    16261 tttgtaaaag aatggataat taatcgcgga acaattgtcc ctttatggat agtatatccg
    16321 ctagagggtc aaaacccaac acctgtgaat aattttctct atcagatcgt agaactgctg
    16381 gtgcatgatt catcaagaca acaggctttt aaaactacca taagtgatca tgtacatcct
    16441 cacgacaatc ttgtttacac atgtaagagt acagccagca atttcttcca tgcatcattg
    16501 gcgtactgga ggagcagaca cagaaacagc aaccgaaaat acttggcaag agactcttca
    16561 actggatcaa gcacaaacaa cagtgatggt catattgaga gaagtcaaga acaaaccacc
    16621 agagatccac atgatggcac tgaacggaat ctagtcctac aaatgagcca tgaaataaaa
    16681 agaacgacaa ttccacaaga aaacacgcac cagggtccgt cgttccagtc ctttctaagt
    16741 gactctgctt gtggtacagc aaatccaaaa ctaaatttcg atcgatcgag acacaatgtg
    16801 aaatttcagg atcataactc ggcatccaag agggaaggtc atcaaataat ctcacaccgt
    16861 ctagtcctac ctttctttac attatctcaa gggacacgcc aattaacgtc atccaatgag
    16921 tcacaaaccc aagacgagat atcaaagtac ttacggcaat tgagatccgt cattgatacc
    16981 acagtttatt gtagatttac cggtatagtc tcgtccatgc attacaaact tgatgaggtc
    17041 ctttgggaaa tagagagttt caagtcggct gtgacgctag cagagggaga aggtgctggt
    17101 gccttactat tgattcagaa ataccaagtt aagaccttat ttttcaacac gctagctact
    17161 gagtccagta tagagtcaga aatagtatca ggaatgacta ctcctaggat gcttctacct
    17221 gttatgtcaa aattccataa tgaccaaatt gagattattc ttaacaactc agcaagccaa
    17281 ataacagaca taacaaatcc tacttggttt aaagaccaaa gagcaaggct acctaagcaa
    17341 gtcgaggtta taaccatgga tgcagagaca acagagaata taaacagatc gaaattgtac
    17401 gaagctgtat ataaattgat cttacaccat attgatccta gcgtattgaa agcagtggtc
    17461 cttaaagtct ttctaagtga tactgagggt atgttatggc taaatgataa tttagccccg
    17521 ttttttgcca ctggttattt aattaagcca ataacgtcaa gtgctagatc tagtgagtgg
    17581 tatctttgtc tgacgaactt cttatcaact acacgtaaga tgccacacca aaaccatctc
    17641 agttgtaaac aggtaatact tacggcattg caactgcaaa ttcaacgaag cccatactgg
    17701 ctaagtcatt taactcagta tgctgactgt gagttacatt taagttatat ccgccttggt
    17761 tttccatcat tagagaaagt actataccac aggtataacc tcgtcgattc aaaaagaggt
    17821 ccactagtct ctatcactca gcacttagca catcttagag cagagattcg agaattaact
    17881 aatgattata atcaacagcg acaaagtcgg actcaaacat atcactttat tcgtactgca
    17941 aaaggacgaa tcacaaaact agtcaatgat tatttaaaat tctttcttat tgtgcaagca
    18001 ttaaaacata atgggacatg gcaagctgag tttaagaaat taccagagtt gattagtgtg
    18061 tgcaataggt tctaccatat tagagattgc aattgtgaag aacgtttctt agttcaaacc
    18121 ttatatttac atagaatgca ggattctgaa gttaagctta tcgaaaggct gacagggctt
    18181 ctgagtttat ttccggatgg tctctacagg tttgattgaa ttaccgtgca tagtatcctg
    18241 atacttgcaa aggttggtta ttaacataca gattataaaa aactcataaa ttgctctcat
    18301 acatcatatt gatctaatct caataaacaa ctatttaaat aacgaaagga gtccctatat
    18361 tatatactat atttagcctc tctccctgcg tgataatcaa aaaattcaca atgcagcatg
    18421 tgtgacatat tactgccgca atgaatttaa cgcaacataa taaactctgc actctttata
    18481 attaagcttt aacgaaaggt ctgggctcat attgttattg atataataat gttgtatcaa
    18541 tatcctgtca gatggaatag tgttttggtt gataacacaa cttcttaaaa caaaattgat
    18601 ctttaagatt aagtttttta taattatcat tactttaatt tgtcgtttta aaaacggtga
    18661 tagccttaat ctttgtgtaa aataagagat taggtgtaat aaccttaaca tttttgtcta
    18721 gtaagctact atttcataca gaatgataaa attaaaagaa aaggcaggac tgtaaaatca
    18781 gaaatacctt ctttacaata tagcagacta gataataatc ttcgtgttaa tgataattaa
    18841 gacattgacc acgctcatca gaaggctcgc cagaataaac gttgcaaaaa ggattcctgg
    18901 aaaaatggtc gcacacaaaa atttaaaaat aaatctattt cttctttttt gtgtgtcca
//
_END_


my @pairWiseScores; #this will hold the scores of each indexed matching
my $tempScore; #this will temporarily hold the needle match at each index

#Stores every a, c, t and g into an array
my @splitHaystack = ($haystack =~/[actg]/g);

#Calculate the number of nucleotides
my $count = scalar @splitHaystack;

#Split the needle into individual entries in an array
my @splitNeedle = split(//, $needle);

#Calculate the number of the Needle's nucleotides
my $needleLength = length($needle);

#Start at each index number
for (my $j=0; $j<= $count; $j++){
	#Clear the Temp count
	$tempScore = 0;

	#For every nucleotide in the needle
	for (my $i=0; $i < $needleLength; $i++){
		my $firstEntry = ($j + $i);
		my $secondEntry = $i;
		my $comparisonOne = $splitHaystack[$firstEntry];
		my $comparisonTwo = $splitNeedle[$secondEntry];
		if ($comparisonOne){
			if ($comparisonOne eq $comparisonTwo){
				$tempScore++;
			}
		}
	}
	push @pairWiseScores, $tempScore;
}
#Finds Max Value
my @pairWiseCopy = @pairWiseScores;
my $max = (sort { $b <=> $a } @pairWiseCopy)[0];

#Finds Index of Max Value
my @matchesList;
for (0 .. $#pairWiseScores){
	if ($pairWiseScores[$_]=~ $max){
		push @matchesList, $_;
	}
}
my @slice = @splitHaystack[$matchesList[0] .. (($matchesList[0]) + $needleLength - 1)];

my $matchSeq = join('', @slice);

#Find Percent Identity
my $percentIdentity = sprintf("%.4f",($max*100/$needleLength));

#Find Ending Index
my $indexEnd = ($matchesList[0]) + $needleLength - 1;
print "PairWise Sequence Alignment Report:\n";
print "search  sequence:         '$needle'\n";
print "matched sequence:         '$matchSeq'\n";
print "highest percent identity: $percentIdentity%\n";
print "start index:              $matchesList[0]\n";
print "end index:                $indexEnd\n";