.class Lcom/android/dialer/CallDetailActivity$8;
.super Landroid/os/AsyncTask;
.source "CallDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity;->onMenuTrashVoicemail(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;

.field final synthetic val$voicemailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$8;->this$0:Lcom/android/dialer/CallDetailActivity;

    iput-object p2, p0, Lcom/android/dialer/CallDetailActivity$8;->val$voicemailUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 918
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 921
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$8;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$8;->val$voicemailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 922
    return-object v2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 918
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/CallDetailActivity$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$8;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->finish()V

    .line 927
    return-void
.end method
