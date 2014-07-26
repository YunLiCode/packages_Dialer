.class public Lcom/android/dialer/dialpad/HanziHelper;
.super Ljava/lang/Object;
.source "HanziHelper.java"


# static fields
.field private static final ZIMU_SHUZI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    .line 16
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "A"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "B"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "C"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "D"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "E"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "F"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "G"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "H"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "I"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "J"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "K"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "L"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "M"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "N"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "O"

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "P"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "Q"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "R"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "S"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "T"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "U"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "V"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "W"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "X"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "Y"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    const-string v1, "Z"

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumericalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    .end local p0    # "pinyin":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "pinyin":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 50
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 51
    .local v1, "c":C
    invoke-static {v1}, Lcom/android/dialer/dialpad/HanziHelper;->getSpecifiedNumber(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "c":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getSpecifiedNumber(C)Ljava/lang/String;
    .locals 2
    .param p0, "single"    # C

    .prologue
    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "backup":Ljava/lang/String;
    sget-object v1, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/android/dialer/dialpad/HanziHelper;->ZIMU_SHUZI:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const/16 v1, 0x20

    if-ne v1, p0, :cond_1

    .line 61
    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 63
    goto :goto_0
.end method
