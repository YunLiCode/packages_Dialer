.class final Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCall"
.end annotation


# instance fields
.field public final callsUri:Landroid/net/Uri;

.field public final number:Ljava/lang/String;

.field public final voicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "callsUri"    # Landroid/net/Uri;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->callsUri:Landroid/net/Uri;

    .line 216
    iput-object p2, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->voicemailUri:Landroid/net/Uri;

    .line 217
    iput-object p3, p0, Lcom/android/dialer/calllog/DefaultVoicemailNotifier$NewCall;->number:Ljava/lang/String;

    .line 218
    return-void
.end method
