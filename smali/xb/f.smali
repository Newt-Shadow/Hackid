.class Lxb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/android/billingclient/api/d;

.field private final c:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lxb/f;-><init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lxb/f;->b:Lcom/android/billingclient/api/d;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lxb/f;->c:Ljava/util/Set;

    .line 5
    iput-object p2, p0, Lxb/f;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lxb/f;)Lcom/android/billingclient/api/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lxb/f;->b:Lcom/android/billingclient/api/d;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxb/f;->c:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxb/f;->c:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lxb/f;->c:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lxb/f;->a:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v0, Lxb/e;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lxb/e;-><init>(Lxb/f;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
