.class public Lcom/android/contacts/common/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/common/util/ContactDisplayUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dipToPx(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "type"    # Ljava/lang/Integer;
    .param p1, "customLabel"    # Ljava/lang/CharSequence;
    .param p2, "interactionType"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    if-nez p1, :cond_0

    const-string p1, ""

    .line 76
    .end local p1    # "customLabel":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 66
    .restart local p1    # "customLabel":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 67
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getSmsLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    .line 76
    .local v0, "resId":I
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 69
    .end local v0    # "resId":I
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result v0

    .line 70
    .restart local v0    # "resId":I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    .line 71
    sget-object v1, Lcom/android/contacts/common/util/ContactDisplayUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-recognized interaction type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Defaulting to ContactDisplayUtils.INTERACTION_CALL."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f08000e

    .line 87
    if-nez p0, :cond_0

    .line 130
    :goto_0
    :pswitch_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 130
    const v0, 0x7f080007

    goto :goto_0

    .line 90
    :pswitch_1
    const v0, 0x7f080008

    goto :goto_0

    .line 92
    :pswitch_2
    const v0, 0x7f080009

    goto :goto_0

    .line 94
    :pswitch_3
    const v0, 0x7f08000a

    goto :goto_0

    .line 96
    :pswitch_4
    const v0, 0x7f08000b

    goto :goto_0

    .line 98
    :pswitch_5
    const v0, 0x7f08000c

    goto :goto_0

    .line 100
    :pswitch_6
    const v0, 0x7f08000d

    goto :goto_0

    .line 104
    :pswitch_7
    const v0, 0x7f08000f

    goto :goto_0

    .line 106
    :pswitch_8
    const v0, 0x7f080010

    goto :goto_0

    .line 108
    :pswitch_9
    const v0, 0x7f080011

    goto :goto_0

    .line 110
    :pswitch_a
    const v0, 0x7f080012

    goto :goto_0

    .line 112
    :pswitch_b
    const v0, 0x7f080013

    goto :goto_0

    .line 114
    :pswitch_c
    const v0, 0x7f080014

    goto :goto_0

    .line 116
    :pswitch_d
    const v0, 0x7f080015

    goto :goto_0

    .line 118
    :pswitch_e
    const v0, 0x7f080016

    goto :goto_0

    .line 120
    :pswitch_f
    const v0, 0x7f080017

    goto :goto_0

    .line 122
    :pswitch_10
    const v0, 0x7f080018

    goto :goto_0

    .line 124
    :pswitch_11
    const v0, 0x7f080019

    goto :goto_0

    .line 126
    :pswitch_12
    const v0, 0x7f08001a

    goto :goto_0

    .line 128
    :pswitch_13
    const v0, 0x7f08001b

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f080023

    .line 142
    if-nez p0, :cond_0

    .line 185
    :goto_0
    :pswitch_0
    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 185
    const v0, 0x7f08001c

    goto :goto_0

    .line 145
    :pswitch_1
    const v0, 0x7f08001d

    goto :goto_0

    .line 147
    :pswitch_2
    const v0, 0x7f08001e

    goto :goto_0

    .line 149
    :pswitch_3
    const v0, 0x7f08001f

    goto :goto_0

    .line 151
    :pswitch_4
    const v0, 0x7f080020

    goto :goto_0

    .line 153
    :pswitch_5
    const v0, 0x7f080021

    goto :goto_0

    .line 155
    :pswitch_6
    const v0, 0x7f080022

    goto :goto_0

    .line 159
    :pswitch_7
    const v0, 0x7f080024

    goto :goto_0

    .line 161
    :pswitch_8
    const v0, 0x7f080025

    goto :goto_0

    .line 163
    :pswitch_9
    const v0, 0x7f080026

    goto :goto_0

    .line 165
    :pswitch_a
    const v0, 0x7f080027

    goto :goto_0

    .line 167
    :pswitch_b
    const v0, 0x7f080028

    goto :goto_0

    .line 169
    :pswitch_c
    const v0, 0x7f080029

    goto :goto_0

    .line 171
    :pswitch_d
    const v0, 0x7f08002a

    goto :goto_0

    .line 173
    :pswitch_e
    const v0, 0x7f08002b

    goto :goto_0

    .line 175
    :pswitch_f
    const v0, 0x7f08002c

    goto :goto_0

    .line 177
    :pswitch_10
    const v0, 0x7f08002d

    goto :goto_0

    .line 179
    :pswitch_11
    const v0, 0x7f08002e

    goto :goto_0

    .line 181
    :pswitch_12
    const v0, 0x7f08002f

    goto :goto_0

    .line 183
    :pswitch_13
    const v0, 0x7f080030

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
