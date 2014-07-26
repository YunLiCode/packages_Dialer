.class final Lcom/android/dialer/CallDetailActivity$ViewEntry;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public thirdDescription:Ljava/lang/String;

.field public thirdIcon:I

.field public thirdIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 733
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 720
    iput v1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 722
    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 724
    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 727
    iput v1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIcon:I

    .line 729
    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 731
    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    .line 734
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    .line 735
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 736
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 737
    return-void
.end method


# virtual methods
.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 740
    iput p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIcon:I

    .line 741
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 742
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 743
    return-void
.end method

.method public setThirdAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 746
    iput p1, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIcon:I

    .line 747
    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 748
    iput-object p3, p0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    .line 749
    return-void
.end method
