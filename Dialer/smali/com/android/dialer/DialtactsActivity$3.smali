.class Lcom/android/dialer/DialtactsActivity$3;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 394
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 397
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 398
    .local v3, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 399
    .local v2, "menu":Landroid/view/Menu;
    const v4, 0x7f0e0005

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 400
    const v4, 0x7f0a00bf

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 401
    .local v1, "filterOptionMenuItem":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->access$1200(Lcom/android/dialer/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 402
    const v4, 0x7f0a00c0

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    .local v0, "addContactOptionMenuItem":Landroid/view/MenuItem;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 405
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 406
    return-void
.end method
