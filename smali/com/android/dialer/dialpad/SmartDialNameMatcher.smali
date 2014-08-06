.class public Lcom/android/dialer/dialpad/SmartDialNameMatcher;
.super Ljava/lang/Object;
.source "SmartDialNameMatcher.java"


# static fields
.field public static final LATIN_LETTERS_TO_DIGITS:[C


# instance fields
.field private final mMatchPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    .line 425
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    .line 426
    return-void
.end method

.method private isLowercaseLatinLetterOrDigit(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 716
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matches(Ljava/lang/String;)Z
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 721
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public static matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 5
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "matchNanp"    # Z

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "matchPos":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 471
    invoke-static {p0, p1, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_3

    .line 476
    :cond_0
    if-nez v2, :cond_2

    .line 478
    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialTrie;->getOffsetWithoutCountryCode(Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;

    move-result-object v0

    .line 480
    .local v0, "code":Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
    if-eqz v0, :cond_1

    .line 481
    iget v4, v0, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->offset:I

    invoke-static {p0, p1, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v2

    .line 483
    :cond_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    .line 485
    invoke-static {p0}, Lcom/android/dialer/dialpad/SmartDialTrie;->getOffsetForNANPNumbers(Ljava/lang/String;)[I

    move-result-object v3

    .line 486
    .local v3, "offsets":[I
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 487
    aget v4, v3, v1

    invoke-static {p0, p1, v4}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v2

    .line 488
    if-eqz v2, :cond_4

    .line 492
    .end local v0    # "code":Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
    .end local v3    # "offsets":[I
    :cond_2
    return-object v2

    .line 470
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .restart local v0    # "code":Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
    .restart local v3    # "offsets":[I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 507
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-object v4

    .line 510
    :cond_1
    const/4 v3, 0x0

    .line 511
    .local v3, "queryAt":I
    move v2, p2

    .line 512
    .local v2, "numberAt":I
    move v1, p2

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 540
    :cond_2
    new-instance v4, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v5, p2, 0x0

    invoke-direct {v4, v5, v2}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    goto :goto_0

    .line 516
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 517
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_5

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    .line 518
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 521
    add-int/lit8 v3, v3, 0x1

    .line 538
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 523
    :cond_5
    if-nez v3, :cond_4

    .line 533
    if-eqz p2, :cond_4

    .line 534
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method private matchesPinyin(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)Z
    .locals 13
    .param p1, "contact"    # Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 734
    sget-object v10, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "matchesPinyin("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v10, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 736
    iget-object v10, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->displayName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v8

    .line 739
    :cond_1
    iget-object v10, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->shouZiMu:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/dialer/dialpad/HanziHelper;->getNumericalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 740
    .local v5, "numericalShouZiMu":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->quanPin:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/dialer/dialpad/HanziHelper;->getNumericalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 741
    .local v4, "numericalQuanpin":Ljava/lang/String;
    sget-object v10, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "shouzimu: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->shouZiMu:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " --> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-object v10, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "quanpin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->quanPin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " --> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v10, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 744
    .local v7, "startIndex":I
    sget-object v10, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startIndex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v10, -0x1

    if-eq v7, v10, :cond_2

    .line 746
    iget-object v8, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    iget-object v11, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v7

    invoke-direct {v10, v7, v11}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 747
    goto/16 :goto_0

    .line 749
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v0, v10, 0x1

    .line 750
    .local v0, "count":I
    sget-object v10, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "offsets: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 752
    iget-object v10, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v2, v10, v8, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 753
    sget-object v10, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "regionMatches("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v10, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 755
    sget-object v8, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offsets.contains("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v8, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 757
    sget-object v8, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    move v1, v7

    .line 759
    .local v1, "endIndex":I
    iget-object v8, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v6, v2, v8

    .line 760
    .local v6, "offset":I
    move v3, v7

    .local v3, "j":I
    :goto_2
    iget-object v8, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 761
    iget-object v8, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v6, :cond_3

    .line 762
    add-int/lit8 v1, v1, 0x1

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 767
    :cond_3
    sget-object v8, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "final startIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", endIndex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v8, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    invoke-direct {v10, v7, v1}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 769
    goto/16 :goto_0

    .line 751
    .end local v1    # "endIndex":I
    .end local v3    # "j":I
    .end local v6    # "offset":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 773
    :cond_5
    sget-object v9, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v10, "final NOT match!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v2, "s":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 448
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 449
    .local v0, "ch":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static remapAccentedChars(C)C
    .locals 5
    .param p0, "c"    # C

    .prologue
    const/16 v1, 0x65

    const/16 v2, 0x69

    const/16 v0, 0x61

    const/16 v4, 0x75

    const/16 v3, 0x6f

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 418
    .end local p0    # "c":C
    :goto_0
    :pswitch_0
    return p0

    .restart local p0    # "c":C
    :pswitch_1
    move p0, v0

    .line 80
    goto :goto_0

    :pswitch_2
    move p0, v0

    .line 81
    goto :goto_0

    :pswitch_3
    move p0, v0

    .line 82
    goto :goto_0

    :pswitch_4
    move p0, v0

    .line 83
    goto :goto_0

    :pswitch_5
    move p0, v0

    .line 84
    goto :goto_0

    :pswitch_6
    move p0, v0

    .line 85
    goto :goto_0

    .line 86
    :pswitch_7
    const/16 p0, 0x63

    goto :goto_0

    :pswitch_8
    move p0, v1

    .line 87
    goto :goto_0

    :pswitch_9
    move p0, v1

    .line 88
    goto :goto_0

    :pswitch_a
    move p0, v1

    .line 89
    goto :goto_0

    :pswitch_b
    move p0, v1

    .line 90
    goto :goto_0

    :pswitch_c
    move p0, v2

    .line 91
    goto :goto_0

    :pswitch_d
    move p0, v2

    .line 92
    goto :goto_0

    :pswitch_e
    move p0, v2

    .line 93
    goto :goto_0

    :pswitch_f
    move p0, v2

    .line 94
    goto :goto_0

    .line 95
    :pswitch_10
    const/16 p0, 0x64

    goto :goto_0

    .line 96
    :pswitch_11
    const/16 p0, 0x6e

    goto :goto_0

    :pswitch_12
    move p0, v3

    .line 97
    goto :goto_0

    :pswitch_13
    move p0, v3

    .line 98
    goto :goto_0

    :pswitch_14
    move p0, v3

    .line 99
    goto :goto_0

    :pswitch_15
    move p0, v3

    .line 100
    goto :goto_0

    :pswitch_16
    move p0, v3

    .line 101
    goto :goto_0

    .line 102
    :pswitch_17
    const/16 p0, 0x78

    goto :goto_0

    :pswitch_18
    move p0, v3

    .line 103
    goto :goto_0

    :pswitch_19
    move p0, v4

    .line 104
    goto :goto_0

    :pswitch_1a
    move p0, v4

    .line 105
    goto :goto_0

    :pswitch_1b
    move p0, v4

    .line 106
    goto :goto_0

    :pswitch_1c
    move p0, v4

    .line 107
    goto :goto_0

    :pswitch_1d
    move p0, v4

    .line 108
    goto :goto_0

    :pswitch_1e
    move p0, v0

    .line 109
    goto :goto_0

    :pswitch_1f
    move p0, v0

    .line 110
    goto :goto_0

    :pswitch_20
    move p0, v0

    .line 111
    goto :goto_0

    :pswitch_21
    move p0, v0

    .line 112
    goto :goto_0

    :pswitch_22
    move p0, v0

    .line 113
    goto :goto_0

    :pswitch_23
    move p0, v0

    .line 114
    goto :goto_0

    .line 115
    :pswitch_24
    const/16 p0, 0x63

    goto :goto_0

    :pswitch_25
    move p0, v1

    .line 116
    goto :goto_0

    :pswitch_26
    move p0, v1

    .line 117
    goto :goto_0

    :pswitch_27
    move p0, v1

    .line 118
    goto :goto_0

    :pswitch_28
    move p0, v1

    .line 119
    goto :goto_0

    :pswitch_29
    move p0, v2

    .line 120
    goto :goto_0

    :pswitch_2a
    move p0, v2

    .line 121
    goto :goto_0

    :pswitch_2b
    move p0, v2

    .line 122
    goto :goto_0

    :pswitch_2c
    move p0, v2

    .line 123
    goto :goto_0

    .line 124
    :pswitch_2d
    const/16 p0, 0x64

    goto :goto_0

    .line 125
    :pswitch_2e
    const/16 p0, 0x6e

    goto :goto_0

    :pswitch_2f
    move p0, v3

    .line 126
    goto :goto_0

    :pswitch_30
    move p0, v3

    .line 127
    goto :goto_0

    :pswitch_31
    move p0, v3

    .line 128
    goto :goto_0

    :pswitch_32
    move p0, v3

    .line 129
    goto :goto_0

    :pswitch_33
    move p0, v3

    .line 130
    goto :goto_0

    :pswitch_34
    move p0, v3

    .line 131
    goto :goto_0

    :pswitch_35
    move p0, v4

    .line 132
    goto :goto_0

    :pswitch_36
    move p0, v4

    .line 133
    goto :goto_0

    :pswitch_37
    move p0, v4

    .line 134
    goto :goto_0

    :pswitch_38
    move p0, v4

    .line 135
    goto :goto_0

    .line 136
    :pswitch_39
    const/16 p0, 0x79

    goto :goto_0

    .line 137
    :pswitch_3a
    const/16 p0, 0x79

    goto :goto_0

    :pswitch_3b
    move p0, v0

    .line 138
    goto :goto_0

    :pswitch_3c
    move p0, v0

    .line 139
    goto/16 :goto_0

    :pswitch_3d
    move p0, v0

    .line 140
    goto/16 :goto_0

    :pswitch_3e
    move p0, v0

    .line 141
    goto/16 :goto_0

    :pswitch_3f
    move p0, v0

    .line 142
    goto/16 :goto_0

    :pswitch_40
    move p0, v0

    .line 143
    goto/16 :goto_0

    .line 144
    :pswitch_41
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 145
    :pswitch_42
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 146
    :pswitch_43
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 147
    :pswitch_44
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 148
    :pswitch_45
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 149
    :pswitch_46
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 150
    :pswitch_47
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 151
    :pswitch_48
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 152
    :pswitch_49
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 153
    :pswitch_4a
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 154
    :pswitch_4b
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 155
    :pswitch_4c
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_4d
    move p0, v1

    .line 156
    goto/16 :goto_0

    :pswitch_4e
    move p0, v1

    .line 157
    goto/16 :goto_0

    :pswitch_4f
    move p0, v1

    .line 158
    goto/16 :goto_0

    :pswitch_50
    move p0, v1

    .line 159
    goto/16 :goto_0

    :pswitch_51
    move p0, v1

    .line 160
    goto/16 :goto_0

    :pswitch_52
    move p0, v1

    .line 161
    goto/16 :goto_0

    :pswitch_53
    move p0, v1

    .line 162
    goto/16 :goto_0

    :pswitch_54
    move p0, v1

    .line 163
    goto/16 :goto_0

    :pswitch_55
    move p0, v1

    .line 164
    goto/16 :goto_0

    :pswitch_56
    move p0, v1

    .line 165
    goto/16 :goto_0

    .line 166
    :pswitch_57
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 167
    :pswitch_58
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 168
    :pswitch_59
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 169
    :pswitch_5a
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 170
    :pswitch_5b
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 171
    :pswitch_5c
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 172
    :pswitch_5d
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 173
    :pswitch_5e
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 174
    :pswitch_5f
    const/16 p0, 0x68

    goto/16 :goto_0

    .line 175
    :pswitch_60
    const/16 p0, 0x68

    goto/16 :goto_0

    .line 176
    :pswitch_61
    const/16 p0, 0x68

    goto/16 :goto_0

    .line 177
    :pswitch_62
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_63
    move p0, v2

    .line 178
    goto/16 :goto_0

    :pswitch_64
    move p0, v2

    .line 179
    goto/16 :goto_0

    :pswitch_65
    move p0, v2

    .line 180
    goto/16 :goto_0

    :pswitch_66
    move p0, v2

    .line 181
    goto/16 :goto_0

    :pswitch_67
    move p0, v2

    .line 182
    goto/16 :goto_0

    :pswitch_68
    move p0, v2

    .line 183
    goto/16 :goto_0

    :pswitch_69
    move p0, v2

    .line 184
    goto/16 :goto_0

    :pswitch_6a
    move p0, v2

    .line 185
    goto/16 :goto_0

    :pswitch_6b
    move p0, v2

    .line 186
    goto/16 :goto_0

    :pswitch_6c
    move p0, v2

    .line 187
    goto/16 :goto_0

    .line 188
    :pswitch_6d
    const/16 p0, 0x6a

    goto/16 :goto_0

    .line 189
    :pswitch_6e
    const/16 p0, 0x6a

    goto/16 :goto_0

    .line 190
    :pswitch_6f
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 191
    :pswitch_70
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 192
    :pswitch_71
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 193
    :pswitch_72
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 194
    :pswitch_73
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 195
    :pswitch_74
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 196
    :pswitch_75
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 197
    :pswitch_76
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 198
    :pswitch_77
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 199
    :pswitch_78
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 200
    :pswitch_79
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 201
    :pswitch_7a
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 202
    :pswitch_7b
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 203
    :pswitch_7c
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 204
    :pswitch_7d
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 205
    :pswitch_7e
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 206
    :pswitch_7f
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 207
    :pswitch_80
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 208
    :pswitch_81
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_82
    move p0, v3

    .line 209
    goto/16 :goto_0

    :pswitch_83
    move p0, v3

    .line 210
    goto/16 :goto_0

    :pswitch_84
    move p0, v3

    .line 211
    goto/16 :goto_0

    :pswitch_85
    move p0, v3

    .line 212
    goto/16 :goto_0

    :pswitch_86
    move p0, v3

    .line 213
    goto/16 :goto_0

    :pswitch_87
    move p0, v3

    .line 214
    goto/16 :goto_0

    .line 215
    :pswitch_88
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 216
    :pswitch_89
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 217
    :pswitch_8a
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 218
    :pswitch_8b
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 219
    :pswitch_8c
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 220
    :pswitch_8d
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 221
    :pswitch_8e
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 222
    :pswitch_8f
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 223
    :pswitch_90
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 224
    :pswitch_91
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 225
    :pswitch_92
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 226
    :pswitch_93
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 227
    :pswitch_94
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 228
    :pswitch_95
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 229
    :pswitch_96
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 230
    :pswitch_97
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 231
    :pswitch_98
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 232
    :pswitch_99
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 233
    :pswitch_9a
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 234
    :pswitch_9b
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_9c
    move p0, v4

    .line 235
    goto/16 :goto_0

    :pswitch_9d
    move p0, v4

    .line 236
    goto/16 :goto_0

    :pswitch_9e
    move p0, v4

    .line 237
    goto/16 :goto_0

    :pswitch_9f
    move p0, v4

    .line 238
    goto/16 :goto_0

    :pswitch_a0
    move p0, v4

    .line 239
    goto/16 :goto_0

    :pswitch_a1
    move p0, v4

    .line 240
    goto/16 :goto_0

    :pswitch_a2
    move p0, v4

    .line 241
    goto/16 :goto_0

    :pswitch_a3
    move p0, v4

    .line 242
    goto/16 :goto_0

    :pswitch_a4
    move p0, v4

    .line 243
    goto/16 :goto_0

    :pswitch_a5
    move p0, v4

    .line 244
    goto/16 :goto_0

    :pswitch_a6
    move p0, v4

    .line 245
    goto/16 :goto_0

    :pswitch_a7
    move p0, v4

    .line 246
    goto/16 :goto_0

    .line 247
    :pswitch_a8
    const/16 p0, 0x77

    goto/16 :goto_0

    .line 248
    :pswitch_a9
    const/16 p0, 0x77

    goto/16 :goto_0

    .line 249
    :pswitch_aa
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 250
    :pswitch_ab
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 251
    :pswitch_ac
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 252
    :pswitch_ad
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 253
    :pswitch_ae
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 254
    :pswitch_af
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 255
    :pswitch_b0
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 256
    :pswitch_b1
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 257
    :pswitch_b2
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 258
    :pswitch_b3
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 259
    :pswitch_b4
    const/16 p0, 0x62

    goto/16 :goto_0

    .line 260
    :pswitch_b5
    const/16 p0, 0x62

    goto/16 :goto_0

    .line 261
    :pswitch_b6
    const/16 p0, 0x62

    goto/16 :goto_0

    .line 262
    :pswitch_b7
    const/16 p0, 0x62

    goto/16 :goto_0

    :pswitch_b8
    move p0, v3

    .line 263
    goto/16 :goto_0

    .line 264
    :pswitch_b9
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 265
    :pswitch_ba
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 266
    :pswitch_bb
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 267
    :pswitch_bc
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 268
    :pswitch_bd
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 269
    :pswitch_be
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 270
    :pswitch_bf
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_c0
    move p0, v1

    .line 271
    goto/16 :goto_0

    .line 272
    :pswitch_c1
    const/16 p0, 0x66

    goto/16 :goto_0

    .line 273
    :pswitch_c2
    const/16 p0, 0x66

    goto/16 :goto_0

    .line 274
    :pswitch_c3
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 275
    :pswitch_c4
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_c5
    move p0, v2

    .line 276
    goto/16 :goto_0

    :pswitch_c6
    move p0, v2

    .line 277
    goto/16 :goto_0

    .line 278
    :pswitch_c7
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 279
    :pswitch_c8
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 280
    :pswitch_c9
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 281
    :pswitch_ca
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 282
    :pswitch_cb
    const/16 p0, 0x77

    goto/16 :goto_0

    .line 283
    :pswitch_cc
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 284
    :pswitch_cd
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_ce
    move p0, v3

    .line 285
    goto/16 :goto_0

    :pswitch_cf
    move p0, v3

    .line 286
    goto/16 :goto_0

    :pswitch_d0
    move p0, v3

    .line 287
    goto/16 :goto_0

    .line 288
    :pswitch_d1
    const/16 p0, 0x70

    goto/16 :goto_0

    .line 289
    :pswitch_d2
    const/16 p0, 0x70

    goto/16 :goto_0

    .line 290
    :pswitch_d3
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 291
    :pswitch_d4
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 292
    :pswitch_d5
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 293
    :pswitch_d6
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_d7
    move p0, v4

    .line 294
    goto/16 :goto_0

    :pswitch_d8
    move p0, v4

    .line 295
    goto/16 :goto_0

    .line 296
    :pswitch_d9
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 297
    :pswitch_da
    const/16 p0, 0x76

    goto/16 :goto_0

    .line 298
    :pswitch_db
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 299
    :pswitch_dc
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 300
    :pswitch_dd
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 301
    :pswitch_de
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 302
    :pswitch_df
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_e0
    move p0, v0

    .line 303
    goto/16 :goto_0

    :pswitch_e1
    move p0, v0

    .line 304
    goto/16 :goto_0

    :pswitch_e2
    move p0, v2

    .line 305
    goto/16 :goto_0

    :pswitch_e3
    move p0, v2

    .line 306
    goto/16 :goto_0

    :pswitch_e4
    move p0, v3

    .line 307
    goto/16 :goto_0

    :pswitch_e5
    move p0, v3

    .line 308
    goto/16 :goto_0

    :pswitch_e6
    move p0, v4

    .line 309
    goto/16 :goto_0

    :pswitch_e7
    move p0, v4

    .line 310
    goto/16 :goto_0

    :pswitch_e8
    move p0, v4

    .line 311
    goto/16 :goto_0

    :pswitch_e9
    move p0, v4

    .line 312
    goto/16 :goto_0

    :pswitch_ea
    move p0, v4

    .line 313
    goto/16 :goto_0

    :pswitch_eb
    move p0, v4

    .line 314
    goto/16 :goto_0

    :pswitch_ec
    move p0, v4

    .line 315
    goto/16 :goto_0

    :pswitch_ed
    move p0, v4

    .line 316
    goto/16 :goto_0

    :pswitch_ee
    move p0, v4

    .line 317
    goto/16 :goto_0

    :pswitch_ef
    move p0, v4

    .line 318
    goto/16 :goto_0

    :pswitch_f0
    move p0, v0

    .line 319
    goto/16 :goto_0

    :pswitch_f1
    move p0, v0

    .line 320
    goto/16 :goto_0

    :pswitch_f2
    move p0, v0

    .line 321
    goto/16 :goto_0

    :pswitch_f3
    move p0, v0

    .line 322
    goto/16 :goto_0

    .line 323
    :pswitch_f4
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 324
    :pswitch_f5
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 325
    :pswitch_f6
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 326
    :pswitch_f7
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 327
    :pswitch_f8
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 328
    :pswitch_f9
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_fa
    move p0, v3

    .line 329
    goto/16 :goto_0

    :pswitch_fb
    move p0, v3

    .line 330
    goto/16 :goto_0

    :pswitch_fc
    move p0, v3

    .line 331
    goto/16 :goto_0

    :pswitch_fd
    move p0, v3

    .line 332
    goto/16 :goto_0

    .line 333
    :pswitch_fe
    const/16 p0, 0x6a

    goto/16 :goto_0

    .line 334
    :pswitch_ff
    const/16 p0, 0x64

    goto/16 :goto_0

    .line 335
    :pswitch_100
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 336
    :pswitch_101
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 337
    :pswitch_102
    const/16 p0, 0x77

    goto/16 :goto_0

    .line 338
    :pswitch_103
    const/16 p0, 0x6e

    goto/16 :goto_0

    .line 339
    :pswitch_104
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_105
    move p0, v0

    .line 340
    goto/16 :goto_0

    :pswitch_106
    move p0, v0

    .line 341
    goto/16 :goto_0

    :pswitch_107
    move p0, v3

    .line 342
    goto/16 :goto_0

    :pswitch_108
    move p0, v3

    .line 343
    goto/16 :goto_0

    :pswitch_109
    move p0, v0

    .line 344
    goto/16 :goto_0

    :pswitch_10a
    move p0, v0

    .line 345
    goto/16 :goto_0

    :pswitch_10b
    move p0, v0

    .line 346
    goto/16 :goto_0

    :pswitch_10c
    move p0, v0

    .line 347
    goto/16 :goto_0

    :pswitch_10d
    move p0, v1

    .line 348
    goto/16 :goto_0

    :pswitch_10e
    move p0, v1

    .line 349
    goto/16 :goto_0

    :pswitch_10f
    move p0, v1

    .line 350
    goto/16 :goto_0

    :pswitch_110
    move p0, v1

    .line 351
    goto/16 :goto_0

    :pswitch_111
    move p0, v2

    .line 352
    goto/16 :goto_0

    :pswitch_112
    move p0, v2

    .line 353
    goto/16 :goto_0

    :pswitch_113
    move p0, v2

    .line 354
    goto/16 :goto_0

    :pswitch_114
    move p0, v2

    .line 355
    goto/16 :goto_0

    :pswitch_115
    move p0, v3

    .line 356
    goto/16 :goto_0

    :pswitch_116
    move p0, v3

    .line 357
    goto/16 :goto_0

    :pswitch_117
    move p0, v3

    .line 358
    goto/16 :goto_0

    :pswitch_118
    move p0, v3

    .line 359
    goto/16 :goto_0

    .line 360
    :pswitch_119
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 361
    :pswitch_11a
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 362
    :pswitch_11b
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 363
    :pswitch_11c
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_11d
    move p0, v4

    .line 364
    goto/16 :goto_0

    :pswitch_11e
    move p0, v4

    .line 365
    goto/16 :goto_0

    :pswitch_11f
    move p0, v4

    .line 366
    goto/16 :goto_0

    :pswitch_120
    move p0, v4

    .line 367
    goto/16 :goto_0

    .line 368
    :pswitch_121
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 369
    :pswitch_122
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 370
    :pswitch_123
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 371
    :pswitch_124
    const/16 p0, 0x74

    goto/16 :goto_0

    .line 372
    :pswitch_125
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 373
    :pswitch_126
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 374
    :pswitch_127
    const/16 p0, 0x68

    goto/16 :goto_0

    .line 375
    :pswitch_128
    const/16 p0, 0x68

    goto/16 :goto_0

    .line 376
    :pswitch_129
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 377
    :pswitch_12a
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_12b
    move p0, v0

    .line 378
    goto/16 :goto_0

    :pswitch_12c
    move p0, v0

    .line 379
    goto/16 :goto_0

    :pswitch_12d
    move p0, v1

    .line 380
    goto/16 :goto_0

    :pswitch_12e
    move p0, v1

    .line 381
    goto/16 :goto_0

    :pswitch_12f
    move p0, v3

    .line 382
    goto/16 :goto_0

    :pswitch_130
    move p0, v3

    .line 383
    goto/16 :goto_0

    :pswitch_131
    move p0, v3

    .line 384
    goto/16 :goto_0

    :pswitch_132
    move p0, v3

    .line 385
    goto/16 :goto_0

    :pswitch_133
    move p0, v3

    .line 386
    goto/16 :goto_0

    :pswitch_134
    move p0, v3

    .line 387
    goto/16 :goto_0

    :pswitch_135
    move p0, v3

    .line 388
    goto/16 :goto_0

    :pswitch_136
    move p0, v3

    .line 389
    goto/16 :goto_0

    .line 390
    :pswitch_137
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 391
    :pswitch_138
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_139
    move p0, v0

    .line 392
    goto/16 :goto_0

    .line 393
    :pswitch_13a
    const/16 p0, 0x62

    goto/16 :goto_0

    .line 394
    :pswitch_13b
    const/16 p0, 0x63

    goto/16 :goto_0

    .line 395
    :pswitch_13c
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_13d
    move p0, v1

    .line 396
    goto/16 :goto_0

    .line 397
    :pswitch_13e
    const/16 p0, 0x66

    goto/16 :goto_0

    .line 398
    :pswitch_13f
    const/16 p0, 0x67

    goto/16 :goto_0

    .line 399
    :pswitch_140
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_141
    move p0, v2

    .line 400
    goto/16 :goto_0

    .line 401
    :pswitch_142
    const/16 p0, 0x6a

    goto/16 :goto_0

    .line 402
    :pswitch_143
    const/16 p0, 0x6b

    goto/16 :goto_0

    .line 403
    :pswitch_144
    const/16 p0, 0x6c

    goto/16 :goto_0

    .line 404
    :pswitch_145
    const/16 p0, 0x6d

    goto/16 :goto_0

    .line 405
    :pswitch_146
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_147
    move p0, v3

    .line 406
    goto/16 :goto_0

    .line 407
    :pswitch_148
    const/16 p0, 0x70

    goto/16 :goto_0

    .line 408
    :pswitch_149
    const/16 p0, 0x71

    goto/16 :goto_0

    .line 409
    :pswitch_14a
    const/16 p0, 0x72

    goto/16 :goto_0

    .line 410
    :pswitch_14b
    const/16 p0, 0x73

    goto/16 :goto_0

    .line 411
    :pswitch_14c
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_14d
    move p0, v4

    .line 412
    goto/16 :goto_0

    .line 413
    :pswitch_14e
    const/16 p0, 0x76

    goto/16 :goto_0

    .line 414
    :pswitch_14f
    const/16 p0, 0x77

    goto/16 :goto_0

    .line 415
    :pswitch_150
    const/16 p0, 0x78

    goto/16 :goto_0

    .line 416
    :pswitch_151
    const/16 p0, 0x79

    goto/16 :goto_0

    .line 417
    :pswitch_152
    const/16 p0, 0x7a

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_139
        :pswitch_13a
        :pswitch_13b
        :pswitch_13c
        :pswitch_13d
        :pswitch_13e
        :pswitch_13f
        :pswitch_140
        :pswitch_141
        :pswitch_142
        :pswitch_143
        :pswitch_144
        :pswitch_145
        :pswitch_146
        :pswitch_147
        :pswitch_148
        :pswitch_149
        :pswitch_14a
        :pswitch_14b
        :pswitch_14c
        :pswitch_14d
        :pswitch_14e
        :pswitch_14f
        :pswitch_150
        :pswitch_151
        :pswitch_152
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_0
        :pswitch_0
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_0
        :pswitch_0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_0
        :pswitch_0
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_0
        :pswitch_0
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_0
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_0
        :pswitch_0
        :pswitch_d1
        :pswitch_d2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_df
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
        :pswitch_0
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_0
        :pswitch_0
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_0
        :pswitch_0
        :pswitch_fe
        :pswitch_0
        :pswitch_ff
        :pswitch_0
        :pswitch_100
        :pswitch_101
        :pswitch_0
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_105
        :pswitch_106
        :pswitch_0
        :pswitch_0
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_114
        :pswitch_115
        :pswitch_116
        :pswitch_117
        :pswitch_118
        :pswitch_119
        :pswitch_11a
        :pswitch_11b
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
        :pswitch_120
        :pswitch_121
        :pswitch_122
        :pswitch_123
        :pswitch_124
        :pswitch_125
        :pswitch_126
        :pswitch_127
        :pswitch_128
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_129
        :pswitch_12a
        :pswitch_12b
        :pswitch_12c
        :pswitch_12d
        :pswitch_12e
        :pswitch_12f
        :pswitch_130
        :pswitch_131
        :pswitch_132
        :pswitch_133
        :pswitch_134
        :pswitch_135
        :pswitch_136
        :pswitch_137
        :pswitch_138
    .end packed-switch
.end method


# virtual methods
.method public getMatchPositions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)Z
    .locals 3
    .param p1, "contact"    # Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;

    .prologue
    .line 725
    sget-object v0, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matches("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->isContainsHanzi:Z

    if-eqz v0, :cond_0

    .line 727
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesPinyin(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)Z

    move-result v0

    .line 729
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->displayName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 15
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 573
    .local p3, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 574
    .local v3, "nameLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 576
    .local v7, "queryLength":I
    if-ge v3, v7, :cond_0

    .line 577
    const/4 v12, 0x0

    .line 709
    :goto_0
    return v12

    .line 580
    :cond_0
    if-nez v7, :cond_1

    .line 581
    const/4 v12, 0x0

    goto :goto_0

    .line 586
    :cond_1
    const/4 v4, 0x0

    .line 589
    .local v4, "nameStart":I
    const/4 v8, 0x0

    .line 592
    .local v8, "queryStart":I
    const/4 v11, 0x0

    .line 598
    .local v11, "tokenStart":I
    const/4 v10, 0x0

    .line 600
    .local v10, "seperatorCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v5, "partial":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    :goto_1
    if-ge v4, v3, :cond_d

    if-ge v8, v7, :cond_d

    .line 603
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 605
    .local v1, "ch":C
    invoke-static {v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v1

    .line 606
    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 607
    const/16 v12, 0x61

    if-lt v1, v12, :cond_2

    const/16 v12, 0x7a

    if-gt v1, v12, :cond_2

    .line 609
    sget-object v12, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    add-int/lit8 v13, v1, -0x61

    aget-char v1, v12, v13

    .line 611
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v1, v12, :cond_6

    .line 628
    if-eqz v8, :cond_3

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 631
    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 634
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 636
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 640
    :cond_5
    const/4 v8, 0x0

    .line 641
    const/4 v10, 0x0

    .line 642
    move v11, v4

    goto :goto_1

    .line 644
    :cond_6
    add-int/lit8 v12, v7, -0x1

    if-ne v8, v12, :cond_7

    .line 648
    new-instance v12, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int v13, v7, v11

    add-int/2addr v13, v10

    invoke-direct {v12, v11, v13}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    const/4 v12, 0x1

    goto :goto_0

    .line 651
    :cond_7
    const/4 v12, 0x1

    if-ge v8, v12, :cond_9

    .line 657
    move v2, v4

    .local v2, "j":I
    :goto_3
    if-ge v2, v3, :cond_8

    .line 658
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-nez v12, :cond_a

    .line 664
    :cond_8
    add-int/lit8 v12, v3, -0x1

    if-ge v2, v12, :cond_9

    .line 665
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 666
    .local v9, "remainder":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 668
    .local v6, "partialTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v9, v12, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 672
    add-int/lit8 v12, v2, 0x1

    invoke-static {v6, v12}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->advanceMatchPositions(Ljava/util/ArrayList;I)V

    .line 673
    const/4 v12, 0x0

    new-instance v13, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v14, v4, 0x1

    invoke-direct {v13, v4, v14}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    invoke-virtual {v6, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 678
    move-object v5, v6

    .line 682
    .end local v2    # "j":I
    .end local v6    # "partialTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialMatchPosition;>;"
    .end local v9    # "remainder":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 683
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 657
    .restart local v2    # "j":I
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 689
    .end local v2    # "j":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 690
    if-nez v8, :cond_c

    .line 694
    move v11, v4

    goto/16 :goto_1

    .line 698
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 705
    .end local v1    # "ch":C
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    .line 706
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 707
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 709
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0
.end method
