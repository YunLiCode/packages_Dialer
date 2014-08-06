.class Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;
.super Ljava/lang/Object;
.source "VoicemailStatusHelperImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->reorderMessages(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;


# direct methods
.method constructor <init>(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;->this$0:Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I
    .locals 2
    .param p1, "msg1"    # Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;
    .param p2, "msg2"    # Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    .prologue
    .line 192
    # getter for: Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mPriority:I
    invoke-static {p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->access$000(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I

    move-result v0

    # getter for: Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->mPriority:I
    invoke-static {p2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;->access$000(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$1;->compare(Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl$MessageStatusWithPriority;)I

    move-result v0

    return v0
.end method
