.class public Lcom/android/dialer/calllog/PhoneNumberHelper;
.super Ljava/lang/Object;
.source "PhoneNumberHelper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    .line 34
    return-void
.end method


# virtual methods
.method public canPlaceCallsTo(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSendSmsTo(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string p1, ""

    .line 74
    .end local p1    # "number":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 59
    .restart local p1    # "number":Ljava/lang/CharSequence;
    :cond_1
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_2
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_3
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    iget-object v0, p0, Lcom/android/dialer/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p2

    .line 74
    goto :goto_0
.end method

.method public isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
