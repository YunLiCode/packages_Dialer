.class public Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;
.super Ljava/lang/Object;
.source "SmartDialCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/SmartDialCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactNumber"
.end annotation


# static fields
.field private static mHanziToPinyin:Lcom/android/dialer/dialpad/HanziToPinyin;


# instance fields
.field public final affinity:I

.field public final displayName:Ljava/lang/String;

.field public final id:J

.field public isContainsHanzi:Z

.field public final label:Ljava/lang/String;

.field public final lookupKey:Ljava/lang/String;

.field public final offsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final phoneNumber:Ljava/lang/String;

.field public final photoId:J

.field public final quanPin:Ljava/lang/String;

.field public final shouZiMu:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/dialer/dialpad/HanziToPinyin;->getInstance()Lcom/android/dialer/dialpad/HanziToPinyin;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->mHanziToPinyin:Lcom/android/dialer/dialpad/HanziToPinyin;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "photoId"    # J
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "phoneNumber"    # Ljava/lang/String;
    .param p8, "type"    # I
    .param p9, "label"    # Ljava/lang/String;
    .param p10, "affinity"    # I

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v6, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", phoneNumber: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-wide p1, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->id:J

    .line 91
    iput-object p3, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->lookupKey:Ljava/lang/String;

    .line 92
    iput-wide p4, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->photoId:J

    .line 93
    iput-object p6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->displayName:Ljava/lang/String;

    .line 94
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local p7    # "phoneNumber":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    .line 95
    move/from16 v0, p8

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->type:I

    .line 96
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->label:Ljava/lang/String;

    .line 97
    move/from16 v0, p10

    iput v0, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->affinity:I

    .line 98
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->isContainsHanzi:Z

    .line 99
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    const-string v6, ""

    iput-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->shouZiMu:Ljava/lang/String;

    .line 101
    const-string v6, ""

    iput-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->quanPin:Ljava/lang/String;

    .line 102
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    .line 126
    :goto_1
    return-void

    .line 94
    .restart local p7    # "phoneNumber":Ljava/lang/String;
    :cond_0
    const-string v6, " "

    const-string v7, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    .line 104
    .end local p7    # "phoneNumber":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v3, "quanPinBuilder":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v4, "shouZiMuBuilder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "index":I
    sget-object v6, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->mHanziToPinyin:Lcom/android/dialer/dialpad/HanziToPinyin;

    invoke-virtual {v6, p6}, Lcom/android/dialer/dialpad/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;

    .line 109
    .local v5, "token":Lcom/android/dialer/dialpad/HanziToPinyin$Token;
    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->offsets:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 111
    iget-object v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->target:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    iget-object v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 114
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->isContainsHanzi:Z

    .line 120
    :goto_3
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    :cond_2
    iget-object v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v6, v5, Lcom/android/dialer/dialpad/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_3

    .line 123
    .end local v5    # "token":Lcom/android/dialer/dialpad/HanziToPinyin$Token;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->quanPin:Ljava/lang/String;

    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->shouZiMu:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "id"    # J
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "lookupKey"    # Ljava/lang/String;
    .param p6, "affinity"    # I

    .prologue
    .line 82
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p5

    move-object v6, p3

    move-object v7, p4

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 83
    return-void
.end method
