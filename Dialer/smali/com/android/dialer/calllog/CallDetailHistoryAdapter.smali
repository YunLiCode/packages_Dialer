.class public Lcom/android/dialer/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# instance fields
.field private final mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

.field private final mShowCallAndSms:Z

.field private final mShowVoicemail:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/dialer/calllog/CallTypeHelper;[Lcom/android/dialer/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "callTypeHelper"    # Lcom/android/dialer/calllog/CallTypeHelper;
    .param p4, "phoneCallDetails"    # [Lcom/android/dialer/PhoneCallDetails;
    .param p5, "showVoicemail"    # Z
    .param p6, "showCallAndSms"    # Z
    .param p7, "controls"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 67
    iput-object p1, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 69
    iput-object p3, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    .line 70
    iput-object p4, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    .line 71
    iput-boolean p5, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    .line 72
    iput-boolean p6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    .line 73
    iput-object p7, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/calllog/CallDetailHistoryAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method private formatDuration(JI)Ljava/lang/String;
    .locals 11
    .param p1, "elapsedSeconds"    # J
    .param p3, "durationType"    # I

    .prologue
    const/4 v10, 0x1

    const-wide/16 v6, 0x3c

    .line 174
    const-wide/16 v0, 0x0

    .line 175
    .local v0, "minutes":J
    const-wide/16 v2, 0x0

    .line 177
    .local v2, "seconds":J
    cmp-long v5, p1, v6

    if-ltz v5, :cond_0

    .line 178
    div-long v0, p1, v6

    .line 179
    mul-long v5, v0, v6

    sub-long/2addr p1, v5

    .line 181
    :cond_0
    move-wide v2, p1

    .line 183
    iget-object v5, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f080167

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "timeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    if-nez p3, :cond_2

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080173

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    :cond_1
    :goto_0
    return-object v4

    .line 187
    :cond_2
    if-ne p3, v10, :cond_1

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080174

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-wide/16 v0, -0x1

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 118
    if-nez p1, :cond_3

    .line 119
    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040004

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 123
    .local v15, "header":Landroid/view/View;
    :goto_0
    const v1, 0x7f0a002d

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 124
    .local v18, "voicemailContainer":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mShowVoicemail:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const v1, 0x7f0a002e

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 127
    .local v7, "callAndSmsContainer":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 170
    .end local v7    # "callAndSmsContainer":Landroid/view/View;
    .end local v15    # "header":Landroid/view/View;
    .end local v18    # "voicemailContainer":Landroid/view/View;
    :goto_3
    return-object v15

    :cond_0
    move-object/from16 v15, p2

    .line 119
    goto :goto_0

    .line 124
    .restart local v15    # "header":Landroid/view/View;
    .restart local v18    # "voicemailContainer":Landroid/view/View;
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    .line 127
    .restart local v7    # "callAndSmsContainer":Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 134
    .end local v7    # "callAndSmsContainer":Landroid/view/View;
    .end local v15    # "header":Landroid/view/View;
    .end local v18    # "voicemailContainer":Landroid/view/View;
    :cond_3
    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040005

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 138
    .local v16, "result":Landroid/view/View;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/android/dialer/PhoneCallDetails;

    add-int/lit8 v2, p1, -0x1

    aget-object v13, v1, v2

    .line 139
    .local v13, "details":Lcom/android/dialer/PhoneCallDetails;
    const v1, 0x7f0a002f

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/dialer/calllog/CallTypeIconsView;

    .line 141
    .local v9, "callTypeIconView":Lcom/android/dialer/calllog/CallTypeIconsView;
    const v1, 0x7f0a0030

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 142
    .local v10, "callTypeTextView":Landroid/widget/TextView;
    const v1, 0x7f0a0031

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 143
    .local v12, "dateView":Landroid/widget/TextView;
    const v1, 0x7f0a0032

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 144
    .local v14, "durationView":Landroid/widget/TextView;
    const v1, 0x7f0a0033

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 146
    .local v17, "subscriptionView":Landroid/widget/TextView;
    iget-object v1, v13, Lcom/android/dialer/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v8, v1, v2

    .line 147
    .local v8, "callType":I
    invoke-virtual {v9}, Lcom/android/dialer/calllog/CallTypeIconsView;->clear()V

    .line 148
    invoke-virtual {v9, v8}, Lcom/android/dialer/calllog/CallTypeIconsView;->add(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-virtual {v1, v8}, Lcom/android/dialer/calllog/CallTypeHelper;->getCallTypeText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, v13, Lcom/android/dialer/PhoneCallDetails;->date:J

    iget-wide v4, v13, Lcom/android/dialer/PhoneCallDetails;->date:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x80

    :goto_5
    or-int/lit8 v6, v6, 0x17

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "dateValue":Ljava/lang/CharSequence;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v1, 0x3

    if-eq v8, v1, :cond_4

    const/4 v1, 0x4

    if-ne v8, v1, :cond_7

    .line 158
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_6
    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    iget v2, v13, Lcom/android/dialer/PhoneCallDetails;->subscription:I

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    move-object/from16 v15, v16

    .line 170
    goto/16 :goto_3

    .end local v8    # "callType":I
    .end local v9    # "callTypeIconView":Lcom/android/dialer/calllog/CallTypeIconsView;
    .end local v10    # "callTypeTextView":Landroid/widget/TextView;
    .end local v11    # "dateValue":Ljava/lang/CharSequence;
    .end local v12    # "dateView":Landroid/widget/TextView;
    .end local v13    # "details":Lcom/android/dialer/PhoneCallDetails;
    .end local v14    # "durationView":Landroid/widget/TextView;
    .end local v16    # "result":Landroid/view/View;
    .end local v17    # "subscriptionView":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v16, p2

    .line 134
    goto/16 :goto_4

    .line 151
    .restart local v8    # "callType":I
    .restart local v9    # "callTypeIconView":Lcom/android/dialer/calllog/CallTypeIconsView;
    .restart local v10    # "callTypeTextView":Landroid/widget/TextView;
    .restart local v12    # "dateView":Landroid/widget/TextView;
    .restart local v13    # "details":Lcom/android/dialer/PhoneCallDetails;
    .restart local v14    # "durationView":Landroid/widget/TextView;
    .restart local v16    # "result":Landroid/view/View;
    .restart local v17    # "subscriptionView":Landroid/widget/TextView;
    :cond_6
    const/16 v6, 0x40

    goto :goto_5

    .line 160
    .restart local v11    # "dateValue":Ljava/lang/CharSequence;
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-wide v1, v13, Lcom/android/dialer/PhoneCallDetails;->duration:J

    iget v3, v13, Lcom/android/dialer/PhoneCallDetails;->durationType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallDetailHistoryAdapter;->formatDuration(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 168
    :cond_8
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
