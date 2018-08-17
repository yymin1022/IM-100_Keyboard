.class public Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.super Lcom/pantech/inputmethod/skyime/Dictionary;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;,
        Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;,
        Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;,
        Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;,
        Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;,
        Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    }
.end annotation


# static fields
.field private static final BASE_CHARS:[C

.field protected static final BIGRAM_MAX_FREQUENCY:I = 0xff


# instance fields
.field private mCodes:[[I

.field private mContext:Landroid/content/Context;

.field private mDicTypeId:I

.field private mInputLength:I

.field private final mLookedUpString:[C

.field private mMaxDepth:I

.field private mRequiresReload:Z

.field private mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

.field private mUpdatingDictionary:Z

.field private mUpdatingLock:Ljava/lang/Object;

.field private mWordBuilder:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 728
    const/16 v0, 0x500

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->BASE_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
        0x80s
        0x81s
        0x82s
        0x83s
        0x84s
        0x85s
        0x86s
        0x87s
        0x88s
        0x89s
        0x8as
        0x8bs
        0x8cs
        0x8ds
        0x8es
        0x8fs
        0x90s
        0x91s
        0x92s
        0x93s
        0x94s
        0x95s
        0x96s
        0x97s
        0x98s
        0x99s
        0x9as
        0x9bs
        0x9cs
        0x9ds
        0x9es
        0x9fs
        0x20s
        0xa1s
        0xa2s
        0xa3s
        0xa4s
        0xa5s
        0xa6s
        0xa7s
        0x20s
        0xa9s
        0x61s
        0xabs
        0xacs
        0xads
        0xaes
        0x20s
        0xb0s
        0xb1s
        0x32s
        0x33s
        0x20s
        0x3bcs
        0xb6s
        0xb7s
        0x20s
        0x31s
        0x6fs
        0xbbs
        0x31s
        0x31s
        0x33s
        0xbfs
        0x41s
        0x41s
        0x41s
        0x41s
        0x41s
        0x41s
        0xc6s
        0x43s
        0x45s
        0x45s
        0x45s
        0x45s
        0x49s
        0x49s
        0x49s
        0x49s
        0xd0s
        0x4es
        0x4fs
        0x4fs
        0x4fs
        0x4fs
        0x4fs
        0xd7s
        0x4fs
        0x55s
        0x55s
        0x55s
        0x55s
        0x59s
        0xdes
        0x73s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0x61s
        0xe6s
        0x63s
        0x65s
        0x65s
        0x65s
        0x65s
        0x69s
        0x69s
        0x69s
        0x69s
        0xf0s
        0x6es
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0x6fs
        0xf7s
        0x6fs
        0x75s
        0x75s
        0x75s
        0x75s
        0x79s
        0xfes
        0x79s
        0x41s
        0x61s
        0x41s
        0x61s
        0x41s
        0x61s
        0x43s
        0x63s
        0x43s
        0x63s
        0x43s
        0x63s
        0x43s
        0x63s
        0x44s
        0x64s
        0x110s
        0x111s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x45s
        0x65s
        0x47s
        0x67s
        0x47s
        0x67s
        0x47s
        0x67s
        0x47s
        0x67s
        0x48s
        0x68s
        0x126s
        0x127s
        0x49s
        0x69s
        0x49s
        0x69s
        0x49s
        0x69s
        0x49s
        0x69s
        0x49s
        0x131s
        0x49s
        0x69s
        0x4as
        0x6as
        0x4bs
        0x6bs
        0x138s
        0x4cs
        0x6cs
        0x4cs
        0x6cs
        0x4cs
        0x6cs
        0x4cs
        0x6cs
        0x141s
        0x142s
        0x4es
        0x6es
        0x4es
        0x6es
        0x4es
        0x6es
        0x2bcs
        0x14as
        0x14bs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x152s
        0x153s
        0x52s
        0x72s
        0x52s
        0x72s
        0x52s
        0x72s
        0x53s
        0x73s
        0x53s
        0x73s
        0x53s
        0x73s
        0x53s
        0x73s
        0x54s
        0x74s
        0x54s
        0x74s
        0x166s
        0x167s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x55s
        0x75s
        0x57s
        0x77s
        0x59s
        0x79s
        0x59s
        0x5as
        0x7as
        0x5as
        0x7as
        0x5as
        0x7as
        0x73s
        0x180s
        0x181s
        0x182s
        0x183s
        0x184s
        0x185s
        0x186s
        0x187s
        0x188s
        0x189s
        0x18as
        0x18bs
        0x18cs
        0x18ds
        0x18es
        0x18fs
        0x190s
        0x191s
        0x192s
        0x193s
        0x194s
        0x195s
        0x196s
        0x197s
        0x198s
        0x199s
        0x19as
        0x19bs
        0x19cs
        0x19ds
        0x19es
        0x19fs
        0x4fs
        0x6fs
        0x1a2s
        0x1a3s
        0x1a4s
        0x1a5s
        0x1a6s
        0x1a7s
        0x1a8s
        0x1a9s
        0x1aas
        0x1abs
        0x1acs
        0x1ads
        0x1aes
        0x55s
        0x75s
        0x1b1s
        0x1b2s
        0x1b3s
        0x1b4s
        0x1b5s
        0x1b6s
        0x1b7s
        0x1b8s
        0x1b9s
        0x1bas
        0x1bbs
        0x1bcs
        0x1bds
        0x1bes
        0x1bfs
        0x1c0s
        0x1c1s
        0x1c2s
        0x1c3s
        0x44s
        0x44s
        0x64s
        0x4cs
        0x4cs
        0x6cs
        0x4es
        0x4es
        0x6es
        0x41s
        0x61s
        0x49s
        0x69s
        0x4fs
        0x6fs
        0x55s
        0x75s
        0xdcs
        0xfcs
        0xdcs
        0xfcs
        0xdcs
        0xfcs
        0xdcs
        0xfcs
        0x1dds
        0xc4s
        0xe4s
        0x226s
        0x227s
        0xc6s
        0xe6s
        0x1e4s
        0x1e5s
        0x47s
        0x67s
        0x4bs
        0x6bs
        0x4fs
        0x6fs
        0x1eas
        0x1ebs
        0x1b7s
        0x292s
        0x6as
        0x44s
        0x44s
        0x64s
        0x47s
        0x67s
        0x1f6s
        0x1f7s
        0x4es
        0x6es
        0xc5s
        0xe5s
        0xc6s
        0xe6s
        0xd8s
        0xf8s
        0x41s
        0x61s
        0x41s
        0x61s
        0x45s
        0x65s
        0x45s
        0x65s
        0x49s
        0x69s
        0x49s
        0x69s
        0x4fs
        0x6fs
        0x4fs
        0x6fs
        0x52s
        0x72s
        0x52s
        0x72s
        0x55s
        0x75s
        0x55s
        0x75s
        0x53s
        0x73s
        0x54s
        0x74s
        0x21cs
        0x21ds
        0x48s
        0x68s
        0x220s
        0x221s
        0x222s
        0x223s
        0x224s
        0x225s
        0x41s
        0x61s
        0x45s
        0x65s
        0xd6s
        0xf6s
        0xd5s
        0xf5s
        0x4fs
        0x6fs
        0x22es
        0x22fs
        0x59s
        0x79s
        0x234s
        0x235s
        0x236s
        0x237s
        0x238s
        0x239s
        0x23as
        0x23bs
        0x23cs
        0x23ds
        0x23es
        0x23fs
        0x240s
        0x241s
        0x242s
        0x243s
        0x244s
        0x245s
        0x246s
        0x247s
        0x248s
        0x249s
        0x24as
        0x24bs
        0x24cs
        0x24ds
        0x24es
        0x24fs
        0x250s
        0x251s
        0x252s
        0x253s
        0x254s
        0x255s
        0x256s
        0x257s
        0x258s
        0x259s
        0x25as
        0x25bs
        0x25cs
        0x25ds
        0x25es
        0x25fs
        0x260s
        0x261s
        0x262s
        0x263s
        0x264s
        0x265s
        0x266s
        0x267s
        0x268s
        0x269s
        0x26as
        0x26bs
        0x26cs
        0x26ds
        0x26es
        0x26fs
        0x270s
        0x271s
        0x272s
        0x273s
        0x274s
        0x275s
        0x276s
        0x277s
        0x278s
        0x279s
        0x27as
        0x27bs
        0x27cs
        0x27ds
        0x27es
        0x27fs
        0x280s
        0x281s
        0x282s
        0x283s
        0x284s
        0x285s
        0x286s
        0x287s
        0x288s
        0x289s
        0x28as
        0x28bs
        0x28cs
        0x28ds
        0x28es
        0x28fs
        0x290s
        0x291s
        0x292s
        0x293s
        0x294s
        0x295s
        0x296s
        0x297s
        0x298s
        0x299s
        0x29as
        0x29bs
        0x29cs
        0x29ds
        0x29es
        0x29fs
        0x2a0s
        0x2a1s
        0x2a2s
        0x2a3s
        0x2a4s
        0x2a5s
        0x2a6s
        0x2a7s
        0x2a8s
        0x2a9s
        0x2aas
        0x2abs
        0x2acs
        0x2ads
        0x2aes
        0x2afs
        0x68s
        0x266s
        0x6as
        0x72s
        0x279s
        0x27bs
        0x281s
        0x77s
        0x79s
        0x2b9s
        0x2bas
        0x2bbs
        0x2bcs
        0x2bds
        0x2bes
        0x2bfs
        0x2c0s
        0x2c1s
        0x2c2s
        0x2c3s
        0x2c4s
        0x2c5s
        0x2c6s
        0x2c7s
        0x2c8s
        0x2c9s
        0x2cas
        0x2cbs
        0x2ccs
        0x2cds
        0x2ces
        0x2cfs
        0x2d0s
        0x2d1s
        0x2d2s
        0x2d3s
        0x2d4s
        0x2d5s
        0x2d6s
        0x2d7s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x2des
        0x2dfs
        0x263s
        0x6cs
        0x73s
        0x78s
        0x295s
        0x2e5s
        0x2e6s
        0x2e7s
        0x2e8s
        0x2e9s
        0x2eas
        0x2ebs
        0x2ecs
        0x2eds
        0x2ees
        0x2efs
        0x2f0s
        0x2f1s
        0x2f2s
        0x2f3s
        0x2f4s
        0x2f5s
        0x2f6s
        0x2f7s
        0x2f8s
        0x2f9s
        0x2fas
        0x2fbs
        0x2fcs
        0x2fds
        0x2fes
        0x2ffs
        0x300s
        0x301s
        0x302s
        0x303s
        0x304s
        0x305s
        0x306s
        0x307s
        0x308s
        0x309s
        0x30as
        0x30bs
        0x30cs
        0x30ds
        0x30es
        0x30fs
        0x310s
        0x311s
        0x312s
        0x313s
        0x314s
        0x315s
        0x316s
        0x317s
        0x318s
        0x319s
        0x31as
        0x31bs
        0x31cs
        0x31ds
        0x31es
        0x31fs
        0x320s
        0x321s
        0x322s
        0x323s
        0x324s
        0x325s
        0x326s
        0x327s
        0x328s
        0x329s
        0x32as
        0x32bs
        0x32cs
        0x32ds
        0x32es
        0x32fs
        0x330s
        0x331s
        0x332s
        0x333s
        0x334s
        0x335s
        0x336s
        0x337s
        0x338s
        0x339s
        0x33as
        0x33bs
        0x33cs
        0x33ds
        0x33es
        0x33fs
        0x300s
        0x301s
        0x342s
        0x313s
        0x308s
        0x345s
        0x346s
        0x347s
        0x348s
        0x349s
        0x34as
        0x34bs
        0x34cs
        0x34ds
        0x34es
        0x34fs
        0x350s
        0x351s
        0x352s
        0x353s
        0x354s
        0x355s
        0x356s
        0x357s
        0x358s
        0x359s
        0x35as
        0x35bs
        0x35cs
        0x35ds
        0x35es
        0x35fs
        0x360s
        0x361s
        0x362s
        0x363s
        0x364s
        0x365s
        0x366s
        0x367s
        0x368s
        0x369s
        0x36as
        0x36bs
        0x36cs
        0x36ds
        0x36es
        0x36fs
        0x370s
        0x371s
        0x372s
        0x373s
        0x2b9s
        0x375s
        0x376s
        0x377s
        0x378s
        0x379s
        0x20s
        0x37bs
        0x37cs
        0x37ds
        0x3bs
        0x37fs
        0x380s
        0x381s
        0x382s
        0x383s
        0x20s
        0xa8s
        0x391s
        0xb7s
        0x395s
        0x397s
        0x399s
        0x38bs
        0x39fs
        0x38ds
        0x3a5s
        0x3a9s
        0x3cas
        0x391s
        0x392s
        0x393s
        0x394s
        0x395s
        0x396s
        0x397s
        0x398s
        0x399s
        0x39as
        0x39bs
        0x39cs
        0x39ds
        0x39es
        0x39fs
        0x3a0s
        0x3a1s
        0x3a2s
        0x3a3s
        0x3a4s
        0x3a5s
        0x3a6s
        0x3a7s
        0x3a8s
        0x3a9s
        0x399s
        0x3a5s
        0x3b1s
        0x3b5s
        0x3b7s
        0x3b9s
        0x3cbs
        0x3b1s
        0x3b2s
        0x3b3s
        0x3b4s
        0x3b5s
        0x3b6s
        0x3b7s
        0x3b8s
        0x3b9s
        0x3bas
        0x3bbs
        0x3bcs
        0x3bds
        0x3bes
        0x3bfs
        0x3c0s
        0x3c1s
        0x3c2s
        0x3c3s
        0x3c4s
        0x3c5s
        0x3c6s
        0x3c7s
        0x3c8s
        0x3c9s
        0x3b9s
        0x3c5s
        0x3bfs
        0x3c5s
        0x3c9s
        0x3cfs
        0x3b2s
        0x3b8s
        0x3a5s
        0x3d2s
        0x3d2s
        0x3c6s
        0x3c0s
        0x3d7s
        0x3d8s
        0x3d9s
        0x3das
        0x3dbs
        0x3dcs
        0x3dds
        0x3des
        0x3dfs
        0x3e0s
        0x3e1s
        0x3e2s
        0x3e3s
        0x3e4s
        0x3e5s
        0x3e6s
        0x3e7s
        0x3e8s
        0x3e9s
        0x3eas
        0x3ebs
        0x3ecs
        0x3eds
        0x3ees
        0x3efs
        0x3bas
        0x3c1s
        0x3c2s
        0x3f3s
        0x398s
        0x3b5s
        0x3f6s
        0x3f7s
        0x3f8s
        0x3a3s
        0x3fas
        0x3fbs
        0x3fcs
        0x3fds
        0x3fes
        0x3ffs
        0x415s
        0x415s
        0x402s
        0x413s
        0x404s
        0x405s
        0x406s
        0x406s
        0x408s
        0x409s
        0x40as
        0x40bs
        0x41as
        0x418s
        0x423s
        0x40fs
        0x410s
        0x411s
        0x412s
        0x413s
        0x414s
        0x415s
        0x416s
        0x417s
        0x418s
        0x418s
        0x41as
        0x41bs
        0x41cs
        0x41ds
        0x41es
        0x41fs
        0x420s
        0x421s
        0x422s
        0x423s
        0x424s
        0x425s
        0x426s
        0x427s
        0x428s
        0x429s
        0x42as
        0x42bs
        0x42cs
        0x42ds
        0x42es
        0x42fs
        0x430s
        0x431s
        0x432s
        0x433s
        0x434s
        0x435s
        0x436s
        0x437s
        0x438s
        0x438s
        0x43as
        0x43bs
        0x43cs
        0x43ds
        0x43es
        0x43fs
        0x440s
        0x441s
        0x442s
        0x443s
        0x444s
        0x445s
        0x446s
        0x447s
        0x448s
        0x449s
        0x44as
        0x44bs
        0x44cs
        0x44ds
        0x44es
        0x44fs
        0x435s
        0x435s
        0x452s
        0x433s
        0x454s
        0x455s
        0x456s
        0x456s
        0x458s
        0x459s
        0x45as
        0x45bs
        0x43as
        0x438s
        0x443s
        0x45fs
        0x460s
        0x461s
        0x462s
        0x463s
        0x464s
        0x465s
        0x466s
        0x467s
        0x468s
        0x469s
        0x46as
        0x46bs
        0x46cs
        0x46ds
        0x46es
        0x46fs
        0x470s
        0x471s
        0x472s
        0x473s
        0x474s
        0x475s
        0x474s
        0x475s
        0x478s
        0x479s
        0x47as
        0x47bs
        0x47cs
        0x47ds
        0x47es
        0x47fs
        0x480s
        0x481s
        0x482s
        0x483s
        0x484s
        0x485s
        0x486s
        0x487s
        0x488s
        0x489s
        0x48as
        0x48bs
        0x48cs
        0x48ds
        0x48es
        0x48fs
        0x490s
        0x491s
        0x492s
        0x493s
        0x494s
        0x495s
        0x496s
        0x497s
        0x498s
        0x499s
        0x49as
        0x49bs
        0x49cs
        0x49ds
        0x49es
        0x49fs
        0x4a0s
        0x4a1s
        0x4a2s
        0x4a3s
        0x4a4s
        0x4a5s
        0x4a6s
        0x4a7s
        0x4a8s
        0x4a9s
        0x4aas
        0x4abs
        0x4acs
        0x4ads
        0x4aes
        0x4afs
        0x4b0s
        0x4b1s
        0x4b2s
        0x4b3s
        0x4b4s
        0x4b5s
        0x4b6s
        0x4b7s
        0x4b8s
        0x4b9s
        0x4bas
        0x4bbs
        0x4bcs
        0x4bds
        0x4bes
        0x4bfs
        0x4c0s
        0x416s
        0x436s
        0x4c3s
        0x4c4s
        0x4c5s
        0x4c6s
        0x4c7s
        0x4c8s
        0x4c9s
        0x4cas
        0x4cbs
        0x4ccs
        0x4cds
        0x4ces
        0x4cfs
        0x410s
        0x430s
        0x410s
        0x430s
        0x4d4s
        0x4d5s
        0x415s
        0x435s
        0x4d8s
        0x4d9s
        0x4d8s
        0x4d9s
        0x416s
        0x436s
        0x417s
        0x437s
        0x4e0s
        0x4e1s
        0x418s
        0x438s
        0x418s
        0x438s
        0x41es
        0x43es
        0x4e8s
        0x4e9s
        0x4e8s
        0x4e9s
        0x42ds
        0x44ds
        0x423s
        0x443s
        0x423s
        0x443s
        0x423s
        0x443s
        0x427s
        0x447s
        0x4f6s
        0x4f7s
        0x42bs
        0x44bs
        0x4fas
        0x4fbs
        0x4fcs
        0x4fds
        0x4fes
        0x4ffs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dicTypeId"    # I

    .prologue
    const/16 v1, 0x30

    .line 155
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/Dictionary;-><init>()V

    .line 40
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mWordBuilder:[C

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 633
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mLookedUpString:[C

    .line 156
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->clearDictionary()V

    .line 158
    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    .line 159
    iput p2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mDicTypeId:I

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/skyime/ExpandableDictionary;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/pantech/inputmethod/skyime/ExpandableDictionary;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    return p1
.end method

.method private addWordAndShortcutsFromNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;[CIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)Z
    .registers 15
    .param p1, "node"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .param p2, "word"    # [C
    .param p3, "depth"    # I
    .param p4, "finalFreq"    # I
    .param p5, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    const/4 v2, 0x0

    .line 377
    if-lez p4, :cond_16

    iget-boolean v0, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutOnly:Z

    if-nez v0, :cond_16

    .line 378
    add-int/lit8 v3, p3, 0x1

    iget v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mDicTypeId:I

    move-object v0, p5

    move-object v1, p2

    move v4, p4

    move v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;->addWord([CIIIII)Z

    move-result v0

    if-nez v0, :cond_16

    .line 392
    :cond_15
    :goto_15
    return v2

    .line 382
    :cond_16
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 383
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 384
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "shortcutIndex":I
    :goto_21
    if-ge v8, v7, :cond_3a

    .line 385
    iget-object v0, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 386
    .local v1, "shortcut":[C
    array-length v3, v1

    iget v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mDicTypeId:I

    move-object v0, p5

    move v4, p4

    move v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;->addWord([CIIIII)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 384
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 392
    .end local v1    # "shortcut":[C
    .end local v7    # "length":I
    .end local v8    # "shortcutIndex":I
    :cond_3a
    const/4 v2, 0x1

    goto :goto_15
.end method

.method private addWordRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILjava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)V
    .registers 21
    .param p1, "children"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "shortcutTarget"    # Ljava/lang/String;
    .param p5, "frequency"    # I
    .param p6, "parentNode"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .prologue
    .line 208
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    .line 209
    .local v13, "wordLength":I
    move/from16 v0, p3

    if-gt v13, v0, :cond_9

    .line 248
    :cond_8
    :goto_8
    return-void

    .line 210
    :cond_9
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 212
    .local v8, "c":C
    iget v9, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    .line 213
    .local v9, "childrenLength":I
    const/4 v7, 0x0

    .line 214
    .local v7, "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_11
    if-ge v10, v9, :cond_1c

    .line 215
    iget-object v1, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    aget-object v12, v1, v10

    .line 216
    .local v12, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-char v1, v12, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    if-ne v1, v8, :cond_65

    .line 217
    move-object v7, v12

    .line 221
    .end local v12    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_1c
    if-eqz p4, :cond_68

    const/4 v11, 0x1

    .line 222
    .local v11, "isShortcutOnly":Z
    :goto_1f
    if-nez v7, :cond_31

    .line 223
    new-instance v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .end local v7    # "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    invoke-direct {v7}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;-><init>()V

    .line 224
    .restart local v7    # "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iput-char v8, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    .line 225
    move-object/from16 v0, p6

    iput-object v0, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mParent:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 226
    iput-boolean v11, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutOnly:Z

    .line 227
    invoke-virtual {p1, v7}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->add(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)V

    .line 229
    :cond_31
    add-int/lit8 v1, p3, 0x1

    if-ne v13, v1, :cond_6e

    if-eqz p4, :cond_6e

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mTerminal:Z

    .line 232
    if-eqz v11, :cond_6a

    .line 233
    iget-object v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    if-nez v1, :cond_47

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    .line 236
    :cond_47
    iget-object v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutTargets:Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :goto_50
    iget v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v0, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mFrequency:I

    .line 241
    iget v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mFrequency:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_8

    const/16 v1, 0xff

    iput v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_8

    .line 214
    .end local v11    # "isShortcutOnly":Z
    .restart local v12    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_65
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 221
    .end local v12    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_68
    const/4 v11, 0x0

    goto :goto_1f

    .line 238
    .restart local v11    # "isShortcutOnly":Z
    :cond_6a
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutOnly:Z

    goto :goto_50

    .line 244
    :cond_6e
    iget-object v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    if-nez v1, :cond_79

    .line 245
    new-instance v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-direct {v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v1, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    .line 247
    :cond_79
    iget-object v2, v7, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWordRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILjava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)V

    goto :goto_8
.end method

.method private static computeSkippedWordFinalFreq(III)I
    .registers 5
    .param p0, "freq"    # I
    .param p1, "snr"    # I
    .param p2, "inputLength"    # I

    .prologue
    .line 358
    const/4 v0, 0x3

    if-lt p2, v0, :cond_c

    .line 359
    mul-int v0, p0, p1

    add-int/lit8 v1, p2, -0x2

    mul-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    div-int/2addr v0, v1

    .line 361
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private reverseLookUp(Ljava/util/LinkedList;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 13
    .param p2, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;",
            ">;",
            "Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 644
    .local p1, "terminalNodes":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;

    .line 645
    .local v8, "nextWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    invoke-interface {v8}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v9

    .line 646
    .local v9, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    invoke-interface {v8}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->getFrequency()I

    move-result v4

    .line 647
    .local v4, "freq":I
    const/16 v2, 0x30

    .line 649
    .local v2, "index":I
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    .line 650
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mLookedUpString:[C

    iget-char v1, v9, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    aput-char v1, v0, v2

    .line 651
    iget-object v9, v9, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mParent:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 652
    if-nez v9, :cond_1a

    .line 654
    if-ltz v4, :cond_4

    .line 655
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mLookedUpString:[C

    rsub-int/lit8 v3, v2, 0x30

    iget v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mDicTypeId:I

    const/4 v6, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;->addWord([CIIIII)Z

    goto :goto_4

    .line 659
    .end local v2    # "index":I
    .end local v4    # "freq":I
    .end local v8    # "nextWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    .end local v9    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_34
    return-void
.end method

.method private runBigramReverseLookUp(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 8
    .param p1, "previousWord"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 598
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v0

    .line 600
    .local v0, "prevWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    if-eqz v0, :cond_22

    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    if-eqz v1, :cond_22

    .line 601
    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->reverseLookUp(Ljava/util/LinkedList;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 603
    :cond_22
    return-void
.end method

.method private searchNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .registers 12
    .param p1, "children"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 674
    iget v0, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    .line 675
    .local v0, "count":I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 676
    .local v1, "currentChar":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    if-ge v2, v0, :cond_2d

    .line 677
    iget-object v5, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    aget-object v3, v5, v2

    .line 678
    .local v3, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-char v5, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    if-ne v5, v1, :cond_2a

    .line 679
    add-int/lit8 v5, p4, -0x1

    if-ne p3, v5, :cond_1a

    .line 680
    iget-boolean v5, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mTerminal:Z

    if-eqz v5, :cond_2a

    .line 691
    .end local v3    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :goto_19
    return-object v3

    .line 684
    .restart local v3    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_1a
    iget-object v5, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    if-eqz v5, :cond_2a

    .line 685
    iget-object v5, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v4

    .line 686
    .local v4, "returnNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    if-eqz v4, :cond_2a

    move-object v3, v4

    goto :goto_19

    .line 676
    .end local v4    # "returnNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 691
    .end local v3    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_2d
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .registers 13
    .param p1, "children"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "parentNode"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .prologue
    .line 555
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 556
    .local v5, "wordLength":I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 558
    .local v0, "c":C
    iget v2, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    .line 559
    .local v2, "childrenLength":I
    const/4 v1, 0x0

    .line 560
    .local v1, "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_17

    .line 561
    iget-object v6, p1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    aget-object v4, v6, v3

    .line 562
    .local v4, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-char v6, v4, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    if-ne v6, v0, :cond_2d

    .line 563
    move-object v1, v4

    .line 567
    .end local v4    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_17
    if-nez v1, :cond_25

    .line 568
    new-instance v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .end local v1    # "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    invoke-direct {v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;-><init>()V

    .line 569
    .restart local v1    # "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iput-char v0, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    .line 570
    iput-object p4, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mParent:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    .line 571
    invoke-virtual {p1, v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->add(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)V

    .line 573
    :cond_25
    add-int/lit8 v6, p3, 0x1

    if-ne v5, v6, :cond_30

    .line 575
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mTerminal:Z

    .line 581
    .end local v1    # "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :goto_2c
    return-object v1

    .line 560
    .restart local v1    # "childNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .restart local v4    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 578
    .end local v4    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :cond_30
    iget-object v6, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    if-nez v6, :cond_3b

    .line 579
    new-instance v6, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-direct {v6}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v6, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    .line 581
    :cond_3b
    iget-object v6, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, v1}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v1

    goto :goto_2c
.end method

.method private setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I
    .registers 14
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I
    .param p4, "fcp"    # Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 528
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v1

    .line 529
    .local v1, "firstWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-object v5, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v5, p2, v7, v8}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v4

    .line 530
    .local v4, "secondWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-object v0, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 531
    .local v0, "bigrams":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_36

    .line 532
    :cond_20
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 533
    iget-object v0, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 541
    :cond_29
    if-eqz p4, :cond_51

    .line 543
    iget-object v5, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    new-instance v6, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;

    invoke-direct {v6, v4, p4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextHistoryWord;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 547
    .end local p3    # "frequency":I
    :goto_35
    return p3

    .line 535
    .restart local p3    # "frequency":I
    :cond_36
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;

    .line 536
    .local v3, "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    invoke-interface {v3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v5

    if-ne v5, v4, :cond_3a

    .line 537
    invoke-interface {v3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->notifyTypedAgainAndGetFrequency()I

    move-result p3

    goto :goto_35

    .line 545
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    :cond_51
    iget-object v5, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    new-instance v6, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;

    invoke-direct {v6, v4, p3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextStaticWord;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_35
.end method

.method private static toLowerCase(C)C
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 710
    move v0, p0

    .line 711
    .local v0, "baseChar":C
    sget-object v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->BASE_CHARS:[C

    array-length v1, v1

    if-ge p0, v1, :cond_a

    .line 712
    sget-object v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->BASE_CHARS:[C

    aget-char v0, v1, p0

    .line 714
    :cond_a
    const/16 v1, 0x41

    if-lt v0, v1, :cond_16

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_16

    .line 715
    or-int/lit8 v1, v0, 0x20

    int-to-char v0, v1

    .line 719
    .end local v0    # "baseChar":C
    :cond_15
    :goto_15
    return v0

    .line 716
    .restart local v0    # "baseChar":C
    :cond_16
    const/16 v1, 0x7f

    if-le v0, v1, :cond_15

    .line 717
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_15
.end method


# virtual methods
.method public addWord(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "shortcutTarget"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_9

    .line 204
    :goto_8
    return-void

    .line 203
    :cond_9
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWordRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILjava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)V

    goto :goto_8
.end method

.method protected final blockingReloadDictionaryIfRequired()V
    .registers 1

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    .line 629
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->waitForDictionaryLoading()V

    .line 630
    return-void
.end method

.method protected clearDictionary()V
    .registers 2

    .prologue
    .line 695
    new-instance v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    .line 696
    return-void
.end method

.method protected getBigramWord(Ljava/lang/String;Ljava/lang/String;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    .registers 12
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 340
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v1

    .line 341
    .local v1, "firstWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-object v6, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v6, p2, v8, v5}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v4

    .line 342
    .local v4, "secondWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-object v0, v1, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 343
    .local v0, "bigrams":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_22

    :cond_20
    move-object v3, v5

    .line 352
    :goto_21
    return-object v3

    .line 346
    :cond_22
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;

    .line 347
    .local v3, "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    invoke-interface {v3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v6

    if-ne v6, v4, :cond_26

    goto :goto_21

    .end local v3    # "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    :cond_39
    move-object v3, v5

    .line 352
    goto :goto_21
.end method

.method public getBigrams(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 5
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    move-result v0

    if-nez v0, :cond_9

    .line 609
    invoke-direct {p0, p2, p3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->runBigramReverseLookUp(Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 611
    :cond_9
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMaxWordLength()I
    .registers 2

    .prologue
    .line 196
    const/16 v0, 0x30

    return v0
.end method

.method public getRequiresReload()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRequiresReload:Z

    return v0
.end method

.method protected getWordFrequency(Ljava/lang/CharSequence;)I
    .registers 6
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 334
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v0

    .line 335
    .local v0, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    if-nez v0, :cond_f

    const/4 v1, -0x1

    :goto_e
    return v1

    :cond_f
    iget v1, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mFrequency:I

    goto :goto_e
.end method

.method public getWords(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 7
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_3
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 257
    :cond_a
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_10

    monitor-exit v1

    .line 263
    :cond_f
    :goto_f
    return-void

    .line 258
    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    .line 259
    invoke-virtual {p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_f

    .line 262
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V

    goto :goto_f

    .line 258
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method protected final getWordsInner(Lcom/pantech/inputmethod/skyime/WordComposer;Ljava/lang/CharSequence;Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;Lcom/pantech/inputmethod/keyboard/ProximityInfo;)V
    .registers 20
    .param p1, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p2, "prevWordForBigrams"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;
    .param p4, "proximityInfo"    # Lcom/pantech/inputmethod/keyboard/ProximityInfo;

    .prologue
    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->size()I

    move-result v1

    iput v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    .line 269
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    array-length v1, v1

    iget v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    if-ge v1, v2, :cond_13

    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    new-array v1, v1, [[I

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    .line 270
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->getXCoordinates()[I

    move-result-object v12

    .line 271
    .local v12, "xCoordinates":[I
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/inputmethod/skyime/WordComposer;->getYCoordinates()[I

    move-result-object v14

    .line 273
    .local v14, "yCoordinates":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1c
    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    if-ge v9, v1, :cond_5a

    .line 275
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    aget-object v1, v1, v9

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    aget-object v1, v1, v9

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_36

    .line 276
    :cond_2e
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    const/16 v2, 0x10

    new-array v2, v2, [I

    aput-object v2, v1, v9

    .line 278
    :cond_36
    if-eqz v12, :cond_56

    array-length v1, v12

    if-ge v9, v1, :cond_56

    aget v11, v12, v9

    .line 280
    .local v11, "x":I
    :goto_3d
    if-eqz v12, :cond_58

    array-length v1, v14

    if-ge v9, v1, :cond_58

    aget v13, v14, v9

    .line 282
    .local v13, "y":I
    :goto_44
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/pantech/inputmethod/skyime/WordComposer;->getCodeAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    aget-object v2, v2, v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v13, v1, v2}, Lcom/pantech/inputmethod/keyboard/ProximityInfo;->fillArrayWithNearestKeyCodes(III[I)V

    .line 273
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 278
    .end local v11    # "x":I
    .end local v13    # "y":I
    :cond_56
    const/4 v11, -0x1

    goto :goto_3d

    .line 280
    .restart local v11    # "x":I
    :cond_58
    const/4 v13, -0x1

    goto :goto_44

    .line 284
    .end local v11    # "x":I
    :cond_5a
    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mMaxDepth:I

    .line 285
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mWordBuilder:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v1 .. v10}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 286
    .end local v9    # "i":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_72
    iget v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    if-ge v9, v1, :cond_89

    .line 287
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    iget-object v4, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mWordBuilder:[C

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v1 .. v10}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    .line 289
    :cond_89
    return-void
.end method

.method protected getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V
    .registers 39
    .param p1, "roots"    # Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    .param p2, "codes"    # Lcom/pantech/inputmethod/skyime/WordComposer;
    .param p3, "word"    # [C
    .param p4, "depth"    # I
    .param p5, "completion"    # Z
    .param p6, "snr"    # I
    .param p7, "inputIndex"    # I
    .param p8, "skipPos"    # I
    .param p9, "callback"    # Lcom/pantech/inputmethod/skyime/Dictionary$WordCallback;

    .prologue
    .line 418
    move-object/from16 v0, p1

    iget v0, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mLength:I

    move/from16 v21, v0

    .line 419
    .local v21, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    move/from16 v20, v0

    .line 421
    .local v20, "codeSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mMaxDepth:I

    move/from16 v0, p4

    if-le v0, v2, :cond_15

    .line 506
    :cond_14
    return-void

    .line 425
    :cond_15
    move/from16 v0, v20

    move/from16 v1, p7

    if-gt v0, v1, :cond_70

    .line 426
    const/16 v23, 0x0

    .line 431
    .local v23, "currentChars":[I
    :goto_1d
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1f
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_14

    .line 432
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;->mData:[Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    aget-object v3, v2, v25

    .line 433
    .local v3, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-char v0, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mCode:C

    move/from16 v19, v0

    .line 434
    .local v19, "c":C
    invoke-static/range {v19 .. v19}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->toLowerCase(C)C

    move-result v27

    .line 435
    .local v27, "lowerC":C
    iget-boolean v0, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mTerminal:Z

    move/from16 v28, v0

    .line 436
    .local v28, "terminal":Z
    iget-object v8, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    .line 437
    .local v8, "children":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    iget v0, v3, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mFrequency:I

    move/from16 v24, v0

    .line 438
    .local v24, "freq":I
    if-nez p5, :cond_41

    if-nez v23, :cond_84

    .line 439
    :cond_41
    aput-char v19, p3, p4

    .line 440
    if-eqz v28, :cond_57

    .line 442
    if-gez p8, :cond_77

    .line 443
    mul-int v6, v24, p6

    .local v6, "finalFreq":I
    :goto_49
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p9

    .line 447
    invoke-direct/range {v2 .. v7}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWordAndShortcutsFromNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;[CIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 452
    .end local v6    # "finalFreq":I
    :cond_57
    if-eqz v8, :cond_6d

    .line 453
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 431
    :cond_6d
    :goto_6d
    add-int/lit8 v25, v25, 0x1

    goto :goto_1f

    .line 428
    .end local v3    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .end local v8    # "children":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    .end local v19    # "c":C
    .end local v23    # "currentChars":[I
    .end local v24    # "freq":I
    .end local v25    # "i":I
    .end local v27    # "lowerC":C
    .end local v28    # "terminal":Z
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mCodes:[[I

    aget-object v23, v2, p7

    .restart local v23    # "currentChars":[I
    goto :goto_1d

    .line 445
    .restart local v3    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    .restart local v8    # "children":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;
    .restart local v19    # "c":C
    .restart local v24    # "freq":I
    .restart local v25    # "i":I
    .restart local v27    # "lowerC":C
    .restart local v28    # "terminal":Z
    :cond_77
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    move/from16 v0, v24

    move/from16 v1, p6

    invoke-static {v0, v1, v2}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v6

    .restart local v6    # "finalFreq":I
    goto :goto_49

    .line 456
    .end local v6    # "finalFreq":I
    :cond_84
    const/16 v2, 0x27

    move/from16 v0, v19

    if-ne v0, v2, :cond_91

    const/4 v2, 0x0

    aget v2, v23, v2

    const/16 v4, 0x27

    if-ne v2, v4, :cond_97

    :cond_91
    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_b1

    .line 459
    :cond_97
    aput-char v19, p3, p4

    .line 460
    if-eqz v8, :cond_6d

    .line 461
    add-int/lit8 v11, p4, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    goto :goto_6d

    .line 466
    :cond_b1
    if-ltz p8, :cond_10d

    const/16 v18, 0x1

    .line 467
    .local v18, "alternativesSize":I
    :goto_b5
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_b7
    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_6d

    .line 468
    if-lez v26, :cond_113

    const/16 v17, 0x1

    .line 469
    .local v17, "addedAttenuation":I
    :goto_c1
    aget v22, v23, v26

    .line 470
    .local v22, "currentChar":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_6d

    .line 473
    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_d4

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_10a

    .line 474
    :cond_d4
    aput-char v19, p3, p4

    .line 476
    add-int/lit8 v2, p7, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_123

    .line 477
    if-eqz v28, :cond_f4

    .line 479
    if-gez p8, :cond_116

    .line 480
    mul-int v2, v24, p6

    mul-int v2, v2, v17

    mul-int/lit8 v6, v2, 0x2

    .restart local v6    # "finalFreq":I
    :goto_e6
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p9

    .line 486
    invoke-direct/range {v2 .. v7}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->addWordAndShortcutsFromNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;[CIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 492
    .end local v6    # "finalFreq":I
    :cond_f4
    if-eqz v8, :cond_10a

    .line 493
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x1

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    .line 467
    :cond_10a
    :goto_10a
    add-int/lit8 v26, v26, 0x1

    goto :goto_b7

    .line 466
    .end local v17    # "addedAttenuation":I
    .end local v18    # "alternativesSize":I
    .end local v22    # "currentChar":I
    .end local v26    # "j":I
    :cond_10d
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v18, v0

    goto :goto_b5

    .line 468
    .restart local v18    # "alternativesSize":I
    .restart local v26    # "j":I
    :cond_113
    const/16 v17, 0x2

    goto :goto_c1

    .line 483
    .restart local v17    # "addedAttenuation":I
    .restart local v22    # "currentChar":I
    :cond_116
    mul-int v2, p6, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mInputLength:I

    move/from16 v0, v24

    invoke-static {v0, v2, v4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->computeSkippedWordFinalFreq(III)I

    move-result v6

    .restart local v6    # "finalFreq":I
    goto :goto_e6

    .line 497
    .end local v6    # "finalFreq":I
    :cond_123
    if-eqz v8, :cond_10a

    .line 498
    add-int/lit8 v11, p4, 0x1

    const/4 v12, 0x0

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    invoke-virtual/range {v7 .. v16}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->getWordsRec(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Lcom/pantech/inputmethod/skyime/WordComposer;[CIZIIILcom/pantech/inputmethod/skyime/Dictionary$WordCallback;)V

    goto :goto_10a
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 293
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_2a

    .line 295
    :try_start_5
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 296
    :cond_c
    iget-boolean v3, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v3, :cond_13

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_27

    .line 304
    :cond_11
    :goto_11
    monitor-exit p0

    return v1

    .line 297
    :cond_13
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_27

    .line 298
    :try_start_14
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchNode(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v0

    .line 304
    .local v0, "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    if-eqz v0, :cond_11

    iget-boolean v2, v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mShortcutOnly:Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_2a

    if-nez v2, :cond_11

    const/4 v1, 0x1

    goto :goto_11

    .line 297
    .end local v0    # "node":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 293
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadDictionary()V
    .registers 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_3
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public loadDictionaryAsync()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method

.method reloadDictionaryIfRequired()Z
    .registers 3

    .prologue
    .line 586
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 588
    :try_start_3
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 590
    :cond_a
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    monitor-exit v1

    return v0

    .line 591
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected removeBigram(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 309
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v6, v9}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v2

    .line 310
    .local v2, "firstWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-object v7, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRoots:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v7, p2, v6, v9}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->searchWord(Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;)Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v5

    .line 311
    .local v5, "secondWord":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
    iget-object v1, v2, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;->mNGrams:Ljava/util/LinkedList;

    .line 312
    .local v1, "bigrams":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;>;"
    const/4 v0, 0x0

    .line 313
    .local v0, "bigramNode":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_22

    .line 326
    :cond_21
    :goto_21
    return v6

    .line 316
    :cond_22
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;

    .line 317
    .local v4, "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    invoke-interface {v4}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;->getWordNode()Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

    move-result-object v7

    if-ne v7, v5, :cond_26

    .line 318
    move-object v0, v4

    .line 323
    .end local v4    # "nw":Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;
    :cond_39
    if-eqz v0, :cond_21

    .line 326
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_21
.end method

.method public setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I

    move-result v0

    return v0
.end method

.method public setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I
    .registers 5
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "fcp"    # Lcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->setBigramAndGetFrequency(Ljava/lang/String;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/UserHistoryForgettingCurveUtils$ForgettingCurveParams;)I

    move-result v0

    return v0
.end method

.method public setRequiresReload(Z)V
    .registers 4
    .param p1, "reload"    # Z

    .prologue
    .line 177
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_3
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRequiresReload:Z

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public startDictionaryLoadingTaskLocked()V
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_12

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mRequiresReload:Z

    .line 172
    new-instance v0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/pantech/inputmethod/skyime/ExpandableDictionary;)V

    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/ExpandableDictionary$LoadDictionaryTask;->start()V

    .line 174
    :cond_12
    return-void
.end method

.method waitForDictionaryLoading()V
    .registers 3

    .prologue
    .line 618
    :goto_0
    iget-boolean v0, p0, Lcom/pantech/inputmethod/skyime/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_c

    .line 620
    const-wide/16 v0, 0x64

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_0

    .line 621
    :catch_a
    move-exception v0

    goto :goto_0

    .line 625
    :cond_c
    return-void
.end method
