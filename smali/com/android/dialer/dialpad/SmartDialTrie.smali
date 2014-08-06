.class public Lcom/android/dialer/dialpad/SmartDialTrie;
.super Ljava/lang/Object;
.source "SmartDialTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/SmartDialTrie$Node;,
        Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;,
        Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    }
.end annotation


# static fields
.field public static sCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCharacterMap:[C

.field private final mFormatNanp:Z

.field final mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialTrie;->sCountryCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/dialpad/SmartDialTrie;-><init>([CZ)V

    .line 85
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "formatNanp"    # Z

    .prologue
    .line 95
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    invoke-direct {p0, v0, p1}, Lcom/android/dialer/dialpad/SmartDialTrie;-><init>([CZ)V

    .line 96
    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 1
    .param p1, "charMap"    # [C
    .param p2, "formatNanp"    # Z

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mSize:I

    .line 106
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mCharacterMap:[C

    .line 107
    iput-boolean p2, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mFormatNanp:Z

    .line 108
    return-void
.end method

.method private getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "root"    # Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dialer/dialpad/SmartDialTrie$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;>;"
    if-nez p1, :cond_1

    .line 147
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChildrenSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/dialer/dialpad/SmartDialTrie;->getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOffsetForNANPNumbers(Ljava/lang/String;)[I
    .locals 9
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, "validDigits":I
    const/4 v2, 0x0

    .line 226
    .local v2, "hasPrefix":Z
    const/4 v1, 0x0

    .line 227
    .local v1, "firstOffset":I
    const/4 v4, 0x0

    .line 228
    .local v4, "secondOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 229
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 230
    .local v0, "ch":C
    const/16 v6, 0x30

    if-lt v0, v6, :cond_2

    const/16 v6, 0x39

    if-gt v0, v6, :cond_2

    .line 231
    if-nez v5, :cond_3

    .line 233
    const/16 v6, 0x31

    if-ne v0, v6, :cond_3

    .line 234
    if-eqz v2, :cond_1

    .line 254
    .end local v0    # "ch":C
    :cond_0
    const/16 v6, 0xa

    if-ne v5, v6, :cond_6

    .line 255
    if-eqz v2, :cond_5

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v1, v6, v7

    aput v4, v6, v8

    .line 257
    :goto_1
    return-object v6

    .line 239
    .restart local v0    # "ch":C
    :cond_1
    const/4 v2, 0x1

    .line 228
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 244
    if-ne v5, v8, :cond_4

    .line 246
    move v1, v3

    goto :goto_2

    .line 247
    :cond_4
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 249
    move v4, v3

    goto :goto_2

    .line 255
    .end local v0    # "ch":C
    :cond_5
    new-array v6, v8, [I

    aput v4, v6, v7

    goto :goto_1

    .line 257
    :cond_6
    new-array v6, v7, [I

    goto :goto_1
.end method

.method public static getOffsetWithoutCountryCode(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    .line 202
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    .line 211
    .end local v1    # "i":I
    :cond_0
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->NO_COUNTRY_CODE:Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;

    :goto_1
    return-object v2

    .line 204
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dialer/dialpad/SmartDialTrie;->isValidCountryCode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v2, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;

    invoke-direct {v2, v1, v0}, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static initCountryCodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 469
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 470
    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 471
    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v1, "27"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v1, "33"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v1, "34"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 479
    const-string v1, "39"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v1, "40"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v1, "41"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 482
    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v1, "44"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 484
    const-string v1, "45"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v1, "46"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 486
    const-string v1, "47"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v1, "48"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v1, "49"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 489
    const-string v1, "51"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v1, "52"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 491
    const-string v1, "53"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 492
    const-string v1, "54"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 493
    const-string v1, "55"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v1, "56"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v1, "57"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v1, "58"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    const-string v1, "61"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v1, "62"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v1, "63"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v1, "65"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    const-string v1, "66"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    const-string v1, "81"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 505
    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v1, "84"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 507
    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    const-string v1, "90"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    const-string v1, "91"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 510
    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 511
    const-string v1, "93"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 512
    const-string v1, "94"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    const-string v1, "95"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v1, "98"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 515
    const-string v1, "211"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    const-string v1, "212"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 517
    const-string v1, "213"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 518
    const-string v1, "216"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    const-string v1, "218"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    const-string v1, "220"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    const-string v1, "221"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v1, "222"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    const-string v1, "223"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v1, "224"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 525
    const-string v1, "225"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 526
    const-string v1, "226"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v1, "227"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v1, "228"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    const-string v1, "229"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    const-string v1, "230"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 531
    const-string v1, "231"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    const-string v1, "232"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 533
    const-string v1, "233"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 534
    const-string v1, "234"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 535
    const-string v1, "235"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 536
    const-string v1, "236"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 537
    const-string v1, "237"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 538
    const-string v1, "238"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v1, "239"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 540
    const-string v1, "240"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 541
    const-string v1, "241"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 542
    const-string v1, "242"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 543
    const-string v1, "243"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    const-string v1, "244"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 545
    const-string v1, "245"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 546
    const-string v1, "246"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 547
    const-string v1, "247"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    const-string v1, "248"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 549
    const-string v1, "249"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 550
    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    const-string v1, "251"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 552
    const-string v1, "252"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    const-string v1, "253"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v1, "254"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    const-string v1, "255"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    const-string v1, "256"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 557
    const-string v1, "257"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 558
    const-string v1, "258"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 559
    const-string v1, "260"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 560
    const-string v1, "261"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 561
    const-string v1, "262"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 562
    const-string v1, "263"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 563
    const-string v1, "264"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v1, "265"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 565
    const-string v1, "266"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 566
    const-string v1, "267"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 567
    const-string v1, "268"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 568
    const-string v1, "269"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v1, "290"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 570
    const-string v1, "291"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 571
    const-string v1, "297"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 572
    const-string v1, "298"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 573
    const-string v1, "299"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 574
    const-string v1, "350"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 575
    const-string v1, "351"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    const-string v1, "352"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 577
    const-string v1, "353"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 578
    const-string v1, "354"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v1, "355"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    const-string v1, "356"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    const-string v1, "357"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 582
    const-string v1, "358"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    const-string v1, "359"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 584
    const-string v1, "370"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 585
    const-string v1, "371"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    const-string v1, "372"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 587
    const-string v1, "373"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 588
    const-string v1, "374"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    const-string v1, "375"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    const-string v1, "376"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 591
    const-string v1, "377"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    const-string v1, "378"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 593
    const-string v1, "379"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 594
    const-string v1, "380"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 595
    const-string v1, "381"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    const-string v1, "382"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 597
    const-string v1, "385"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 598
    const-string v1, "386"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 599
    const-string v1, "387"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v1, "389"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 601
    const-string v1, "420"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 602
    const-string v1, "421"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 603
    const-string v1, "423"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 604
    const-string v1, "500"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 605
    const-string v1, "501"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 606
    const-string v1, "502"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    const-string v1, "503"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 608
    const-string v1, "504"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 609
    const-string v1, "505"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 610
    const-string v1, "506"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    const-string v1, "507"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 612
    const-string v1, "508"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 613
    const-string v1, "509"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    const-string v1, "590"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v1, "591"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 616
    const-string v1, "592"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    const-string v1, "593"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 618
    const-string v1, "594"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 619
    const-string v1, "595"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    const-string v1, "596"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v1, "597"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v1, "598"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 623
    const-string v1, "599"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 624
    const-string v1, "670"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v1, "672"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 626
    const-string v1, "673"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 627
    const-string v1, "674"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v1, "675"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v1, "676"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v1, "677"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v1, "678"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 632
    const-string v1, "679"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 633
    const-string v1, "680"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v1, "681"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v1, "682"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v1, "683"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 637
    const-string v1, "685"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 638
    const-string v1, "686"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 639
    const-string v1, "687"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v1, "688"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 641
    const-string v1, "689"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 642
    const-string v1, "690"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 643
    const-string v1, "691"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 644
    const-string v1, "692"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 645
    const-string v1, "800"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v1, "808"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 647
    const-string v1, "850"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 648
    const-string v1, "852"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v1, "853"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 650
    const-string v1, "855"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 651
    const-string v1, "856"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 652
    const-string v1, "870"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 653
    const-string v1, "878"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 654
    const-string v1, "880"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v1, "881"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    const-string v1, "882"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 657
    const-string v1, "883"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 658
    const-string v1, "886"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 659
    const-string v1, "888"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 660
    const-string v1, "960"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    const-string v1, "961"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 662
    const-string v1, "962"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 663
    const-string v1, "963"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v1, "964"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 665
    const-string v1, "965"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 666
    const-string v1, "966"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 667
    const-string v1, "967"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 668
    const-string v1, "968"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 669
    const-string v1, "970"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 670
    const-string v1, "971"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v1, "972"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 672
    const-string v1, "973"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 673
    const-string v1, "974"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v1, "975"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 675
    const-string v1, "976"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 676
    const-string v1, "977"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 677
    const-string v1, "979"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 678
    const-string v1, "992"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 679
    const-string v1, "993"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v1, "994"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 681
    const-string v1, "995"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 682
    const-string v1, "996"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 683
    const-string v1, "998"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 684
    return-object v0
.end method

.method private static isValidCountryCode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 461
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialTrie;->sCountryCodes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 462
    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialTrie;->initCountryCodes()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialTrie;->sCountryCodes:Ljava/util/Set;

    .line 464
    :cond_0
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialTrie;->sCountryCodes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private putForPrefix(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Lcom/android/dialer/dialpad/SmartDialTrie$Node;Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;IZ)V
    .locals 14
    .param p1, "contact"    # Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;
    .param p2, "root"    # Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .param p3, "info"    # Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    .param p4, "start"    # I
    .param p5, "isFullName"    # Z

    .prologue
    .line 346
    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthLastTokenPos:I

    move/from16 v0, p4

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthFirstTokenPos:I

    move/from16 v0, p4

    if-gt v0, v1, :cond_5

    :cond_0
    const/4 v7, 0x1

    .line 348
    .local v7, "addInitialMatches":Z
    :goto_0
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->indexes:[B

    .line 349
    .local v11, "indexes":[B
    move-object/from16 v9, p2

    .line 350
    .local v9, "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    move-object/from16 v12, p2

    .line 351
    .local v12, "initialNode":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    array-length v13, v11

    .line 352
    .local v13, "length":I
    const/4 v8, 0x1

    .line 354
    .local v8, "atSeparator":Z
    move/from16 v5, p4

    .local v5, "i":I
    :goto_1
    if-ge v5, v13, :cond_7

    .line 355
    aget-byte v10, v11, v5

    .line 356
    .local v10, "index":B
    const/4 v1, -0x1

    if-le v10, v1, :cond_6

    .line 357
    if-eqz v8, :cond_4

    .line 358
    const/4 v8, 0x0

    .line 361
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-eq v12, v1, :cond_3

    .line 362
    if-eqz p5, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/dialpad/SmartDialTrie;->putForPrefix(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Lcom/android/dialer/dialpad/SmartDialTrie$Node;Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;IZ)V

    .line 365
    :cond_1
    if-eqz v7, :cond_3

    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthLastTokenPos:I

    if-ge v5, v1, :cond_2

    move-object/from16 v0, p3

    iget v1, v0, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthFirstTokenPos:I

    if-gt v5, v1, :cond_3

    :cond_2
    move-object/from16 v0, p2

    if-eq v12, v0, :cond_3

    .line 368
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v12

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/dialer/dialpad/SmartDialTrie;->putForPrefix(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Lcom/android/dialer/dialpad/SmartDialTrie$Node;Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;IZ)V

    .line 373
    :cond_3
    move-object/from16 v0, p2

    if-ne v12, v0, :cond_4

    .line 374
    const/4 v1, 0x1

    invoke-virtual {v12, v10, v1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v12

    .line 377
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v9, v10, v1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v9

    .line 354
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 346
    .end local v5    # "i":I
    .end local v7    # "addInitialMatches":Z
    .end local v8    # "atSeparator":Z
    .end local v9    # "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .end local v10    # "index":B
    .end local v11    # "indexes":[B
    .end local v12    # "initialNode":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .end local v13    # "length":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 379
    .restart local v5    # "i":I
    .restart local v7    # "addInitialMatches":Z
    .restart local v8    # "atSeparator":Z
    .restart local v9    # "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .restart local v10    # "index":B
    .restart local v11    # "indexes":[B
    .restart local v12    # "initialNode":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .restart local v13    # "length":I
    :cond_6
    const/4 v8, 0x1

    goto :goto_2

    .line 382
    .end local v10    # "index":B
    :cond_7
    invoke-virtual {v9, p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->add(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)V

    .line 383
    return-void
.end method

.method private putNumber(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Ljava/lang/String;I)V
    .locals 6
    .param p1, "contact"    # Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "offSet"    # I

    .prologue
    const/4 v5, 0x1

    .line 316
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p3, v4, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    .line 318
    .local v1, "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 320
    .local v3, "length":I
    move v2, p3

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 321
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 322
    .local v0, "ch":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_0

    .line 323
    invoke-virtual {v1, v0, v5}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(CZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v1

    .line 320
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    .end local v0    # "ch":C
    .end local v1    # "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 326
    .restart local v1    # "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->add(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)V

    .line 327
    return-void
.end method


# virtual methods
.method public getAllWithPrefix(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v3

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    .line 119
    .local v1, "current":Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 120
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 121
    .local v0, "ch":C
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(CZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "ch":C
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/android/dialer/dialpad/SmartDialTrie;->getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method numEntries()I
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 389
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;>;"
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    invoke-direct {p0, v1, v0}, Lcom/android/dialer/dialpad/SmartDialTrie;->getAll(Lcom/android/dialer/dialpad/SmartDialTrie$Node;Ljava/util/ArrayList;)V

    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method parseToIndexes(Ljava/lang/CharSequence;II)Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    .locals 11
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "firstNTokens"    # I
    .param p3, "lastNTokens"    # I

    .prologue
    const/16 v10, 0x39

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 270
    .local v4, "length":I
    new-array v6, v4, [B

    .line 271
    .local v6, "result":[B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, "offSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 274
    .local v7, "tokenCount":I
    const/4 v0, 0x1

    .line 275
    .local v0, "atSeparator":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 276
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v1

    .line 277
    .local v1, "c":C
    const/16 v8, 0x61

    if-lt v1, v8, :cond_0

    const/16 v8, 0x7a

    if-le v1, v8, :cond_1

    :cond_0
    const/16 v8, 0x30

    if-lt v1, v8, :cond_4

    if-gt v1, v10, :cond_4

    .line 278
    :cond_1
    if-eqz v0, :cond_2

    .line 279
    add-int/lit8 v7, v7, 0x1

    .line 281
    :cond_2
    const/4 v0, 0x0

    .line 282
    if-gt v1, v10, :cond_3

    .line 284
    add-int/lit8 v8, v1, -0x30

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 275
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_3
    iget-object v8, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mCharacterMap:[C

    add-int/lit8 v9, v1, -0x61

    aget-char v8, v8, v9

    add-int/lit8 v8, v8, -0x30

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    goto :goto_1

    .line 291
    :cond_4
    if-nez v0, :cond_5

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_5
    const/4 v8, -0x1

    aput-byte v8, v6, v2

    .line 295
    const/4 v0, 0x1

    goto :goto_1

    .line 299
    .end local v1    # "c":C
    :cond_6
    new-instance v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;

    invoke-direct {v3}, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;-><init>()V

    .line 300
    .local v3, "info":Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    iput-object v6, v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->indexes:[B

    .line 301
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, p2, :cond_7

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    iput v8, v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthFirstTokenPos:I

    .line 303
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, p3, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, p3

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_3
    iput v8, v3, Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;->nthLastTokenPos:I

    .line 305
    return-object v3

    .line 301
    :cond_7
    add-int/lit8 v8, v4, -0x1

    goto :goto_2

    .line 303
    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public put(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)V
    .locals 10
    .param p1, "contact"    # Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 157
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->quanPin:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/dialer/dialpad/SmartDialTrie;->parseToIndexes(Ljava/lang/CharSequence;II)Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;

    move-result-object v3

    .line 159
    .local v3, "info":Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;
    iget-object v2, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mRoot:Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/dialpad/SmartDialTrie;->putForPrefix(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Lcom/android/dialer/dialpad/SmartDialTrie$Node;Lcom/android/dialer/dialpad/SmartDialTrie$ParseInfo;IZ)V

    .line 162
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 164
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialer/dialpad/SmartDialTrie;->getOffsetWithoutCountryCode(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;

    move-result-object v6

    .line 165
    .local v6, "code":Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
    iget v0, v6, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->offset:I

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    iget v1, v6, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->offset:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialTrie;->putNumber(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Ljava/lang/String;I)V

    .line 168
    :cond_0
    iget-object v0, v6, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->countryCode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v6, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->offset:I

    if-nez v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mFormatNanp:Z

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    iget v1, v6, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->offset:I

    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "stripped":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    const/4 v9, 0x0

    .line 174
    .local v9, "trunkPrefixOffset":I
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    .line 176
    const/4 v9, 0x1

    .line 178
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v9, 0xa

    if-ne v0, v1, :cond_4

    .line 180
    if-eqz v9, :cond_3

    .line 184
    invoke-direct {p0, p1, v8, v9}, Lcom/android/dialer/dialpad/SmartDialTrie;->putNumber(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Ljava/lang/String;I)V

    .line 187
    :cond_3
    add-int/lit8 v0, v9, 0x3

    invoke-direct {p0, p1, v8, v0}, Lcom/android/dialer/dialpad/SmartDialTrie;->putNumber(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Ljava/lang/String;I)V

    .line 191
    .end local v8    # "stripped":Ljava/lang/String;
    .end local v9    # "trunkPrefixOffset":I
    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 192
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/android/dialer/dialpad/SmartDialTrie;->putNumber(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;Ljava/lang/String;I)V

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 195
    .end local v6    # "code":Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
    .end local v7    # "i":I
    :cond_5
    iget v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mSize:I

    .line 196
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie;->mSize:I

    return v0
.end method
