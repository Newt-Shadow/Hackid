.class final Lcom/android/billingclient/api/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc2/o;

.field private final c:Lc2/s;

.field private final d:Lcom/android/billingclient/api/i0;

.field private final e:Lcom/android/billingclient/api/a1;

.field private final f:Lcom/android/billingclient/api/a1;

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lc2/o;Lc2/l0;Lc2/c;Lc2/s;Lcom/android/billingclient/api/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/b1;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/b1;->b:Lc2/o;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/billingclient/api/b1;->c:Lc2/s;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/billingclient/api/b1;->d:Lcom/android/billingclient/api/i0;

    .line 11
    .line 12
    new-instance p1, Lcom/android/billingclient/api/a1;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/a1;-><init>(Lcom/android/billingclient/api/b1;Z)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/billingclient/api/b1;->e:Lcom/android/billingclient/api/a1;

    .line 19
    .line 20
    new-instance p1, Lcom/android/billingclient/api/a1;

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/a1;-><init>(Lcom/android/billingclient/api/b1;Z)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/billingclient/api/b1;->f:Lcom/android/billingclient/api/a1;

    .line 27
    .line 28
    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/b1;)Lc2/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b1;->d:Lcom/android/billingclient/api/i0;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/android/billingclient/api/b1;)Lc2/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b1;->b:Lc2/o;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/android/billingclient/api/b1;)Lc2/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b1;->c:Lc2/s;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/android/billingclient/api/b1;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/billingclient/api/b1;->g:Z

    return p0
.end method


# virtual methods
.method final d()Lc2/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b1;->b:Lc2/o;

    return-object v0
.end method

.method final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b1;->e:Lcom/android/billingclient/api/a1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/b1;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/a1;->b(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/b1;->f:Lcom/android/billingclient/api/a1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/billingclient/api/b1;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/a1;->b(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method final g(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/android/billingclient/api/b1;->g:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/billingclient/api/b1;->f:Lcom/android/billingclient/api/a1;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/billingclient/api/b1;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1, v2, v1}, Lcom/android/billingclient/api/a1;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/android/billingclient/api/b1;->g:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/billingclient/api/b1;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/billingclient/api/z0;->a(Landroid/content/Context;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/b1;->e:Lcom/android/billingclient/api/a1;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/billingclient/api/b1;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/a1;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
