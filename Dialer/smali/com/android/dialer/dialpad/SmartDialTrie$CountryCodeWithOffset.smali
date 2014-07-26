.class public Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;
.super Ljava/lang/Object;
.source "SmartDialTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/SmartDialTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryCodeWithOffset"
.end annotation


# static fields
.field public static final NO_COUNTRY_CODE:Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;


# instance fields
.field final countryCode:Ljava/lang/String;

.field final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->NO_COUNTRY_CODE:Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->countryCode:Ljava/lang/String;

    .line 67
    iput p1, p0, Lcom/android/dialer/dialpad/SmartDialTrie$CountryCodeWithOffset;->offset:I

    .line 68
    return-void
.end method
