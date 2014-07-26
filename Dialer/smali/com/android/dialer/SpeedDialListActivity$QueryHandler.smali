.class final Lcom/android/dialer/SpeedDialListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/SpeedDialListActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    .line 252
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 253
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 257
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 258
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 259
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    # invokes: Lcom/android/dialer/SpeedDialListActivity;->updateViews(ILandroid/database/Cursor;)V
    invoke-static {v1, v0, p3}, Lcom/android/dialer/SpeedDialListActivity;->access$000(Lcom/android/dialer/SpeedDialListActivity;ILandroid/database/Cursor;)V

    .line 263
    .end local v0    # "pos":I
    :goto_0
    return-void

    .line 261
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/SpeedDialListActivity$QueryHandler;->this$0:Lcom/android/dialer/SpeedDialListActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/dialer/SpeedDialListActivity;->updateViews(ILandroid/database/Cursor;)V
    invoke-static {v1, v2, p3}, Lcom/android/dialer/SpeedDialListActivity;->access$000(Lcom/android/dialer/SpeedDialListActivity;ILandroid/database/Cursor;)V

    goto :goto_0
.end method
