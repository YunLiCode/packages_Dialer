.class public Lcom/android/dialer/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# instance fields
.field private final mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0
    .param p1, "groupCreator"    # Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    .line 43
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 150
    return-void
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 16
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 58
    .local v4, "count":I
    if-nez v4, :cond_0

    .line 139
    .end local p1    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 62
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v6, 0x1

    .line 63
    .local v6, "currentGroupSize":I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    const-wide/16 v1, 0x0

    .line 66
    .local v1, "callId":J
    const-string v5, ""

    .line 67
    .local v5, "curDate":Ljava/lang/String;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v9, "extra":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/android/dialer/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 69
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 70
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/contacts/common/util/CommonDateUtils;->getDateString(J)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "firstNumber":Ljava/lang/String;
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 77
    .local v10, "firstCallType":I
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 79
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "currentNumber":Ljava/lang/String;
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 81
    .local v3, "callType":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 84
    .local v12, "sameNumber":Z
    invoke-static/range {p1 .. p1}, Lcom/android/dialer/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 86
    const/4 v13, 0x0

    .line 107
    .local v13, "shouldGroup":Z
    :goto_2
    if-eqz v13, :cond_e

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    .end local v13    # "shouldGroup":Z
    :cond_3
    if-nez v12, :cond_4

    .line 89
    const/4 v13, 0x0

    .restart local v13    # "shouldGroup":Z
    goto :goto_2

    .line 90
    .end local v13    # "shouldGroup":Z
    :cond_4
    const/4 v14, 0x4

    if-ne v10, v14, :cond_5

    .line 92
    const/4 v13, 0x0

    .restart local v13    # "shouldGroup":Z
    goto :goto_2

    .line 93
    .end local v13    # "shouldGroup":Z
    :cond_5
    const/4 v14, 0x7

    if-ne v10, v14, :cond_7

    .line 95
    const/4 v14, 0x7

    if-ne v3, v14, :cond_6

    const/4 v13, 0x1

    .restart local v13    # "shouldGroup":Z
    :goto_3
    goto :goto_2

    .end local v13    # "shouldGroup":Z
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 96
    :cond_7
    const/4 v14, 0x5

    if-eq v10, v14, :cond_8

    const/4 v14, 0x6

    if-ne v10, v14, :cond_b

    .line 99
    :cond_8
    const/4 v14, 0x5

    if-eq v3, v14, :cond_9

    const/4 v14, 0x6

    if-ne v3, v14, :cond_a

    :cond_9
    const/4 v13, 0x1

    .restart local v13    # "shouldGroup":Z
    :goto_4
    goto :goto_2

    .end local v13    # "shouldGroup":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_4

    .line 103
    :cond_b
    const/4 v14, 0x1

    if-eq v3, v14, :cond_c

    const/4 v14, 0x2

    if-eq v3, v14, :cond_c

    const/4 v14, 0x3

    if-ne v3, v14, :cond_d

    :cond_c
    const/4 v13, 0x1

    .restart local v13    # "shouldGroup":Z
    :goto_5
    goto :goto_2

    .end local v13    # "shouldGroup":Z
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .line 114
    .restart local v13    # "shouldGroup":Z
    :cond_e
    const/4 v14, 0x1

    if-le v6, v14, :cond_f

    .line 115
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    sub-int/2addr v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 118
    :cond_f
    const/4 v6, 0x1

    .line 120
    move-object v11, v7

    .line 121
    move v10, v3

    .line 123
    invoke-static/range {p1 .. p1}, Lcom/android/dialer/calllog/CallLogQuery;->isSectionHeader(Landroid/database/Cursor;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 124
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/contacts/common/util/CommonDateUtils;->getDateString(J)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "date":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 126
    move-object v5, v8

    .line 127
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 128
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    .end local v3    # "callType":I
    .end local v7    # "currentNumber":Ljava/lang/String;
    .end local v8    # "date":Ljava/lang/String;
    .end local v12    # "sameNumber":Z
    .end local v13    # "shouldGroup":Z
    :cond_10
    const/4 v14, 0x1

    if-le v6, v14, :cond_11

    .line 135
    sub-int v14, v4, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 138
    :cond_11
    check-cast p1, Landroid/database/AbstractCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x40

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 163
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_2

    .line 187
    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    .line 163
    goto :goto_0

    .line 165
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 168
    .local v0, "index1":I
    if-eq v0, v8, :cond_5

    .line 169
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "userinfo1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "rest1":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 179
    .local v1, "index2":I
    if-eq v1, v8, :cond_6

    .line 180
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "userinfo2":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "rest2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    move v6, v7

    goto :goto_0

    .line 172
    .end local v1    # "index2":I
    .end local v2    # "rest1":Ljava/lang/String;
    .end local v3    # "rest2":Ljava/lang/String;
    .end local v4    # "userinfo1":Ljava/lang/String;
    .end local v5    # "userinfo2":Ljava/lang/String;
    :cond_5
    move-object v4, p1

    .line 173
    .restart local v4    # "userinfo1":Ljava/lang/String;
    const-string v2, ""

    .restart local v2    # "rest1":Ljava/lang/String;
    goto :goto_1

    .line 183
    .restart local v1    # "index2":I
    :cond_6
    move-object v5, p2

    .line 184
    .restart local v5    # "userinfo2":Ljava/lang/String;
    const-string v3, ""

    .restart local v3    # "rest2":Ljava/lang/String;
    goto :goto_2
.end method

.method equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "number1"    # Ljava/lang/String;
    .param p2, "number2"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
