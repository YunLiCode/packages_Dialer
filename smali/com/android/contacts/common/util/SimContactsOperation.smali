.class public Lcom/android/contacts/common/util/SimContactsOperation;
.super Ljava/lang/Object;
.source "SimContactsOperation.java"


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    const-class v0, Lcom/android/contacts/common/util/SimContactsOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/SimContactsOperation;->TAG:Ljava/lang/String;

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v2

    const-string v1, "account_type"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/common/util/SimContactsOperation;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mimetype"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/common/util/SimContactsOperation;->DATA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getSubscription(Landroid/accounts/Account;)I
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    .line 383
    if-nez p0, :cond_0

    .line 384
    const/4 v0, -0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/SimContactsOperation;->getSubscription(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getSubscription(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 391
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    const-string v1, "com.android.sim"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "SIM1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_2
    const-string v1, "SIM2"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 402
    const/4 v0, 0x1

    goto :goto_0

    .line 404
    :cond_3
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static hasChinese(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 428
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
