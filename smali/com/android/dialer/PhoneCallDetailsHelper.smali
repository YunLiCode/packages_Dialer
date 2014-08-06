.class public Lcom/android/dialer/PhoneCallDetailsHelper;
.super Ljava/lang/Object;
.source "PhoneCallDetailsHelper.java"


# instance fields
.field private final mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private mCurrentTimeMillisForTest:Ljava/lang/Long;

.field private final mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberHelper;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "callTypeHelper"    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p3, "phoneNumberHelper"    # Lcom/android/dialer/calllog/PhoneNumberHelper;

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    .line 67
    iput-object p2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 68
    iput-object p3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    .line 69
    return-void
.end method

.method private addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 218
    const/16 v0, 0x12

    .line 219
    .local v0, "flags":I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    .local v1, "result":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 221
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 222
    return-object v1
.end method

.method private setCallCountAndDate(Lcom/android/dialer/calllog/CallListItemView;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "view"    # Lcom/android/dialer/calllog/CallListItemView;
    .param p2, "callCount"    # Ljava/lang/Integer;
    .param p3, "dateText"    # Ljava/lang/CharSequence;
    .param p4, "highlightColor"    # Ljava/lang/Integer;

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08012c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz p4, :cond_1

    .line 208
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/PhoneCallDetailsHelper;->addBoldAndColor(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 213
    .local v0, "formattedText":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/dialer/calllog/CallListItemView;->setCountAndDate(Ljava/lang/CharSequence;)V

    .line 214
    return-void

    .line 202
    .end local v0    # "formattedText":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p3

    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 210
    :cond_1
    move-object v0, v1

    .restart local v0    # "formattedText":Ljava/lang/CharSequence;
    goto :goto_1
.end method


# virtual methods
.method public setCallDetailsHeader(Landroid/widget/TextView;Lcom/android/dialer/PhoneCallDetails;)V
    .locals 7
    .param p1, "nameView"    # Landroid/widget/TextView;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    iget-object v4, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f08010b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 160
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    iget-object v3, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/calllog/HotlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/HotlineHelper;

    move-result-object v3

    iget-object v4, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/android/dialer/calllog/HotlineHelper;->getHotlineByNumber(Ljava/lang/CharSequence;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    move-result-object v1

    .line 163
    .local v1, "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    if-lez v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    iget v4, v1, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .end local v1    # "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    .local v2, "nameText":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void

    .line 166
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    .restart local v1    # "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    :cond_0
    move-object v2, v0

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 169
    .end local v1    # "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    .end local v2    # "nameText":Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p2, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .restart local v2    # "nameText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public setCurrentTimeForTest(J)V
    .locals 1
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 177
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCurrentTimeMillisForTest:Ljava/lang/Long;

    .line 178
    return-void
.end method

.method public setPhoneCallDetails(Lcom/android/dialer/calllog/CallListItemView;Lcom/android/dialer/PhoneCallDetails;ZLandroid/content/Context;)V
    .locals 19
    .param p1, "view"    # Lcom/android/dialer/calllog/CallListItemView;
    .param p2, "details"    # Lcom/android/dialer/PhoneCallDetails;
    .param p3, "isHighlighted"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/dialer/PhoneCallDetails;->subscription:I

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/dialer/calllog/CallListItemView;->setSubscription(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dialer/calllog/CallListItemView;->getCallTypeIcons()Lcom/android/dialer/calllog/CallTypeIconsView;

    move-result-object v9

    .line 87
    .local v9, "callTypeIcons":Lcom/android/dialer/calllog/CallTypeIconsView;
    invoke-virtual {v9}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    .line 88
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    array-length v10, v2

    .line 89
    .local v10, "count":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    if-ge v14, v10, :cond_1

    const/4 v2, 0x1

    if-ge v14, v2, :cond_1

    .line 90
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    aget v2, v2, v14

    invoke-virtual {v9, v2}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    .line 89
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 82
    .end local v9    # "callTypeIcons":Lcom/android/dialer/calllog/CallTypeIconsView;
    .end local v10    # "count":I
    .end local v14    # "index":I
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/dialer/calllog/CallListItemView;->setSubscription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    .restart local v9    # "callTypeIcons":Lcom/android/dialer/calllog/CallTypeIconsView;
    .restart local v10    # "count":I
    .restart local v14    # "index":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/dialer/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 96
    const/4 v2, 0x1

    if-le v10, v2, :cond_4

    .line 97
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 102
    .local v8, "callCount":Ljava/lang/Integer;
    :goto_2
    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/CallTypeHelper;->getHighlightedColor(I)Ljava/lang/Integer;

    move-result-object v13

    .line 106
    .local v13, "highlightColor":Ljava/lang/Integer;
    :goto_3
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/dialer/PhoneCallDetails;->date:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/dialer/PhoneCallDetails;->date:J

    invoke-static/range {p4 .. p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x80

    :goto_4
    or-int/lit8 v7, v2, 0x1

    move-object/from16 v2, p4

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "dateText":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v11, v13}, Lcom/android/dialer/PhoneCallDetailsHelper;->setCallCountAndDate(Lcom/android/dialer/calllog/CallListItemView;Ljava/lang/Integer;Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 117
    const/16 v17, 0x0

    .line 119
    .local v17, "numberFormattedLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/dialer/PhoneCallDetails;->numberType:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/dialer/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 128
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 130
    .local v12, "displayNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    move-object/from16 v16, v12

    .line 132
    .local v16, "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/PhoneCallDetailsHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080160

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 138
    .local v18, "numberText":Ljava/lang/CharSequence;
    :goto_5
    const/4 v15, 0x0

    .line 140
    .local v15, "labelText":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dialer/calllog/CallListItemView;->getNumberView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 149
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->setNumber(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/dialer/calllog/CallListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 152
    return-void

    .line 99
    .end local v8    # "callCount":Ljava/lang/Integer;
    .end local v11    # "dateText":Ljava/lang/CharSequence;
    .end local v12    # "displayNumber":Ljava/lang/CharSequence;
    .end local v13    # "highlightColor":Ljava/lang/Integer;
    .end local v15    # "labelText":Ljava/lang/CharSequence;
    .end local v16    # "nameText":Ljava/lang/CharSequence;
    .end local v17    # "numberFormattedLabel":Ljava/lang/CharSequence;
    .end local v18    # "numberText":Ljava/lang/CharSequence;
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "callCount":Ljava/lang/Integer;
    goto/16 :goto_2

    .line 102
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 106
    .restart local v13    # "highlightColor":Ljava/lang/Integer;
    :cond_6
    const/16 v2, 0x40

    goto/16 :goto_4

    .line 136
    .restart local v11    # "dateText":Ljava/lang/CharSequence;
    .restart local v12    # "displayNumber":Ljava/lang/CharSequence;
    .restart local v16    # "nameText":Ljava/lang/CharSequence;
    .restart local v17    # "numberFormattedLabel":Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->geocode:Ljava/lang/String;

    move-object/from16 v18, v0

    .restart local v18    # "numberText":Ljava/lang/CharSequence;
    goto :goto_5

    .line 142
    .end local v16    # "nameText":Ljava/lang/CharSequence;
    .end local v18    # "numberText":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/dialer/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 143
    .restart local v16    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v18, v12

    .line 144
    .restart local v18    # "numberText":Ljava/lang/CharSequence;
    move-object/from16 v15, v17

    .line 146
    .restart local v15    # "labelText":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dialer/calllog/CallListItemView;->getNumberView()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    goto :goto_6
.end method
