.class public Lcom/android/contacts/common/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri1"    # Landroid/net/Uri;
    .param p1, "uri2"    # Landroid/net/Uri;

    .prologue
    .line 32
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 35
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getUriForNumber(Ljava/lang/CharSequence;)Landroid/net/Uri;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->getUriForNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    const-string v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static uriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
