.class public Lcom/android/contacts/common/util/ContactPhoneUtils;
.super Ljava/lang/Object;
.source "ContactPhoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->MULTI_SIM_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getPreferredSubscription()I
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public static getSimState(I)I
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 121
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    goto :goto_0
.end method

.method public static getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 176
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 178
    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMSimTelephonyManager()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "voiceMailNumber":Ljava/lang/String;
    const-string v2, "Dialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voiceMailNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 193
    .end local v0    # "i":I
    .end local v1    # "voiceMailNumber":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 191
    .restart local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 193
    .end local v0    # "i":I
    :cond_3
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 187
    .restart local v0    # "i":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static hasAnyEnabledIccCard()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 129
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 140
    .local v0, "i":I
    .local v1, "phoneCount":I
    :cond_0
    :goto_0
    return v2

    .end local v0    # "i":I
    .end local v1    # "phoneCount":I
    :cond_1
    move v2, v3

    .line 130
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPhoneCount()I

    move-result v1

    .line 135
    .restart local v1    # "phoneCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 136
    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->hasEnabledIccCard(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 140
    goto :goto_0
.end method

.method public static hasEnabledIccCard(I)Z
    .locals 4
    .param p0, "subscription"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 145
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 146
    goto :goto_0

    .line 150
    :cond_2
    if-eqz p0, :cond_3

    if-ne p0, v0, :cond_4

    :cond_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 219
    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isAirplaneModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSimDeactivated(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
