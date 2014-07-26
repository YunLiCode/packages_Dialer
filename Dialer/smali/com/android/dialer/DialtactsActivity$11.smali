.class Lcom/android/dialer/DialtactsActivity$11;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$11;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$11;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 980
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$11;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1, v0}, Lcom/android/dialer/DialtactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 981
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$11;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$11;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/common/activity/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 975
    return-void
.end method
