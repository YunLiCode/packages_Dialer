.class public Lcom/android/dialer/DialtactsActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/dialer/DialtactsActivity;Landroid/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/dialer/DialtactsActivity;

    .line 127
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 158
    # getter for: Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    new-instance v0, Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/android/dialer/dialpad/DialpadFragment;-><init>()V

    .line 141
    :goto_0
    return-object v0

    .line 136
    :pswitch_1
    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>()V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v0, Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;-><init>()V

    goto :goto_0

    .line 140
    :pswitch_3
    # getter for: Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Landroid/app/Fragment;

    invoke-direct {v0}, Landroid/app/Fragment;-><init>()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 154
    return-void
.end method
