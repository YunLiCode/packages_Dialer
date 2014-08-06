.class public Lcom/android/dialer/calllog/CallTypeHelper;
.super Ljava/lang/Object;
.source "CallTypeHelper.java"


# instance fields
.field private final mIncomingName:Ljava/lang/CharSequence;

.field private final mMissedName:Ljava/lang/CharSequence;

.field private final mNewMissedColor:I

.field private final mNewVoicemailColor:I

.field private final mOutgoingName:Ljava/lang/CharSequence;

.field private final mVoicemailName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, 0x7f080151

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 49
    const v0, 0x7f080152

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    .line 50
    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    .line 51
    const v0, 0x7f080154

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    .line 52
    const v0, 0x7f05000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    .line 53
    const v0, 0x7f05000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewVoicemailColor:I

    .line 54
    return-void
.end method


# virtual methods
.method public getCallTypeText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "callType"    # I

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mIncomingName:Ljava/lang/CharSequence;

    .line 72
    :goto_0
    return-object v0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mOutgoingName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mMissedName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mVoicemailName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHighlightedColor(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "callType"    # I

    .prologue
    const/4 v0, 0x0

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid call type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :pswitch_0
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewMissedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 97
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    iget v0, p0, Lcom/android/dialer/calllog/CallTypeHelper;->mNewVoicemailColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
